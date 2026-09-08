Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1662D5932
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788883834; cv=none; b=rkqS932aIU+44EiCvU94jqwhMzeCbPZnQBzYbZDYv2WqDCNm7DTcxexFsJBfuYHVcbkRDGOhgl2BKPZ/qPH8vK4AIWX113gbHRd16jtVyFT3PCkPHoLfR5/IRSB5XarMRsldisE6QaXMLeH1AlEyriMSc8Cy1QtCkbxBDm5h6jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788883834; c=relaxed/simple;
	bh=GSq1KIR7J0gRcW8M3MFXtn3ORTHstvoibJPtxi/Xdiw=;
	h=To:Subject:From:Message-Id:Date; b=C5df+wMEa6ZZYVniv83HdOGWmTrN0wU8AeCbCYZHuX6Vytaib0OQKWsygj4sFXQkeVuKr3ueguksPRbwDPgQ2NPtD0pkpzH7R2JUAKCweGrgmcV2i6L+Z7ouOpRx4KS84mDdSZXbKEmVGM6Y7xnWM92cqvfKidfM3zFDnmkFYlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjHGVkzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjHGVkzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CB4C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788883833;
	bh=GSq1KIR7J0gRcW8M3MFXtn3ORTHstvoibJPtxi/Xdiw=;
	h=To:Subject:From:Date:From;
	b=HjHGVkzMIVlIsgIGnBYljOjhcGfGVu0E4yX5/f3ljrNThZD9btW+zfjuI5zTq4WwJ
	 nTKK6V1Fh1lv8XSX0wuEUKzlQ2VMvsqYyH3dF6Pk+BPaPzctOFVd45SmW00W3W27Vc
	 JRGMCQ9Q7z8pYLQddhYab+Ag+0VFC5s8fkkheiDbbHV2B1/kSExokcIWWAkF6nY+oR
	 dqbKaNeMoXFWsXMxEkoZtFBfrDKjfIulHq6QA7CeIGlRvYApTdcTaaNxmVQPGt5gLF
	 PrLN338Z4xrcc1lLCmbDlgQzgXKspmQXzVzkUgTyBDcvd9vdXMC5ee2jfSPHafxPNP
	 ToCDS6ZJeLSkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9DBC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888383369.13098.11847873015189717412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331192405e7c5999f9e25c83042ec82038c0e10747965407170dc22f18e34404
Date: Tue, 08 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788883833
