Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E0C13C3F2
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753757394; cv=none; b=OFiGkOE/3eznDZ7RSq8jnWEsn1UK3C/x8c5lMd1uwG12MBv6AXDVA6TGNkLt23oGJ6XXyJFJlKW/8+2K9FTRBDk2ZNxkD7N9CFfTRsnAiETWiPZn7L1TlGmcmMcvgMTl+GQO/N9SsrhNzBkUP/BPJ6+SM4rNTHZlphYkrUm4i0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753757394; c=relaxed/simple;
	bh=cgTO+UqDYYZxI/MpymWZvwT9QdMTQ/m8TVRBt3VWVyI=;
	h=To:Subject:From:Message-Id:Date; b=g0jOuNivtxqJ9uCfCJEE/Qv2q0RBlh6MvfPhtqqZCvGEmO8M50y3DaF8ybHz6MZLG4XWjKAZfMJUjy2Tb/2u1eXdAoQDPzfDEr83pebqFh/UFUyAqZMupNIMZ07zyoU/aHlZuW9cWGNqKPwgFtACVM3GIc+EVQpqipfY2O/lvFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPEH8Htp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPEH8Htp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0619C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753757393;
	bh=cgTO+UqDYYZxI/MpymWZvwT9QdMTQ/m8TVRBt3VWVyI=;
	h=To:Subject:From:Date:From;
	b=KPEH8HtpSrOqwcB4LKFflS9Kfs6yGE4Hjqa6m30yQMALPk6sqnqrfJw3KdLcGsr0r
	 c7mvcKMqB9YxdqcO9JXX6slpBnoXliKrsbFZ3SyyraS5r9ozvxVvZZPpvdOyIBkwFH
	 yVYySybWzl7rhT2uN1fQy+PbpWgYwaO1cT9ZAmPesUx0gR0ZMpn2ROZPpwcUny5YhG
	 C6Ujk8oHmGB/UWvRaKZikruptYdnMGupzdcJnWpbG3LQFyaTZjZ6e2ng/N8TVx26IA
	 yEHTWSb+geR0tf+bMc0jibVeJAOu8n5rZGlksRgR3H4OKAoh3BhjYUxZzh+KkN8TCb
	 ifrc4QVpxwARA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E07AC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375739357.399.4072358886811337488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069e48dbdd226133a0027d4688787c1c8c506442a77843e8362c56906be47986
Date: Tue, 29 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753757393
