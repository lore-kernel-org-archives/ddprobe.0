Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D0F1E7C05
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754771995; cv=none; b=EMn4jcwXTX3uLcErgYIbE1Q45y7o/qiNJI4HXEExprtmDO7/8nxYXpxhGcTwr7NLqt5KspYkww108jXdTD7st2NvvPJkb3LeugqXaK847wvOtfKGMVi65gCm7qW+aUErlhrR799ikI+h/hzIlomvV2XK2aMKQeokIV7mOkZmyxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754771995; c=relaxed/simple;
	bh=kTmM4w+mjBLM7oHhE52W6qtRu8Xb9U7xtB62+B8HwjE=;
	h=To:Subject:From:Message-Id:Date; b=SHp5xjLgEBEj/koOUrWGKp1zFfn/bPGk7LcIrd6SjQoHQocvM94p1gyzpLH/+YoQH/FVBWeegZt+4PiojvpWA9O1IYeL1d9J78M1ev4fBgDspXHgy1fw9A9Wbj5WcRhL5jzdPfnWMSDoZMTPP+zLxxs1nImplhHMbcPHTdRfcK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvT5TTw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvT5TTw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1055C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754771993;
	bh=kTmM4w+mjBLM7oHhE52W6qtRu8Xb9U7xtB62+B8HwjE=;
	h=To:Subject:From:Date:From;
	b=JvT5TTw2QptuHxxugzetlVM4pZKWWzUID4/ao0JF3ayzA0xSK338esuVdhONfX7LM
	 YivnaqpDfHts/cDM7g4C0yP9DDDGTHcd09KbJUaS4ZksfQlvmDSX1S3vuVH74FCnqx
	 8MUoEP85xUmufzSiHP/HvgKcs0/F09WwyHOq+FZ8DUPq7e6onUutFfKof3dbsW3hoV
	 WEclkSNDpkwTKcSSSBGHLZyI2qSOOyBuUTdgAXYC8DKZyyNJ8GmVu5b0A6OMR4Xcqz
	 TEEx7Xn/MhHauJ/NOasFVfclpd802r3oMemQ1+GyoKj4ScrzMardXWehpNSX2w/SWb
	 xcfLBlE99Xjhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE1C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477199357.14117.12842837890878527397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e673d9de1e8e51b9889c5507d8cb3dcb91751ff5ba0dbc6a71e7c5cbb3c38e6
Date: Sat, 09 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754771993
