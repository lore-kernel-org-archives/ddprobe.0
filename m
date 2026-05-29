Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDAE3ACF1E
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780041754; cv=none; b=UYGehjlDjL2DLC0BzivzBKYhqOWfqPk1jpXscHwQ8aPDJx1PfHJtbQEVR6fz+dOtzB1qRLGLJbjr60n3situratItZjjNGen29dSSJ42hpZZfSvAv6zeHTpYenOkLuTU4bpAoOf7EsG6TZIWFoitEoiOEfbD3Jo8vvlRcigy1P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780041754; c=relaxed/simple;
	bh=yLquf6p/nlmZV1xNOJbnbznu64FXwBppXr5zWJbrKds=;
	h=To:Subject:From:Message-Id:Date; b=rmHktFDyCeqynxfVIlRxe71/kNzbQ4kYNXXboGHK6wAn5RxGPLt53CuKRMyLTvucND5y/CmCHvjSnaaIl7xTTS7YmI1gus0W6/0h3SDu7LUm19ijpa9zggNciIh5d9HTYmHjXoopfS8sXpx7KK+8/7X+NtuG0OAs41Ufhu8ANyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDUDBdlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDUDBdlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F76C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780041753;
	bh=yLquf6p/nlmZV1xNOJbnbznu64FXwBppXr5zWJbrKds=;
	h=To:Subject:From:Date:From;
	b=LDUDBdlgCPSr/jQItEUAxfnQ+tuiYa0S+Z2QNbhyIgM0eMzECZDbpcIiQnaFB3HDG
	 R21nbvD1v0j2P5L/LcgAFP3FRDswoK6vGzKpkhSW2+2c2vLAjOxqyvigrOlZEn3+te
	 aZgJvoMeSISnFQC0eV30NeWNZ82/uEXIsUPFnYTwNwdGQCJIB2t4fd/IVZV2Q8eRlQ
	 jG/ZebmnYXZYn1O/S2z6z812NjenbBc0TZyO7Wu7SBhgWY6F+VAZwsoha6gIA3nCUe
	 O683d5eSESDNlVGyCEj1H0qdqQRbotTXCdc6EghXkvMjMMuoqpEZfLFxRwuq0N6/Gj
	 jAYB1jPyzx9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE6CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004175368.27872.15886729303283427693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b5904dd364a376be45ffae12305930c66428ef4ee0f84cd8320fd64402a73a
Date: Fri, 29 May 2026 08:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780041753
