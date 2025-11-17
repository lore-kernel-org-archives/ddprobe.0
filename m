Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21037321F2A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416315; cv=none; b=dzmn8+yYByPGkSP8UemaKULHpldAaHvd5T9U4093FeFEBmoejxMeUxCUQoTAfKaeydG3I6RgrWrb/XZ7ACNO9I3QDDf4BN3QCJAG6J8C6rUQoY/KeE+qNTccjN6zjr5mp3zCtuIAJbm75lm09xccM05FI2p3v+H0XAhk/EXCQgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416315; c=relaxed/simple;
	bh=cKzmoL0pGzLjpjdnXZZ1DHoocjH4xleKCZGvjNnIZZA=;
	h=To:Subject:From:Message-Id:Date; b=OCkkcJ/RE+aWL6kAmhpdl0Vcn+F51AsWFvcr40nC4PgCO6L6WosVu9dwGuzTLeHEpL+kimDUDq2SigbqdZ47Ipbl5w7sfpG4RF1HYDjlf1nnJJd33WHfOq35TOxkWQFHd9Tyyzlfj8MmbLrlbmdkePoFUE8vYSTWW/vq7E4cgMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0zayYgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0zayYgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6022C2BCB2
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763416313;
	bh=cKzmoL0pGzLjpjdnXZZ1DHoocjH4xleKCZGvjNnIZZA=;
	h=To:Subject:From:Date:From;
	b=R0zayYgYfPPMfhdwk8EtD3Y/HvyxcXjhnsB0OQuLbKPXmB/0udyQQIFavbAkwsxnF
	 C0xtSDue3EaHohi0rFdVVRjiTgb9n2h8nrKoHkD/WX+sLF2Xw7pHSbCpo2ORkujOcJ
	 T9ZTQ5SvLoL+2QvGshKFnhuMz7UJ2FGELtmUS9ZXaycaR11p3wtNpysZszG2W7Gx6D
	 65H40xgyWeyOj/vZPbQPZa/6S09FbcwvuIgIuuTC6BBm4eRoPTvTu5et2r+82HxR1b
	 hBc7ae12gZBsnjNqxJZXKa4mDL7f1KXPtSDNxxahgk+sSBSpmeS454ME4u95qs2cEe
	 VzqM0+RPW5v5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9539ACEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341631359.14892.1983894926709764671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0f908cbfa37fdf4035d08c5b2626ed62391fcc9d1778275d80227bb7703fb9
Date: Mon, 17 Nov 2025 21:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763416313
