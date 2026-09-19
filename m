Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469752C3255
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789813234; cv=none; b=phOOeDI0p7GIFilCqe50I6yEuXfutO7Uy57OD4rI5B0VgSr5n+H0p1UVQn8/olw2swK0zby6xdkVQWDPhAk0n/GT0o1J2g3DfrGRcd65rWSI9+WBgtEj42dj7/okphk5uYZlCFmQdluWQw44pirwT9j8Bifsl+NqxHPfstZZdOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789813234; c=relaxed/simple;
	bh=zwjLf9vEnT9Iubb5OCioTdGPaLSKLNTyry8RPLYlejg=;
	h=To:Subject:From:Message-Id:Date; b=acsfUYE+WAVMVPtUSG2K5ZRJwhpWtxDo3Nv5Z5yhOdZGAxglkuxWaxh6K4FLcwpTo5F/058VgJrhs2hVROgij9iVkKxZwmPW7Bh40wHzUwCkrc1b8S9itX3D6kD75bfXBQUqGIRMIb+nhUJm8LyBXQipQmCYs7WBfyBUTWSaj38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICKW5pBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICKW5pBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2834C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789813233;
	bh=zwjLf9vEnT9Iubb5OCioTdGPaLSKLNTyry8RPLYlejg=;
	h=To:Subject:From:Date:From;
	b=ICKW5pBZHUvSrrA5H5mLIkVqrDtJqdPGR2AVM9iaP0w4DZuLVTdQ/Jo7FrgC8SV9k
	 W4pvcK+8yzrOsRu3QBRn7a8H45HvKwmAqvnqfOplGGsmvwbrOd/CqHnS13e5mdwZYc
	 bXm6FIUIP9z0n1psJ7/xTiHfe4aLssYTDUaJbisgNzc91sGyr5bt2ov/ei2riNSmV0
	 23J7gKz8RlW1SoF2IPtCsyfpOH+yReLzfVqTwqVIBPtf1ZtputYGSiBjRQb7vPBYVD
	 0P19LTE4kKbKIneRBHrj+0cJFS10vqjd4B3MFRgqJon2rzzMyJA/LtR8iYgGiYNUT4
	 vXL/CPCVbMjFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5C4C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981323368.13940.6122384670970394572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4090712c164cef1a75a31e2b7ce63ea8acf7f252151cfdd7bfe8df8a28407310
Date: Sat, 19 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789813233
