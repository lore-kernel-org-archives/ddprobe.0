Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2892B2D7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765606974; cv=none; b=j006egLNfuIaT5OAjFwy/pOTqa10xPkQLucYnus/TUT85UfJhFKL65gejzQ3sykBwbiy+/FmccHfAIu0EjN7Q4oWyS6bMhMUavMYEQ2Eua5tw4q1LMIZO+vbDFfbfX/oxBOkRzNHJ1ftRNo5c1dv0XNGmjCWni1o1+SbN4ZXH6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765606974; c=relaxed/simple;
	bh=DeNMdgvGlOHzo8brLmdOxuSDFSN3IocsIl1aht7iSL8=;
	h=To:Subject:From:Message-Id:Date; b=RSVwYnhFsWMLvU9e3iX6lClWD32phZPsmxt0yjq6O5HfoU31WIhawbiV0H1dmF2xKYoo1lETN/mMdf+Ikrp0Ip/K3pD0rbAVASky1Myq83OA4w6CCIKxggoEESkq/lB6Ln27QQ81NXq+vwefkFXNKjHkkSVdmVw//7kY3yHxX1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7kz45D/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7kz45D/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D93C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765606973;
	bh=DeNMdgvGlOHzo8brLmdOxuSDFSN3IocsIl1aht7iSL8=;
	h=To:Subject:From:Date:From;
	b=S7kz45D/HQT99iKVfRPyRTuOSxGKvPaoJUDj0I77fOt/zEHDx9Z3cEc5+izgP4Ham
	 PunX654ZG8NJdFwgpASrbgDEserVRdmBJaRP5Uez4mraCFNuOsRvMifISqZTvJGkrW
	 CKItQsawkFPxQXlKP/oS+GiDy8v6yiHCoGFswW14FF3aWzIjNeBgQXnlk0JI02ls1S
	 8Eybw70XouR4Wx00ZdbeIJbwkchlS5kVuFUH2q+/U7rTGmgE6ncf8gKVjCjQdWX0ow
	 V2UExu58Eh2icGy+Us40Pz0F4oht9IRS/Bm521B4y1MHg3LEH0mKOil/ldYEqBFOEp
	 qc6f6gEhq4MCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91378D59F6C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560697358.16613.13146763958963833746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b74d0963514ac1b2c7ae7aa45198e190826eea0406bc17c27572869d26bb88c
Date: Sat, 13 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765606973
