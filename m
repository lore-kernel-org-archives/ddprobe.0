Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7FB18DF71
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728474354; cv=none; b=HGvvgFRfEbmJ7iZB0Ipg/8ISAlV6tQDJaVMYi274dbJ+shGRFUO9arcDexbwkZjNtuhQFtZ/IumEkIdbB9E7MCYAYHgeE8Ykfj8aM2MzgnLkRw4c4OvaJXRJ/69D7dIXUGOppJecOE9HS74QYqcrbh6N51OLldLyjg+6GTcG+YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728474354; c=relaxed/simple;
	bh=xw+bZIO9qYmc2qUFuk5lkexBf1uzL3cw30IUDyAybzE=;
	h=To:Subject:From:Message-Id:Date; b=HHhT/Wa8oR7xEWIXist0rQ2Ko8UuAna6S+SpElZeKbjrOvFAU/wTrcAwhHms96dSfGNtb/nTLodFHLDYSREkbZN3aJmnCM7lM2nPLx1CnMuCiRZ6TANGsd9Hiy1OxJO0fHHljEM8Rhjgjp/i/2uLIW/80U6jX8HRiiESMi0bCAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2suZsSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2suZsSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D3BC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728474353;
	bh=xw+bZIO9qYmc2qUFuk5lkexBf1uzL3cw30IUDyAybzE=;
	h=To:Subject:From:Date:From;
	b=o2suZsSYnm7qItWs5ScwULy09DWB3d8NpxqkxlELy78JODKMsBLZTeRKRm4Zk+YDH
	 uCv4Lnh9vBIy5E62hwlvjdN9TrosZBOAvOeImR/lJjjptnBlr7rogJx4Vt5g5KZyyC
	 +2GGiHLo5nJ7cZ7v5VR/4Vx2p+fjblTOYCukIkK7fxmLCDTbMrjWg1z1oJHBFHmx1B
	 7cQ+iKyUnZp+m9eCxvvi72xRgFNcp3DKvsEy8oaDKmfwOLUB44kiM78zlPicUWkQ+m
	 GETruGZSkKfClcL2JJJy4KhVzCmWJaVLtINf44irjflFvcqLXkFkSJ/fCjnn8fZP+a
	 RfHUjNF28DFVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9754ACEDD86
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847435359.5477.1707745447915385264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1590b3c07442218b77de15476b5975422cddced5c99302256d90bb4a0f9975b7
Date: Wed, 09 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728474353
