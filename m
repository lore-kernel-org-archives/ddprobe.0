Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCB73594B
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759613394; cv=none; b=KgCk6rDpL5VKt4V8qDvEBbETAYF7tWRiJYQeBA6TO7PmT40CGu44pV7Dm3bs5yzm+oKR6zH7g46CoeTyHWo67qMfM9ivYtfAIyFwWt89I5NPeNtDt2w370zGlcG86fvxKTyjMzovMH6i7KX9q++TjV2dipqjn8yunLee28f4K84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759613394; c=relaxed/simple;
	bh=Bj32sBeqnvceGG52OEJL9JB5Gm7BDr9ArhHkYvQfGrw=;
	h=To:Subject:From:Message-Id:Date; b=F2vN/JecNavZ2gIjRKqhWSPP2zLWSCRf9y3X6yWREywWvIFUJ6BqMGan5QTc0u2I6efCUvkd20PIBrFPBOouaq3ieN1M/Aw9a/qKwk5kSMLpGtUDtCC2I2IZgcDiOSLTQRbqyNkKMmsRauz031UlTqf4MFO+p1LwllQeAjwlHV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPSQZZRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPSQZZRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A82C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759613393;
	bh=Bj32sBeqnvceGG52OEJL9JB5Gm7BDr9ArhHkYvQfGrw=;
	h=To:Subject:From:Date:From;
	b=UPSQZZRO5wb6K4VSTomI178Sy4sNKO+W74nuwfpUcmFuvewdwo78ZR9hKjdoEO0R0
	 XqvfcJe9bNUi/JiY0iNRNMLuAz9GZ5D/NcUtmsoYv1GKCNG4imD3DDjUXMGBmGDVUY
	 ky8bT0nMowf6o55YiK+IWNESm9ZKcuoq8qgYIZ/Ug/cNVnUwVXB5FoEQoT06k5LOgh
	 mUhDvLP2wivPiMGmjpwPwMLuxgUpYIPECPkvHQg/TSJy+hC3Ftg4nYjS0vwUj+0i5o
	 J+40vmZXZZRwGTjwA9BnHDULIvArzGPzUXq7SdEdNgOmPQgBp+DlJu9auG2rR3PfXT
	 3aPRf0PffKkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABACAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961339358.1201.214006696464189152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc3a15855e0feae7fa264f0fdcb4fe5e65f04324a84e9d863dd8d6e4bcf9d9a
Date: Sat, 04 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759613393
