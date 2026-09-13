Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BDC48CFC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789331434; cv=none; b=e6X1vJNveIpIpBqIGMEWUrqBRxlKifxMbVdjvu2e/vmyzgSXTxMqKid8oLMpP5YFhYZwqieGNp7MFE0t4VNSCDc0coATiAnQlFiQpZN6FEKjoRgxzx6MmgVHqj5NtLOmaA7xnyDFtqobox5Z8E8LnpOZ+nPDoHIWeR5K1UI6TD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789331434; c=relaxed/simple;
	bh=gV5zzydk3OXtH3Fe81JaHsdQ7CY9+S5SG8+RE2iCkSs=;
	h=To:Subject:From:Message-Id:Date; b=iQkbuXoG53mFYwTlHMuYy1QJqGaWumt3Poue4sUbDxONKhICmvnAyofGHioGvEZfrEdBoL2orzY1/m/UIT1jZrscG15L7QkpqRDEqSvYpOdAofjEEefCNaV3VTxGgYtM0nSdWbcP9d4gYNtmB3HDBHtJ4cf6GtOhG5EF34snMtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6Bqv7le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6Bqv7le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFA9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789331433;
	bh=gV5zzydk3OXtH3Fe81JaHsdQ7CY9+S5SG8+RE2iCkSs=;
	h=To:Subject:From:Date:From;
	b=s6Bqv7leY5xo5DD27ptNr9AU5ibGmhcmF18RvIHgth4Hfzfvo7OdouZVtJ1tbrtIz
	 QkYw6KlyOv4BitxoXN/ka8TfQlgn6ppcQdSG7Eu+perh+rApV3j83qkxe9U64DwMIR
	 yrLachDmK3tGnWLMT11NVe1fDXMxLCF/qsnhHe4sPZlnguiNr0I61qjBTKmFFZP0vQ
	 rUMMIXl1sIc5APYy5kDBcznrCCKnEE32cKw8tdQHXI81ZRaevM1LUajwHAzQ6vA+LD
	 i3/PcvozLF/CuMleNZEIWJaWShqKvAXg0DpH587+QcJB2HVHR19WVUWZbKAM1phXzW
	 uTg8c37MUsF5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8AC88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933143368.3731.12047604693808787906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9596d4732efd517b043751d3b6de9a33610ec0e7b717ef75bd32a65cb303a4
Date: Sun, 13 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789331433
