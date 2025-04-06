Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377A73FC3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743955197; cv=none; b=QCSIvIKT9H8mrSznCV80c8WKomHBvvMsaHm/aGzAhc0u/ZEsGgpYS9jy/NdtjwuUpyAX5BTbTYQk0U7aaX5heUHkg+N10MDp1FtMFg8KIG/YYHP8Wx8QFPtntsiaCywB/dJVsBCF1ZBgOmuodELasNfTzjHHKXltCclV4vRpALQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743955197; c=relaxed/simple;
	bh=mtoVINCidOFYF1alRiKapFKXY5OpziPXAdHeKATVYG4=;
	h=To:Subject:From:Message-Id:Date; b=XdYzVRMK6KKkJJBSFjFZsfDDFcFuMouAWZsh7lbhhA6mmFKi8huUotDc24EEQm01e7ZaQguOu5SjNX9z4OyNTNFSiaGIeAdlThV6vzUDfpE2+eEID7bIJRZzc+DJ0rQ2VOSUVAeYjpK1ybeqXRIqqluiQRqWusHdlFk+FL0V0Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRQZjyC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRQZjyC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAA5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743955193;
	bh=mtoVINCidOFYF1alRiKapFKXY5OpziPXAdHeKATVYG4=;
	h=To:Subject:From:Date:From;
	b=ZRQZjyC/BLOoyrfEQkIvXTUdv71vrypu1sBkYAOiurVep/5ZN4pu3+OwfBy6PSqb2
	 55B2QmILfOjeHujA7YmE3K2Fim1uSlKSRnx5vz7Arjo8VTrIgPV0cDkKCidtgvP1Jf
	 zHPJXtBRfgVgxNKiXQZ0wrMNdx6ZfIromIu7mDEDouXUwrSb/Sek71JLbqH0EYwXAr
	 zasl/G/kVxGlPRR8TZQ+dKjofGZLDFHRrVfszXspQxvKtID2E3dApqDtNrdcAh3eZ/
	 j+Z+GXn/LuOhNATazMir6hU4yd4U70tO+iy+5aWD+JPV7DoFBePsSTezHnfoMaYWb5
	 froKxOupeSy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983DFC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395519361.20482.16181890440368375829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14637b3ada5e8a6323ec224599e21e2b0018d9096d6e151db61c5c422a6153c8
Date: Sun, 06 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743955193
