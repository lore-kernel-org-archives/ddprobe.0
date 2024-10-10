Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3852F179A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728528354; cv=none; b=sK208p1GCGnUW3NcM+qZqkrHPN7erAdiA3fXetNEzdDtforX0dBOfyVecdHinStYZ/PNti5xdbg8/HD7w6J+0cklF/biw8EX+ZlHmtChSfItOl8zuLdRmKTAuzijFLazywv/nepsrzwlGcmcnKIUU2MfixqnZTqbYOYuABRD0kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728528354; c=relaxed/simple;
	bh=Y4iScftKYaxjuNJr9GdlB7dfkglr2lFDTYsO4ZXHS2M=;
	h=To:Subject:From:Message-Id:Date; b=KZNa9E6j+7y6Y3jYsI3uMp3eMGgKQYGeOtea2j7AjpbPhDVMBdbBsWIVncBLUv4iDZEXOTJJ9NyLjq87uxiOTqNFrbc9Ur7PVBTDu8DEAU7d8jgsf0JFX7/KkmoczK5FEv5gYhnJIgrzlMIxaUjrx94LLSeQfHnkAXZaSV0ss3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzVrkNCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzVrkNCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58F7C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728528353;
	bh=Y4iScftKYaxjuNJr9GdlB7dfkglr2lFDTYsO4ZXHS2M=;
	h=To:Subject:From:Date:From;
	b=UzVrkNCKwsHK1+BWy33A76gm4uVx9ehy59lryAzd7+X9wnFmNLeLUs5pA2TjK9lwk
	 siG7I6YXPDPPgQZyUWrCztsEMrvLD0y5ILeVzhsa3NmMYqAcVCc2wu3toLBbwmAUOr
	 GYxi5dx5mU3yyUAq77irAM5/vI7tXROdNfQ4EieQGm+QN68X/Yddb7FIrQzFsY6ZHI
	 sZ8ugMSzUocJ8mkGcy293dP7yzotrg0/0HCgFN+86m/Kc27u+yfrLBgyz+KWyAUWjS
	 Ai/A4Zk3KRRR2jNUHt7+bndUWhkswx8VLJ/iqmDAzzw4oMhRLhbnIjldROLXi6F3UO
	 hbVDJm30JPkrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C81CEDDA9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852835360.31766.3647930227451432051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c722cb97fb52d0162f8d243923859ee300c46f9175b26c054fcb1e808513c7
Date: Thu, 10 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728528353
