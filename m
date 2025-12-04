Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287472DEA87
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764834774; cv=none; b=myUa5mBfmbZPmYtdewWGz47hHs1CLiOo0wcwsPjCBS0M/8WZpBkWHcI6zUO2F6MrC4sKbJrxsxTJBcEFyo3Q64jXhkozepy9WiG+NFI8N4Xqc2fXBa69JvpcQ2ZD9MgmvStchuNw7aofeQDiof1CeeNPKbpWZKaYNhyzekJRBHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764834774; c=relaxed/simple;
	bh=bAilLPyOxKD5QDubGT2v7hcIvSze+olAZuM/WsBs27g=;
	h=To:Subject:From:Message-Id:Date; b=lvF/Vujvnm3LrpiPwIpjlt/Whxys/w6AfaB1At5kxL8icO81BJRf/6pKLYpQAxG5mQlFs1xoRPAsnqGxvSgIIV3IhDxUT2jUnmnKE4Cq82/APKQuAu8sN7X/qcT+vn4on0MINrmLQHJcGAmsXCHHoRp1d1tXucQAkzWaS0ALf9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhcaR5j4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhcaR5j4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A830BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764834773;
	bh=bAilLPyOxKD5QDubGT2v7hcIvSze+olAZuM/WsBs27g=;
	h=To:Subject:From:Date:From;
	b=GhcaR5j4DnEZJ1cRkVxSCNqoQXDs3KlWrYj5uZYV8NLeCMpvxuamWuGeQ0Rka/B96
	 KGG+E7CMHsD7w/rE2snC7y+JIQc0LwrlqWb1jjhd/qmESUbrozyR9BdlkfAcJF7tqw
	 hi4jfaqmEg6W3rqrL6dmfWuDwGiklvIslSdpZjDo9NP/palSDzy+RzIRjcrxhLKZnf
	 a+ZipisJjyKJ8Yc9I5jqgF2DWDcxLbP7+mYcxlw4j6nJPi/H21BQgZG/mvUtYdAa/5
	 sgrFhl7AAWmRrvs090PF/PjYBdE84GbPwuFBdsdnoPAANeRr+tIJSqtqxDsDRm9pzj
	 kftKOYqNRDquA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBAD1D885
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483477360.4689.6683625115422681300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb120d2a70982afd50b7d5a25e43092434bc78baa38ee65ae327c085561e37ac
Date: Thu, 04 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764834773
