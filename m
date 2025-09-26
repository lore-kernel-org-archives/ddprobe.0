Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5B815B0FE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758906594; cv=none; b=qO8P0zl2rZtsbBANJRTlc6ZLfQXQhN6ir3DPwNspl1ZbDzASL6jN25GNbXlpQooZWiuG9HwkdD40Q5X9pfrzSpcqDUNbHLhc6KFcd6WuOjZhgYcTFUZSTUbGakMkXVZEOYrIkkuw3cNu170CGsMGEymgqc5X71YKyObeFebuoho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758906594; c=relaxed/simple;
	bh=xSKrDC5k9/HuX/cqhXVCB3RjTv6HNv+SvPnEzv4gBtQ=;
	h=To:Subject:From:Message-Id:Date; b=B169bS74XK4JVY2j4XB4tXvjdTlE+pl5/kCZPBXrfUhX/u5QJFlHjy2ApDKXFmUDO6CE0d1hdtpbyU8gOZvOydFePYvI0F84J1HOfa3KD+RiZl2OxlvlKCvc5vqg30t6fy4LJ09X4xvE9EA5Oe/TlOYos0FhfZ67xlNRW7gTgYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZivRrSFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZivRrSFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AF3C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758906593;
	bh=xSKrDC5k9/HuX/cqhXVCB3RjTv6HNv+SvPnEzv4gBtQ=;
	h=To:Subject:From:Date:From;
	b=ZivRrSFYf37/XSyh7iMxVzdeNRlt+x7C5L9rqQ1c0UbY+W5q32o5gsyszzHFCXHB8
	 UpfodtZd+jFZaeBKsoRSo7KgceJmz0opnP3Rw54ggVlLjieAJmjbIMXzd2MIbJg5cD
	 U/WI372Mx+CywUP2b0W/b9e08folQB+Ml3Fm/yspjN+KGBGatMa9osMCmekz5HKY31
	 fU99AMzcTncdOLTykv9Qvcx9y/o0b573BcFm8zUvLbcvk3MkIBL8qDw3HU658OnhcL
	 yzzR+TRtVm01ih/XrJGifLSsb5AJhOyXPOXQdDWEIUIG8U20muVT6FQgphsnYrn/yY
	 34Icq1UV4/yTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C6ECAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890659358.13640.7951491609185585355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d91d8835fa3b98273c34467c4a2c60c0bb5de7bb89432fd113d2cfcf20555b
Date: Fri, 26 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758906593
