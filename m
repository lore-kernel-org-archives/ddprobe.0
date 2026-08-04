Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAB14749D5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785861034; cv=none; b=em22jTwMTMrjbDeHc/P4mWN5dZhwwS4iSw0g977QhW2Ef0iisiXwqHmaFlf+owZaygNVN0hU5TKP245vTK5jqRT7pKdYPh+TWEzKETsZ7JYXA3RyPm9irlt4K6ul8TqY1k/UI5unZsHEfE+mWm35NdH7B9NqJ1g2vm+SdIFjbDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785861034; c=relaxed/simple;
	bh=N9HV+5vyMagWyuhFqZ0OH9hRqdIl/4DUayCQTSBFTww=;
	h=To:Subject:From:Message-Id:Date; b=JiqKf1Q60WMGmmpVBawc31Rioof7MWhpkuZ+vTjdRH2ETS5qtsIXKdUj9JFV3uJzewcl0AYVw6IcSXA/P2tPUxbpUyLZ5KXQgCw1ZGACdThBLsHyUyUbxh/EhA90nr9GsVH2nqoq9WF8GlepriVSLidHwIIomQ1E4T2i4eNxFhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj7Ra9my; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj7Ra9my"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5647C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785861033;
	bh=N9HV+5vyMagWyuhFqZ0OH9hRqdIl/4DUayCQTSBFTww=;
	h=To:Subject:From:Date:From;
	b=dj7Ra9myB3vurM9VzDU85lzq9M87J1GM0GSL0z7xRInmXjL5QisynVLxRLDh8pldl
	 03rWpPwKm8O7rr/k2LQhbJXu97FVS18jEI605RTAelqud6AOQWxMk/4LwluRYpqQDW
	 y4nqyW8yCWqdyVcJ7CP2CAcvHzLxZQSUZE2TrtfdrZA58C7tKAOxFwCBAXAKe1vv5V
	 Amcc2nU3g4CATfMdTHqe0GUPjMSWu9CrtOE1SNrPOLmn8eoTshE85QQZADCP8wn+cM
	 Q3lsHIMklr3oWG+xenZAVCgkuVCJVU0haz8eeeX6mHXzoXnxP4kW/agHW65DjrLwn5
	 bZFS+yDkgls1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9AFC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586103375.22865.12112368583457360288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895cfbea4a76cc758c716b1713a52b1ee2ece4ad1d0d235c05b83d3744718e59
Date: Tue, 04 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785861033
