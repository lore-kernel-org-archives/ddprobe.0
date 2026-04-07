Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E6E3B9D93
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775571334; cv=none; b=coBbOKpgWT7ZwaUsGJuRMlotMhAydCBv0fUqpzp5JGWtGezsWB/hWMTX7zZS/e81+0keT8/aj28j1yIB9CD91SABNS634Wqfn17h4Jo5AMzwT3t+3uq2s3lEkldej9zuxf68XG/iDjlZGVsmTryArOCQmSVrsokYOLyyozbnWks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775571334; c=relaxed/simple;
	bh=tizcOLPmOCYbo0Ia0X9kDvSttby4EaYtA/DTYC0UccA=;
	h=To:Subject:From:Message-Id:Date; b=U79xiE1qrc/qQ/Sdb8G3UOU+/sf/a+VxudU202XD4ooMMj+NDiKxEqLUcYMCN9jNkdg5GRYTypYqY5dJHYUeWZ1m+wwL/lgokrYqL41tlNapRT5JLBbadCY8lwx7PNN8+9SWana3pvtCPQXx/Q5I4/WwSVmKsb6Zt1nJmR8vp4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uftpxL7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uftpxL7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EA5C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775571333;
	bh=tizcOLPmOCYbo0Ia0X9kDvSttby4EaYtA/DTYC0UccA=;
	h=To:Subject:From:Date:From;
	b=uftpxL7TXIrYxm2IVrwy143ZwqVxhaYWzaR5zrQBS23DqRO/Tkx0oRMO2x2V8KEQC
	 rBMIT9stz14gJFhDCaZK/9pjJIfp588zM28R71zFuRyFI4BOTrJ91k5QU2VsndY5uh
	 VtwUk+wKUUmelIjheZWTCReHPeOWyerl1zUBa8/s4sxAj1pljjy3c61ABhNa6wHOb3
	 xuFDaJgJ6Hu6e2c3koSnAkNGoloD3G3QFT+NCN3KjOh81p/ZllGO488HZlVQiXRt40
	 mmtmx2AYZpcrTTL4E+PhrtTbDcTYgD4eD5215sa1htX+7VLBaa45Z7lACygMxX5tvZ
	 hAz781KOg/3uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD62FEEF44
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557133369.27109.5449223056629684232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d716903326190cac64eb72afbd44920cc1a6bfa7e80eca938abe9c89e269deb
Date: Tue, 07 Apr 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775571333
