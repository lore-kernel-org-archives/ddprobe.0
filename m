Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533BE3C09E4
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783077514; cv=none; b=s/AKOrcByDL/TUC2XEz6Rtphap3R3hM+6Y99nX3LWm/A1eauKgDLcC0E7anTgHccO9mvoSBDxa+wZOR8U/4i8seAZhW/Ij9jN9+P217Zwyw/R09e7PRr+fi/oBptvP4EcC4e0WWGi3oy6LqEQw/3T4eHqs8pBOX3A+Wq0KxRVxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783077514; c=relaxed/simple;
	bh=BfwStesvhyQSUIZPAVO53Xok9xigZrC+9rOKiKE18Yk=;
	h=To:Subject:From:Message-Id:Date; b=ZQc2d/J8VZRHzbL3tkxOocj8FdveFdmvITuBUnFx5h7puztSxIq9XQEdXD2yL+5HWQ9P30Q/kZNdeyF9rh5aLZyeq3ExkpE/z0CWQ8TDEgJPI2FGOp51cmv1qb8PpJ0tcNyfpxObBP3VUJUF0Vkvxh4yfr32QU825dlawzi1oM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahHo7m8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahHo7m8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2B1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783077513;
	bh=BfwStesvhyQSUIZPAVO53Xok9xigZrC+9rOKiKE18Yk=;
	h=To:Subject:From:Date:From;
	b=ahHo7m8ZniHgF5kHY4FrlDRUVzdyC53iJVLSu+7zAMYm5f/6aMPsfsI8qAIiYxJaG
	 rACFiwmzXqR0lF5jc2BRMXEIsFzDR+nmftIZ4Mbln69M3PIv+uFVpxTPLbVUghZc5e
	 YmOBOEi/k322o0qb2RHIjJkchTR0NcrMxxwPMnfywnlsgkhqo0vKAbHeM00cNR1cWV
	 4KZpOa6/T6x27tczOC1yx5ST22DScer6I/c5AKiU4LlFw32nsDYzmRHdBGBodasBJJ
	 lN8Ojcsr/sW3qP2oNIKH8pN3VtmgPCdPpyBu5KRBr+qqwSTz3wjHRFt9pIOBSe5tjo
	 I+0QgBqspqVcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9778C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307751368.30439.11887929421319685500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b517f63480d2c119080a255346cb30f71921179e13a4d114820ab1b0129b1deb
Date: Fri, 03 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783077513
