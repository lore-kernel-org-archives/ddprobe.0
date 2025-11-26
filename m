Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B64C14A4F0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764123174; cv=none; b=QHOWujWRKuX9Oi+ribVF1z4f36GsH6KOk32yDtqQp06P8J/uGrFI8qYhSRZhcTo3AQuXyB7RPCcdwTR6Gx0vvnoGGyTVWbOgtAK7FNU9X+KTXnD1tdoAxcWLTShFvTIpNfgkzsRGnDlLK18dbs3W6FIG4EsKY2etVaiZnlmSNtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764123174; c=relaxed/simple;
	bh=+yiPlobkN1lF/+6FjcbCt1psaks5aHwDJDk1sJ+eWEw=;
	h=To:Subject:From:Message-Id:Date; b=AKMnPqK/JTj+Iw4grqKo4iyMZ3iEI2qrFRktS2wpiO1OE5L6DHvZaU/WrGOaEqhkdjvbvl7t6meqJTlA+ke6zthFecEYrQ0g2PPbNHixTlXWEb+DBzOjCOMaQ80+ETTI5CeP8fRyqxyKuxIy0laJvDI7srDgHWPm7X1mJggZYfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4mRYJRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4mRYJRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5606C116C6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764123173;
	bh=+yiPlobkN1lF/+6FjcbCt1psaks5aHwDJDk1sJ+eWEw=;
	h=To:Subject:From:Date:From;
	b=b4mRYJRjAKiL7zNQPBU1ye2VXuPwRm+0IwlX/Xhs3akC5WnpSzYapkPFlm502hvSA
	 Y1wc+trYkJuIInseiUKuf4FpG29jfWyMMR6yema6O740M3B8LPWlF2MgucZip8eyMV
	 FDPa8FBxfpxvt20ggWX20kq/Sl2CR6QjClwJc3YP2nyIt4Af10VrM6W41eBLnDz1Jb
	 YqkqF06gZElhLBvwTPGjB0gaJtoezsYY3Vcr2TzyPhSe4u5V+KLVgmMbcevg2zV9Gs
	 v7pGrMK+6wysIiB53SrA/trvhGVLCmy8FnF6ofpze/NKN71J1Rb1an8K05kmHQWFBm
	 Oho/YUySRNWyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92597D10371
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412317359.20004.5329326314278412720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867a58ecde17bf868baefbc5aa09e0ff994da993632bfcfdce256f3cc8c26c75
Date: Wed, 26 Nov 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764123173
