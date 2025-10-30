Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08EF2E719D
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761789593; cv=none; b=UNc89Osu8hAHJnmZOgcWie+wmtrFG7GeqVIYPgLO+YK6aQWcqEYDKjwi+T33Y4jB14i3osrLSXrs+FNCjvfziLQuyFNvGHLhBYM+GbLCu0ynypxcobBQXPOlQI6a4RZJCEwYiXljIrcPyO2hJq6zCd2BpTF4lzUJOI1MxYSLz3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761789593; c=relaxed/simple;
	bh=9zNpDCUDjMQyuJLYs/CbzngTeonXbkZe5ihOHMAWa9w=;
	h=To:Subject:From:Message-Id:Date; b=AtBSmIPh0llnHNFAx26V2vNPayqoNA1zruoaAKQYcfVLhlCShWwh2cRFsIKIWMFXQ4ga/vWeskIA/nNrfPeeiwdLLi9HsReZ7RqYIaB1Te5CrOkzOjErAr0J5Zci+GEolTK3yJv9vPtooVSR25M2fI7NwEhwTKEzv3sPwXPhdm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDjtcMNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDjtcMNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37B4C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761789593;
	bh=9zNpDCUDjMQyuJLYs/CbzngTeonXbkZe5ihOHMAWa9w=;
	h=To:Subject:From:Date:From;
	b=KDjtcMNbpmolRcLwBfwGAn9KsAqv/x7AaKb6dd/AqqAjXqZKOWBMokTlmbRwcULBv
	 Zozv8Z2djZfvMhznhVFVQmzJubsdBmSOTer6fSiGGqY52baU1qPODip5ycHX1kzj5N
	 kNFYDKV2yee6llbad4qCKuJzPK5zyv+IgHZ0YLhDL9aUnaEPy5i4Qy526mcL2tpzrR
	 OFSg4eKh7b8xlUdhPM3eEEKMswv7+OPaACQRobOHv4UsYvd2rVhvMDlIvN7nMmh1bU
	 Vs5dWoi8PjPvlMVdweY1ysjhO2CghvC+Wpo6CxacVpcCvykb/NIrdJY+vDGlewAGK6
	 acFgTyr/wnv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EC1CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178959357.7742.13254904752437004622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6855f89818f4a14ffb5256c7893ec2099bc65e9173895de7ccdc2a984f8381e6
Date: Thu, 30 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761789593
