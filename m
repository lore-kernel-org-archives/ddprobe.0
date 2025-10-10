Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326B836124
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760105394; cv=none; b=s6jIAtb0WXhoZ/ZXvFa5PgPpHzJfcqSpYRGVt7s75SR7V7GRuIHsHig9itI8H06moULFavrUqxofjPxV/JGWQtdNHCR6eVmiWkX653oBpuTzgAyzdA0rKLQBv4Tb43iiRG798urtuelMsOj/zut1g9VyKwvMqhowXIRJgajx+w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760105394; c=relaxed/simple;
	bh=vYr65C8dhlwHSU5pTeGo4+F7tirtFzvSnqEojd4d0n8=;
	h=To:Subject:From:Message-Id:Date; b=sWOecHVFCcV3qb1iRkozl7FIcAkW7/UWKXFbYm/FqKMoZCkKUX8cwtFtp+U1p7mvGh9xRRxckQp4ZPdf0xo1D/mCdeqk/KhRfZWVOqJUiYe9GmBd1WNTrd/6KdzkQCNzeKcwxcIxtk+4XwmLDJ20bGznmbX1jAUq1gZ2UEjiDOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHyBIfed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHyBIfed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A960AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760105393;
	bh=vYr65C8dhlwHSU5pTeGo4+F7tirtFzvSnqEojd4d0n8=;
	h=To:Subject:From:Date:From;
	b=FHyBIfedDy6fRdun7FjYfcskrDO6YLElBvatiEklssZGxvVYoU5EB6/LnduBEJ8P8
	 WWV7cRmVjkMm2qPH7bp0fFs7wQjPcDOPdDevW45XBg7hleYtaqF33fS2L1cVZydxRQ
	 m63lDePyS1FoPby2sF7O/L+tSXz3OpsJ0laHWTsLlpFgBKSYksvv21BHPufu2rrFde
	 euTeYDatW2BUCUqGRhNzPqe6ekucyCIw6ia4biJD7tDoKBkVZuRB6FXhikGMvNDq+q
	 +j9Zaaez/+b/E2+hmWZwKN5tbLBP37BuJ0PaBCrn/QCr2GBFUnt5c+GwryjU56EIBB
	 XpVx5PpEtXoJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9636DCCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010539358.2069.3445440143630541809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de93d7ee7858988f4b5db1bb55c5c3eeb0c038ef845611cfbd2ca0f99f3fcad6
Date: Fri, 10 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760105393
