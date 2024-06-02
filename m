Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C024778C
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717346123; cv=none; b=M8WT93I1DNJTyLW0p//7JA/7hrdgUhWk7DorcL6Fmc2XtaSzyyQr3WYQPPCxEMWI2c8pQrIy+kQ00Wgp9i6a1LEhFb2rrIzCV3IadhKH9i0jDpkq53ZoI47/NKI02Gvxj1aCtOfDf2iRlIO8UG2Pq53wb41QYUvU75us7pL4+c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717346123; c=relaxed/simple;
	bh=KB24xMj1uTQ8iklA5V7EYP3UB6PxXjZnVOlKTRDDNXE=;
	h=To:Subject:From:Message-Id:Date; b=NmYfv11gsnM1eL8s1ic4AB2aHP1B8DTiRAvyVMWaSYcRq9QPpFL8v+dokCyGleCUlx/GnxVJj389NN7+T4OmvXe3n9lkmyfMWL5FzEbJVkMLdMXsDUvjFJ+fWs8RgxWQWLrJgZQ1HC9xplDme+qXg5yw2f3ciWG6TtR/hjUVbKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTvFsyqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTvFsyqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF25BC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717346122;
	bh=KB24xMj1uTQ8iklA5V7EYP3UB6PxXjZnVOlKTRDDNXE=;
	h=To:Subject:From:Date:From;
	b=MTvFsyqJrdmQR+Td1lmfQX5bBhuYfXUmmu+NbMFWIFF2+KuHU9U8DX4/hHIyKzZ3x
	 mArzUwo72+LUQWPiBaZ0rY1acz+K77Shw8C0nEaJURMIRihGxh9YJ6YAiX8/WONFu0
	 fT4WU6K6lmrAJ17TkKxR7IEv7gmptfm2SPsRn+fRCj4ifHimsjCRbiJ+Eff5czKa1d
	 NhpNZB28GXs3QC9whyhyanTXf8w2WP48Cy8JM1cmKAdLWI8PmaOMOgiidCh5LeExpu
	 8XjbejcMILq/pnWkA0pl7EbYMSO53cW404wxcaZbLJAv5GPte8lo4ZrDLuPar19b+L
	 2978ieg4WT/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EE1C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734612279.6730.259780626038444362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0926d1cd791563b778112e0fbea3f18fdb9e2b2fc4d3c3ca3622daa38d608a
Date: Sun, 02 Jun 2024 16:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717346122
