Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B6645000
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781362594; cv=none; b=stjxrTv91/p3phNe4B01rSd3Omlejz6NcpkLteY1MUkaPT6bnjJfjVZSRK1qOgL+SWSZAeqqmyfFRtqGT8BhaXU8l0x5WWihrPXqvRcExF8O88S5xpbzBgYWeKvy5Cguzp8FMBf26lgaSLJsYBSCDQC9UC6UV88Yy4pKkytixPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781362594; c=relaxed/simple;
	bh=VkkQhgKk0Fm1B6IijIAuYjvc49bQexyHzpds8RSJkvs=;
	h=To:Subject:From:Message-Id:Date; b=DmRERWcTK7SB9g5bo1eBVpqoyQ8DXNV+Fi0Mtc1GOGQ7x2Y3FOfV7e4Bm4v42T7OdULIHvpNfrLZhqGbJY9EFNuBa6VGzxfX6y5CpdHTQVs6L/m3k2gl5Kw3/4z4oKaIVBRikX6lRIRx0j1HiGx2dbWTs0xRFfhdmd1ebsGWywM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELosF9+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELosF9+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86C7C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781362593;
	bh=VkkQhgKk0Fm1B6IijIAuYjvc49bQexyHzpds8RSJkvs=;
	h=To:Subject:From:Date:From;
	b=ELosF9+tSDeNPCX6Ef+Qj1tjFLSl60wDHjtEc3ypOKvMU4VltoFozfZMepMuWEh3Z
	 SkAag7Bv1oT7u2eXXVYHuk24D+1xcGyvR+56JxgSnjPoQkae61vdh7q7LjAgVGJINY
	 0zq1wrsR2Hsgn5cdoSRkLQq0DjOE/3q1C96H3yOhLe2I5zuY6z1rgGyQeWquI7K2h/
	 voKW9b1TbYYGXFsrcfr1AZ2kIr60LYtGYearLsVLGnAcDgXqmncypxlLzoVmMj9T54
	 4Yy+P8RKvInf4IWGGM81aPNjiKCfH5O/H0me3LVhmcU9MliHOyR2imnd2tKWogp956
	 +9q9ECS4mp6Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AF5CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136259368.32720.5253145507156019714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d777cf731f6406f3088fa05ec5053394ad1cabe4270a2d7056cd703a4a60582
Date: Sat, 13 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781362593
