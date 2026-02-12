Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D7D3EBF2C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770882294; cv=none; b=cnwxFE+L76C/UEosBtpzCP4n/SUYDAYXUmOxNtUQec1a2Ko08/bBH6OzktTLGLlsRaPNd0Layr0WsZ9j1kty4h8fv7EW3v2LexaX0t+fo93PcA+m+CeRIUhAiyA/ccxqc0SQFJrAkePQsQHoSTbGHkT7SinOlBmieJIQUrfm5io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770882294; c=relaxed/simple;
	bh=heIhHCB+aJFHkBgJUUDfC9YuNV8L2olrrjdkjkd+6vc=;
	h=To:Subject:From:Message-Id:Date; b=WDSMkkSrVX1CqIPPQWLD6fsDD2RLyCbdbsA0mPKYNNYIpE0O/oONjHPelj1yaoaziOq43C/icxCFuSM5NMThvkZDm1wnz/YPI/6kGEA3z7B54oG0m/WFzA06iLLJDkPGEnPXVZXKFtA5nnOJtg6utMuBlM+HH4VXtzVjWNlqgME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/8vjWPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/8vjWPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0ACC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770882293;
	bh=heIhHCB+aJFHkBgJUUDfC9YuNV8L2olrrjdkjkd+6vc=;
	h=To:Subject:From:Date:From;
	b=g/8vjWPXnR2vnJuxfS0CdUCMvQwkq5DCnY4KL8swahhiJU3WeNbGi3OW+A7a/Itw2
	 QdgzcNXsQaAZIr7PD/v7uxNM/K8T+Ci30+r4mDJp5FGsNyDgI+WRukmnwIf5jnr555
	 Wz5FQnoWPf1LQ7f9tTOKfUEJgDE9H/e94UNWSq0mdL8cAU8/pxfSx7GvNDRDj1YvdP
	 TT6sWn9/bmkrbpLrKyXy0uOvjZgbXdGGKJqRKy0Kb/Pakr9Jvh1qNeTC629QcarV3t
	 ZJhcq5KCi9uOirRi8sX4Ihz6xZ/QIqk7ZPSzJUiSx4J10hNtECWDpZ1AsjN/pPFQLz
	 Z2roFMlhR+A8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DB7EDF052
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088229365.3012.8377474311628461749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab5402b552e69d2f0b4cb98cb1b743f0528fcdd475c3f2535156d6039af5bbd
Date: Thu, 12 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770882293
