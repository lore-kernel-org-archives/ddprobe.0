Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4276E24DCF9
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782023794; cv=none; b=VRUMoIZs+W4CaNDKQwlSCeWZLSYe9DMq9BU1LjwrvUbcgP31+QecxdJpPDujWBk2AvWEpdCUBquuzZH+LuKxcuPLLyL4UxzmL5mINSYBCnTGI7cEbG97/ALXi8NAuoMwEOaBYovmlPt7HSqQdWjiD4j5hoghIkwsjUvInUJOVHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782023794; c=relaxed/simple;
	bh=3cPuVydf0cc5O09xAkjWOxkzrHkrlBIPVJvhnDjdekk=;
	h=To:Subject:From:Message-Id:Date; b=cqyUzEYpvJtwOBCu6BxsmtdmOD2NmiSjN4Q6DkDD4rawuW+tciI+jZng/8vwlu9iIxKAE98ZX/X+t4xQJss6aZHu1e0E2LhVuCZyb+6rEV6uv+KAitB0mc3LPAppx+qTWWI2y3J0ej1AUAIc0a+5lZ6Yj3lGoGLJ1iRgCl5Nzrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvZveZlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvZveZlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D5BC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782023793;
	bh=3cPuVydf0cc5O09xAkjWOxkzrHkrlBIPVJvhnDjdekk=;
	h=To:Subject:From:Date:From;
	b=UvZveZltxTczCqb733GlnANKXOveztsJJ52VlXJlgr3MbWOVbhzWBqRsDjrUeOBD7
	 hwR6Xb7BnB7rZwklVc6SUnxQRrcCAgbNb+thyxnvvgQFvaQIrpWa5/x7XIScW/euhE
	 kw4edeMqOfL2IkhScpNCK7NVTBKcjgTp0+Q6jc4TIKfbqjSUZYMKd7HWCm8tPQITR3
	 rmB1Bij6eaM2fskR5TOdSeix/zpNqmRLfvDByWMYzY88r3i0hlN6fPG3omAuEyDAFJ
	 lfCtozPi5lB4x+p/xnVDifEor4LNuZ8cJS/Tjv9rZjnz/eV+iIssRXzrI9m6FnIKeP
	 pHWM1l1/WLoUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B570CCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202379371.29633.13037833766668583490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1646208ed15a0c6545faea32c0f5095ab01541e490f996793feb6c56db17247d
Date: Sun, 21 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782023793
