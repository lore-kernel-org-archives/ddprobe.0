Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409C419B3EC
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747509594; cv=none; b=J298BFf32xijK38+cFac8fxpNVkBlADpfK46BOy3UGI0p4w6wYfjfBp5Q/Z7kI5abqPGqaFNFKMIhEzxB+fCEggXeCGmixsXQPanA8YyLm/6ePv5bV2CSdmUroExBhG62oj9R1VstO7Gy1xo+khed4+KJP9+ENff3EhnyApiTPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747509594; c=relaxed/simple;
	bh=GAfNfOR8la09Uf2uuOrp31vi9y+PJ5V/fE+brUKqzoI=;
	h=To:Subject:From:Message-Id:Date; b=gkSxaZ11Pj25VFdV+AETJ5Gjvlhdr0JNAKqDYOYYmAenftC43xVAKKkJ3nui5yUnCTbyN3kX8Gg6lGJ3FEVNZ3PrE+TFwcQ3ZkGiTGRmPyPuFuoJsN1fGIlEdVLVFW7AwPUzCbpDlsVdbgQZeRsYWnY34ZswLB0W/y3pPLyHUuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPuTbHLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPuTbHLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C6BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747509593;
	bh=GAfNfOR8la09Uf2uuOrp31vi9y+PJ5V/fE+brUKqzoI=;
	h=To:Subject:From:Date:From;
	b=LPuTbHLoSWsaHoIxmU594EDmKvG/KAertjUCiWjd9WFWEByNtb14NJx4I1INlKxji
	 1ahsQmuEeYmt1HA/OuELWuV0cB6/kzBEUCWoepdzOojsmcKrWXS91w+GgKPwel7l1e
	 z7YzapcOZ1qskvhuD1pG9+RoR79nMFK2tRZ3v9GF01owqrSU27PLi/8GmZf+hWaZHt
	 Um4O/7eSNokmZUESR7guWgu2N585/UjFtJs+Gk2Fph4YOOVp5fgCP41r1gCWyc7O4s
	 b2ZCctnnM2/tqaMQVzTef1OtBe72nm5gEq8DfVAJymC50H/Xw1S1A41yu9nyJULsaN
	 K3ofmQrmFbTNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91515C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750959357.30642.6888092865764059747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e60b6c9fdb77dbd88ac64e19198e1f986b3c4e9d7ef078b9cec1267ec8e24fb
Date: Sat, 17 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747509593
