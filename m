Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621032FB2
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747547994; cv=none; b=SzXbBeL2kKaaV1q/nD39BtombL3x79mF02mCPbhg1QyRZogRRXV07cE2k/IV2t/ESzhypF/ufItosqJhVd2fCoOnrNuzCZ9hOonBhHmQdcUxHBIS1cR0MYb7o+AwkqL9d+dxUb18ZB+OPls6JxiKl+DjiBUDaasRKIY1NnpA+ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747547994; c=relaxed/simple;
	bh=BG7raa4deHxtYlX+F2cY0fK3Ue44woNMKEiCZkIYwJQ=;
	h=To:Subject:From:Message-Id:Date; b=QZD5aOyrqR3k8PvvUpnEIG/hIllof3sTb5XLfWLVBtYpyQMK1Eh3dxypGKF5n4d2N5Tb5VZqQFV5VZaVzISE4f0J41scUaUSdFPCHxOD6uXTJtdDKCPNhTUWeLYj4BVZ2N4ATggWex2HtxKBIEwLzg9nXrNH8WuC53BdHvcbV2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgQgsJIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgQgsJIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17AAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747547993;
	bh=BG7raa4deHxtYlX+F2cY0fK3Ue44woNMKEiCZkIYwJQ=;
	h=To:Subject:From:Date:From;
	b=pgQgsJIXAOPE9EbIFXsavVLJSXPozCwZqSAQMIN8iFIK3YY+CB/f6dC03fUAWWF5h
	 qt1jKNapisLSERQxXK45La4JxEGvODGYZDdJBeHYbyXbNh1x2JIHc9t9T3gKhGXgc6
	 DL5BCt4G7RbuZ3oupoh2IM3BKaPQNKgpCaSPTHWM7wNs3se0FVCcfQ33R2AoVy6CWU
	 +SYAiqEnCRcaomAy9QlyhTyKR/Zzly5VVwSml0kh20Ml6pduiUPKCvJ5NRLt460Qvb
	 oP8rXi7A5H4mC2RTmmT1ae1/ZM+WS3mzrSx1ga8Bwi1PYSZ59UbyMsXrqVbqWjuE20
	 QNb82JaA914ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A9C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754799357.18640.16613281949258477935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110fc8e00d57de36a363de9ed901e8d242ac27fdc8f1fbc7cf74996e600e94a6
Date: Sun, 18 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747547993
