Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25631346E7F
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778411434; cv=none; b=I5N12DZzBLd1R6as4qCbfvHfZAjqJgkIVxRFRk/UxGh1fOWecyjBI0gIP7Ilkj99PI7pCLhE6/TDRrjagT2I/3/wIXx5GD5F7bhBdH2FIuWXTnmtnparO3YlgQleMZuD/S7udvJK/63NPlR664JJ8J488ayHED41hwsU4fIypBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778411434; c=relaxed/simple;
	bh=t/OMs+2kAPWxkNk44vnfjEKe1iSNFgotufHD+2Y1Eu4=;
	h=To:Subject:From:Message-Id:Date; b=Tt5XrVJh62ZZ3O8fX0NhPZIF/v0qTsO2xZyiEHG8LmPIBtPzBUGP4pwnhrPOVpMVg19Jp8DIMMrq7AlKzbWSuLRK1X6O2pvDlImhsXcRXd3muhXpgLUroDi2Kob3MOT8rriE2MvjpPeSCaOnk6UJY1+J6gVaZico69Xzh0+SoTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzNqs91H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzNqs91H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECF0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778411433;
	bh=t/OMs+2kAPWxkNk44vnfjEKe1iSNFgotufHD+2Y1Eu4=;
	h=To:Subject:From:Date:From;
	b=YzNqs91HwPpfIIhaq++zn2dr0EQBDTBVJRfdjdwW3ePqVojzJm7Hy2Couhkl+9BC9
	 +EMGJQFZGdKpYl3oBGDVe7mcs7r06BJ4DFLTQrWTmVvKzETwzZAZ1Al2+NDGqWx2Zf
	 G3XrUXGpfo4x6W3TPXsID7qu6geYKyPeBkfN94sLf4aHgiDxvijpCUFjqumdWlQedp
	 Q2yFvq+MuWXuIQb9udZ2aKXfEbOZN5gVYYMN0mnqVjA2Ewjcfs+FbmMrBCFyQP6N0e
	 OsY0yKQIcT53aRGpithc+/Gv0uTqyaPmhfN6asBpbh/lMk95HCUDN7HKeIgf9CI7K1
	 DmouCPIufu1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBF2CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841143368.30446.17279892368186297725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14afb962179d5bc1a59c0258a345a0139d5f856fc539c4ac29efc4350e7185cb
Date: Sun, 10 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778411433
