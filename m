Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FA11A072A
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742414994; cv=none; b=hhWsVXB8gvSCfKrSDZmkAmNSu9h8vCsrTbHL8tJd+4/3L9Xu93ccKaOibmTc1+Xfq1yaE2Qv1iJ72kACsB3RuEqTi6EZWUCrZtH0g1F7PDtwx0vLkx5mQTy02BUlcSCE9U67Q5OmlCcDbMWgJx8UYJIoITq0Vpzvvx5hsDMYi1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742414994; c=relaxed/simple;
	bh=R7JSu9FAySFbEybxfOPdZozrsmi01Xt3O7Thlwpp9p4=;
	h=To:Subject:From:Message-Id:Date; b=Mir/GaTbz2BsK3H0Migc72TMhfI3hUbo93BvPz9ORWhMKnNnvXSYBeAIhuG9WAZUOXQLJSK1fyztsyBIy821AqQo+60EYS2ticOMEBSQUsQPL6FG+o3OGUHiY2c2NUoXU4jz2MSRjRbULHUswALFMQGyzD8JL01MpNcacSA2Wo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWsk2yZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWsk2yZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1CDC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742414993;
	bh=R7JSu9FAySFbEybxfOPdZozrsmi01Xt3O7Thlwpp9p4=;
	h=To:Subject:From:Date:From;
	b=KWsk2yZ5XedOU5H1KpuWz0yCgRUpHod/nU0JAM5XXp0ag8vv/U9+BmtWMCZp4vR0n
	 4AELBFFoE35E5j0qlVGJkhfjOOiUkD3Bjs9McY4KA+1dyzMAKVVB0xy3XTH68Gk8aO
	 oUIxTIfrAiWJUMecQ3ijSF+ICQ/IWDFoGBYt1EKJZby4buB8S6+WRxvmlfl9G4+vuW
	 h1PgFZoddA2DntSPkYe5n6baUDpf9ZtSe6K5sYQt5a3pvKmm2k0NW7bmFwPqSLdNlW
	 Wa3HbHHHxd7lmwRMEjHEkAPLA+Y2zrUy64UCfFQO9v1I5g7lVfyJGenmkssySdV49Z
	 PUMOCfYCHRWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F787C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241499364.25245.14162284027719830610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a5ed781fa1814451f9020988dc8ecf067db71e7c91579d9a3f42794a540568
Date: Wed, 19 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742414993
