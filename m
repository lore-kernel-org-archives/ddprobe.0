Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8598C33F8A4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779330035; cv=none; b=n4faFqxkNLmVwMRUKr8fnrsWp3Mc95xKB+ws1G2cq/UzkvRe4wCMfYu4j2mpBLWSxDt8A4jZRQHI1Du3emZ139QavhmWqFsJ0/JVaTjwwaHWdx+rIzayg2seES359eH5d/7RIcBBD5NWAgf1Kgsy1aUzgvTYHLQ3AHdGkJgcx1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779330035; c=relaxed/simple;
	bh=W/D8kozRECZ0DflV8Qx8R5htLpVdBgIbZLiqmHfHhes=;
	h=To:Subject:From:Message-Id:Date; b=PNRvxP9E4+CTWaRIROGGNg+xnrVUw9NHKg85oQyHlDq6zU1ZYRygucn15jWslb/D1ZlI7R3wUvFlhSyxxHHfQBqzp1gZ4TWtbFK7DiIvO8MFkpaO9diCreWchlRyYhWfWpNdYamKpp8QXpt5w8VpWNTIkxU0CJ503xCWd6trjHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebR9k6sE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebR9k6sE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C9DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779330033;
	bh=W/D8kozRECZ0DflV8Qx8R5htLpVdBgIbZLiqmHfHhes=;
	h=To:Subject:From:Date:From;
	b=ebR9k6sEO6bBJ2GHwadm4WdNaz5kwmn5oGsGlt9v2iOn3RDRKhI3kfd4cvFt3uZ+H
	 dwsSupUAx8kGciLqwHEyzDnlEYvfI3g0FTz3p8BwfXBLUa3GGJ8oz2N9f8yPApVGsv
	 MVAdIopity9T+sVI1hEGWEZtphefeVgz2J3rZgS4HrdliWOPKmmqOhEB1B7cGSBeCv
	 OPQCV74cDYmEH0RZJSCfZCcc5JVR2Kf/zLxr/Be3IrtbOfjyD/9/fuE+JZAIHUwVea
	 p8RQS5i3wg8MVplfgVT0knyD5tCAh6jmNHwBUmtddm2Xvfb34TGeMl/8vcrIh0W6Be
	 ayvO8GdheIT9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9CFCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933003369.12548.16046590851979892695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6b9b56ab74c7c2cbd2f0c5fe8a185e8e844f26cf3c8b4e6ada5871e94c46ac
Date: Thu, 21 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779330033
