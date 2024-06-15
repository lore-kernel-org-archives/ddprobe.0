Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D20E3D60
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718426903; cv=none; b=qfXC5neRIbWYy5WDNK4IG08MOgq8VhE3VYgEdXHA6lN/M5ltIvaEY+5OH1dkT1tSe1M4gklSqfaNSLd4M4p/y/f6LDEVxVUclPpDSAhYZFwCeG7ASddu/pteRp/QPZ+h3O5r4QioMdhvx5N/PwZuK3uCFWX3ejTe57daAoG/Fko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718426903; c=relaxed/simple;
	bh=TPvJ/3h6Etl/TEFoCMz9ietPjn/xn1lk4rdlcBG6maw=;
	h=To:Subject:From:Message-Id:Date; b=V311DKVyDXQNMbdgJ0utXJmOevl3sHvmypccQ55qZDbixtO1ZQMC+fc/KC69+AT5/IBqkq/FQoROfDlkTfokMMM9pBpDsertAXrxvumwT/sZXw+qe7i9TTkUf9BlUw+IG5bvQDkJWktvCwZX3I791BV3pbOFpTKxf2gGpQGkzQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv7hXTEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv7hXTEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9FA9C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718426902;
	bh=TPvJ/3h6Etl/TEFoCMz9ietPjn/xn1lk4rdlcBG6maw=;
	h=To:Subject:From:Date:From;
	b=Qv7hXTEitScA4vdiawxPgysbKhRxqwHF7iEtfXu4Op3eppYLdH2xHjJptRdFbUxjs
	 Qbd6mZFJsydHz7csYXEPqbrLBNCxO0ayhi8uoAIkb+7fq/pzj5mosZDwEK91OsRtlr
	 d+KPBmCURHaeilmt4nsPQv1/I2FAo/FIwbUGt2twfHBgWdC2TzgITZFVbNVFlQHHb0
	 E0U59//kR4TO+qLE6O+gTd7PQy9idqvcy3eUtpNUznOlgN7uQrE69cxwOwbapsjx66
	 0H+1u7Rurm8APfOIEVZmJoaU9dGjfSpFsbXaaGlITmO0vz/NuDgwj+Z1grIPyHIcwq
	 WH+TzALFj3VNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A10C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842690282.4625.176417502137493051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ff80e0c66b03ed490d2d485fbddbbfd9010fb69fef7d4a0e9660e94dd1d738
Date: Sat, 15 Jun 2024 04:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718426902
