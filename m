Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EC4283CB5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765828974; cv=none; b=sRjiM/gTXwvBSJdgxG1/M1qZ5+YNhpu+prw7XKaQbyAQr7RTCPlIjZEpdSfWOzoU47KHD46Bpi7isdpNl8yhJasKtV3WZg/9Ny2knRSSPCkh7WIF35dlPVqrcKY7BEB3ascLqcwnp5iEvz1xhY9ZhIM91GNiQqArb+4Y+RFaKnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765828974; c=relaxed/simple;
	bh=7tqDw6JMwttTflpfnoLXazCb4jY5eQqynXZLSCkh7J0=;
	h=To:Subject:From:Message-Id:Date; b=mkPggz52NVPobmITyjqUEW5ZCljHY5EX6rzU8sbrrX7nz/AB1gzQYf67IJiRrg7dJn9rmop5J/ATzQ/QK5qGIX+kzMY+VcqbBwsOKKcah5ghtBqJsinJd8DNUxlnNpGAD7F3adW5J+mms5mNiATBI5QgKSf/gCrQ/AYGRisgbA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKc5q1WL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKc5q1WL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAC4C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765828973;
	bh=7tqDw6JMwttTflpfnoLXazCb4jY5eQqynXZLSCkh7J0=;
	h=To:Subject:From:Date:From;
	b=eKc5q1WLUQ6ittkGloLpOacPi9TbqZdX2tOUhZJd4BBP0T8Ri0dWSwkjy4KRS+siZ
	 EsBWsJsjO3L3CgweaBSAWLeyqaW93Ej6JoYOGSzsr8uuTnE4ioYOMBoMrdIyk8ARtB
	 +VLiY8wxAnwVHC9cA9avjpeO+zJgf6DxmMguUETsEbAWW1mbtY2fw9y3avg1MnLmrG
	 AmIa+9eZDXHLsqxn6PtjZgzfpFzLM/CEKYEtHJAACEbLKFk0iveKJkYyrIHwRa9SJm
	 saz+gpAO8RKg/cB2XBadMoDYv6CvMeLeaodJKA7T2lX3rSak+N/a6hXp4op6y7Nmja
	 t7+Socy0zFDNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9793DD5B866
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582897358.24834.13949408873849424162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9333379ba7a103adfdfbf73d38157aab9d0a91109b6ad99cf1012850936e03f7
Date: Mon, 15 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765828973
