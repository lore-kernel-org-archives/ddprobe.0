Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323C12F3C20
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755771594; cv=none; b=tRzY7AIhG2GiSwvO0YfbhK11KiCuOBvxvZNUPyYkga7iA5Ui2QUDwp+mtQklyAw2MsGt0zJ2e9wwV15OHA2JQmecjpLwINIqIo8xsNHtk3LegkAIsbd1d0KrMVIbrLgBtaPDkRc72Z2piwe7WC/tk+bCmX0qu5y8r8ciuyIAItQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755771594; c=relaxed/simple;
	bh=7/pcL8YyI7xcJiLbDWzVTsp1NqdF22yw7QFl/Pk32lA=;
	h=To:Subject:From:Message-Id:Date; b=dMr8QuypbHmUfFpZ0IOgwyu06FFZP8jCY42UbTy22ZWDglOtxmO+MILmkcOE8fxJuBzKwnOe+nYz53Rb0cfVXYjGAWgtUPFbvaPNX5Tz/1P0AYSkhvnD5C0G/LYL/CJtWG7WPuTO31Ozd8bx+p0SD/1F687OU9pBh166AZBoDaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPGeL/2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPGeL/2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A54C116C6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755771593;
	bh=7/pcL8YyI7xcJiLbDWzVTsp1NqdF22yw7QFl/Pk32lA=;
	h=To:Subject:From:Date:From;
	b=mPGeL/2wn9+Dy30A1+DNAOGqZaVMzPir3EKMg3Dl3uui/oXu2LVPhIMw0345TMDWo
	 eOXmpRJrzwOR0rQlgJtYd3DKgt2xFvAhFJu2hfrWw89Bs2+ENo3ylr0ankUt4X2NDy
	 cS852v77rPSkQv5smAemtznD7Hupe8uQILdNakEDyhl8xuY3vxFfaT+qiU1iH2HEi0
	 m5ijHAt/BLrl+Fs4R9oi0foreIIKUzvqRTFldKtLqdtYIQtjfzfiEuVtkimrcQBOUJ
	 pxb9wiva5KfkDsYigKofd16Eye7BSMObkmsnbEnE2YOXFv/SvijKMdIAQ9NTLxfmsA
	 aKOcnH4hmFkuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACBCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577159357.19249.417058835569481838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf6b159f1e5d6aa3f0223fa71740329b825a50b363109c941fe6fd1a4044e8e
Date: Thu, 21 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755771593
