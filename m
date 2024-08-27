Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E857802
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724717754; cv=none; b=rr5OOmQu83kS6FHsd6XqM0o8Ug8SMyiu4U/BgqFIMlfniYvmHniZxySjeyAfG3nXHY9JNTv7BWYh5a2umF1SbM6uwyaOUCKVcLNeD2q0Vn9bioZq0NCem6065fhdt6eeCTKJ+XgHEwTGf3DYujClxr2VuERuOE3W/TipiFlQNmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724717754; c=relaxed/simple;
	bh=VQWX/mGHFgciQDdaX0qEW0eTd/nE/YZVadOtatHH70I=;
	h=To:Subject:From:Message-Id:Date; b=lEucPk5TkDNX/vyx/fKmC77BguftthO6nf61+RZp8PRpBjnhMSK7YvMaGZcAz2w+J308uBbzxD5zvEwTOt44AyB9yIE1h9RBQV7eM6J8oaFGMaaDt6QHjAQUry/EpWhuMLtbUowQpzj5scwfOp7gOwEKbOk8fB2dtgzZ8JUMgdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZQmAdE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZQmAdE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D4DC8B7B3
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724717753;
	bh=VQWX/mGHFgciQDdaX0qEW0eTd/nE/YZVadOtatHH70I=;
	h=To:Subject:From:Date:From;
	b=CZQmAdE3A5ecfA3DB7E2lJ82X7liZfMkqv6/vp4jm5bQGxXU6Nbu1L140HkAflCRV
	 AM96Fo+Yth4b3hRk79EwWmiWxnvPx4DxnqgVWF8cbdEX5oC/3vJhTNmOm16u7rQj9J
	 qFS+Vc2x5qzngMnnSuG8Wc3sVBUUwpIdBpt4S/ZIqvQIpsxY7Atnm5UJFw2D50OiHW
	 mj5jDuAM2ewLyMYt5e67FvHhban+EUuWA+LVRNZl86EaDAbSni8oo0VgrMjLkiU5d1
	 LVFbt4q2e68m4hkv77avrCBeWVdrmm7Z7Bnxa7wYXx3QxL01T3/LL3NM49ntIAvnt3
	 PMVEWeLihyexw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950EAC5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471775360.24242.9359303760465327118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c1a97b8f77449e8c973302c83867dc37765a007f9d0b5715ef1adff2a2706f
Date: Tue, 27 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724717753
