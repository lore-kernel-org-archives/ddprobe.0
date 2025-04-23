Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FD028F1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745392194; cv=none; b=EldYAyFpVR/+0kAVYaO68nRxkNjZnyrrzQLsHv/e5E3ahtqTXcuZ5vpqdwfwU3CZdkZYZtMzKWMIMoZ+hWwAVUDQXyvOFO0nqbgEwwcNz/9fl+bU5A2yjNupat5/skrXptjhxrOWcyne3cUKFHGRamTIM76a/cg57v9ImlJD2j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745392194; c=relaxed/simple;
	bh=KsT7K7gXzt03EupDMAUT7hsi2KNWC6c8Sb/H1izGpWk=;
	h=To:Subject:From:Message-Id:Date; b=PzCmipCIKIDZwiepxk0Bv/dh0VQCy4auxjK0pCdfC7Bmxd/EIqdHW1V16PquT5Xo2uBAU3M8sTNVNSUf6DQ5AT2lEDln7iDgHr7bgKESi/VGMyjk9UeDsR7KhMbsDZ7hfi1+4LLvASptNAgt0u8tVpW/QKJkEulWUVyoaDt/CdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtzd8SnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtzd8SnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12ACC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745392193;
	bh=KsT7K7gXzt03EupDMAUT7hsi2KNWC6c8Sb/H1izGpWk=;
	h=To:Subject:From:Date:From;
	b=rtzd8SnOhAlIs7OPP7kvGShbe+u2HhbORDmw0CLGtM0ce6zbqMm/cFupTdyaat4TM
	 PU8j+8LiojKlvaBcXCymgMmfdX3s3TeTTCZE+oHBeyTPY/9Pp3+Ny/IVmmCSaI4Mch
	 /Iw4kjITJAaMy8Fs9evbbQITzHW1A/t9VNUQy4xTFZ75+MshTEqH99H0KmbD67Ve36
	 UaSm/uU31vygp1NVzSHWzklC0w109hOibK6EIY7yERnn7+2rK1Wy0Gt6+qcUOP522b
	 FzuRws17zx0lwKLDlcsX0u1dwOv9WzVZeaLHdS60Iz7b9k60+NUELzYMJ2wCuAPGkq
	 K3vAH3LzSlKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F877C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539219357.32088.8022202608049186847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcad7ff035f24def13e57b82c4bbf66762eece6f9da4d445422114e9e406336
Date: Wed, 23 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745392193
