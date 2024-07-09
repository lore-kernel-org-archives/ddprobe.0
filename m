Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650367CF18
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720559783; cv=none; b=X1NTu3w4BUsDCje8w1fumYQwrj5a6dhaeVecNg9/kXRAiedEjUD4Juwo8SSDN7G/kclt3lEtcGehj0N4L3pQ/Yi5NnhA/hz4rzxpXLVSIzpJuto6a9jk0ab/vG4FheR3w7YrQ2y3tCGqz23PxK6mS1HWx1tzWMiclhEjPsLOKeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720559783; c=relaxed/simple;
	bh=wjqUZF931Oa5K5Ezgnq+tllWQV01ipWIER26sQ+/Xr4=;
	h=To:Subject:From:Message-Id:Date; b=M/N6DDQbtZfWJkwoL5z+oXIbC7noG9xzP0248DvFHJkKP+2DEW7VHtQGANl2Yi/Igu1Z3pvvCYfOtEW+QXysBx3PzwHuGTek+YbgE51tzb3y12buUi40B15ur9r0FdnyHt9pB+g/5GjZNn1+xHaSa/x0l7FvMMs2OtmQLH7U48Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XO56OhKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XO56OhKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E223CC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720559782;
	bh=wjqUZF931Oa5K5Ezgnq+tllWQV01ipWIER26sQ+/Xr4=;
	h=To:Subject:From:Date:From;
	b=XO56OhKtYJMdpYYTwPIQphA/amLzO4F15/daGmJXoWqw/rt0DNoXRa7JUPV9PVco2
	 udnzAxUr5h0/iZYcDw540B5WJh+QFgx4PtrqmciafqjYISm1woQeSX2RREzfo80nBD
	 gPPh2wH2zN9n4/McHDSPh6xA/RTj7w9y2ODcK4blrul4eKt1KUVvMPOAwYKp/KyXSE
	 ARwnE2Ecgl5YWRqLpGrABm+wLySTm8PSCzgMhSaf1a71j4QWOawR9bPY3+nDXutBjr
	 GAdtk4XXbpi/uoBRwwKtMZSm1yLnsmQVoj4X27hJIz1kIk4CLr5SbiMeG/UyVe+mJi
	 h8wmkavsqVT8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE5E7C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055978278.17633.618561475204873481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2827317f6cfec15f2ba80966c43754570dfcedaac9f0067053540d969d2b9f93
Date: Tue, 09 Jul 2024 21:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720559782
