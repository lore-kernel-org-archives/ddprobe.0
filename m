Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A87EE55A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767431034; cv=none; b=tov86FCiKev+IoxbMEMam2/eEBxHDi1RN7Wp6IwydIW6uXfL87j0cMJHx1Mib0pguLhdqsGz/rk/Aow6kT/0AdJcCha7zMufUoVCVjFngX1FGxOTPsep2YxWt/sMWbzb0pL8Ji72TSCWL0jhddOLGiLlKIr8TwPcDP4oIPC07W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767431034; c=relaxed/simple;
	bh=tHdPOaOI4/59JtEBXiHKBU25kkPinHhLh7HPFIwph7g=;
	h=To:Subject:From:Message-Id:Date; b=BvpW3MrjR4e06UybUdShkhnWqwUOQGS3QCdZ5k55mZ1RDwsLO5jkuqm+/BjhQUKrqtZx3ZChYAHiaQuUqqjaTtObAyZcI80G2+Hf55o7qObe+bQpt1oXwf8ZyCqbiQm0oz5Sw3GV2Mew+d0t2+9CYVTL/qi62zByL/cj7F8ixck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIPnuNrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIPnuNrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519DC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767431033;
	bh=tHdPOaOI4/59JtEBXiHKBU25kkPinHhLh7HPFIwph7g=;
	h=To:Subject:From:Date:From;
	b=qIPnuNrHdm+mL6r8DNUhCXBY4Xrbq6KBhYkRXwzevJDi81aLygN0+qjOqnQ4y1dEC
	 qlJVbIDUUPvZPzDcZjT9Dq90e8oXOoMDan6tnpwxSsHvF3H2qhICobR6RjQdyfslM6
	 bb4MmnqT2/pR4B8nhZMCle06po/0lPut2OEydCnBmN1kgPTYZXrua7xFif/rtZQ83p
	 Y53KZElGsnEUwzzMuJbSclz5vzvqJWtw++Vw7wb50Fk1I8XJ4i8qr8eouCQanXoT1K
	 h0sgHAV0PSAiJI7UhbfD5oIf9Etsy+Gv92YQnmt7ubS276GPJsYoA+woaWk+EArlrJ
	 zPKQuFBbo3w4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9478BFC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743103357.5714.629231740812187657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5bdb06447c75f4600feb199ac4f163c6b06cad7526d455ffec1f68cfff0b4b5
Date: Sat, 03 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767431033
