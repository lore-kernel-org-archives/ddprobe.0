Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3301E47B4
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739346654; cv=none; b=ILDNyYrxAdBptoc+cRb+YTIdQCdaX28nNzC2LyapRyYhfwy8O4IKVB050M4Z9BuiVZVpfgayiHGXTq88Z+bK9Z6CivD60RSfuQI7AqdVVgrRPFVcDfD08mGrK19zRi4p0gDwJkVrzmVU29RT2WJo7OHFMfwSi/2FDgVJnQkFrug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739346654; c=relaxed/simple;
	bh=Dxjm1rQMqlEpoYXkPhBRb6GY0NH+C+jjliJlXFIQvek=;
	h=To:Subject:From:Message-Id:Date; b=LIwLKjW8qzDFiOGBf9pnvxvP5bmdP8uMOT6sE4sS4naSUDyM/kJdITKR8tdFUVbguXQCdVNM+0gVWqlCLinkFfQJkPFVLCkYZyMNIpd9/SHy1EdaaNjhYz6+CvDzi6TZJoD1daB+PEFS680QP34dx27XXtfgHLeJZ/Y7191oJRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaruL7+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaruL7+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE841C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739346653;
	bh=Dxjm1rQMqlEpoYXkPhBRb6GY0NH+C+jjliJlXFIQvek=;
	h=To:Subject:From:Date:From;
	b=XaruL7+zsGVBByW//f1rBP3Y2COMkl1w26hJBVmJOiVy5LFi+eJbb+hQ9py6dYKIq
	 vp4DDUGFV9UOmmh7CaggGwbnNloU23pF9SKEbeCwaeEkUsQgW51M4RDb90ICyOxtnM
	 z7BK5EzE4/TpKBfHTNoPpufnmi8UIlHKXpWFFwTCficopVPH6GekG1Nr0PlRk1x6sI
	 Y60XBt9xZNd7t7h9DvlWQewxtttEiNRbgm8jKdIdldSYX/jEFB+PFCAk5+JRUVfCs/
	 3nIZ0yMNwhLpzhSGPkRdCedO5LtOjg8AikrRnRmRTKo83x9/fXNoL3CWo/iKNxHfia
	 bVIg/calgEtZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9998CC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173934665361.21006.1491721409048248580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8700194d418b776c3bbc9c4081ce83783dd8d06f2b3c4083118b706fe8a5ad14
Date: Wed, 12 Feb 2025 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739346653
