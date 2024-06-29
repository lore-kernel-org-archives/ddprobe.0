Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBB129429
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719665663; cv=none; b=On3+98ljplL35f+T53nilve7d8t1/F12kOYXL4Li8gB9wx+JcWk7Gm6bsOgjGTdLZ/XgmNPesdz2uKX3Lahwc+BMw5QvIW9bptPtTnq/VPl1kW2Y7GS9dxE5zGDYdPT7Z63JbJjTmxdZeyD5b3jJKUO1bUQUWdG4GU1sWnDINjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719665663; c=relaxed/simple;
	bh=yJHA/RDa9kl4c19Ce6hTjAG35twMfoc0yCqb9a/Mpxo=;
	h=To:Subject:From:Message-Id:Date; b=aLc8MDVAgshHJjA6SFigdSKXq5cWBS9u10fW4dT0xORg3K9Anh42aOmhdrlu2nG18kvV5nnYE5yASA1g0beiB+Mem9MP3kbyKoP3BLaWBVN3imfsAMUIEPu5C2yqPhMUTeli0u77Bd3Lkz2qv+ZESFV0zEKK0Nxq8SaPYJ+r3DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPJbREVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPJbREVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D67C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719665662;
	bh=yJHA/RDa9kl4c19Ce6hTjAG35twMfoc0yCqb9a/Mpxo=;
	h=To:Subject:From:Date:From;
	b=sPJbREVIYybQoih067aJgXNlhyc0TbB6AlwsP/gqDP7GaVHg5kYqRiUtTwPlyp3D1
	 jMLcy5+88F9o+6/z4uw4ojZ4qQE0Pik7o/ikdHWdoR1iiYA1lRQVFNUVXBsGvqDya9
	 aMrMq/gGE/42wpeUZ2AtZ7/ZCmaN0DR/6vQ3RjCY6EGUF0nrggFur90KAeADkHePCw
	 QNMydSFosCA/9AfTwPiIJaTDIYaYcY10SfURVdZgZGyXjgmQhxlQk9UOOEdt+JqFE0
	 w36PZ3mn2+CqY77apELniNkOSLCh1H6MWFHLL/OxsoobZM+tvTCtKLiumY2+a8DVdp
	 i7IvTy8pgNHoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE79DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966566276.1756.3748081542182663728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d1252920158dcc3174885006ae4dc10231e1022494f68351de6d2ae548f06e
Date: Sat, 29 Jun 2024 12:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719665662
