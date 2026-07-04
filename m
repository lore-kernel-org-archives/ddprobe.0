Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F55B33A005
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783141114; cv=none; b=GPzaHOWaPYNZbMHfV0hQnSo+YLIO9RqYJXUYuiXdisCoFraMEKlUGMUJyLVHRonZU1ZON9z12wfcY6/PFYFfN1WprkwUPg/z9RZuu78gVEx0HS1p3sZGi7nCBJ4nA8YMfR0Cc7+6ZBnj+9On0npzO2TkBvorD7sBbWJKX2TgulE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783141114; c=relaxed/simple;
	bh=NGE6R97S1PFargAxU4yj92QXFi7im1V6mXMNT33Odm4=;
	h=To:Subject:From:Message-Id:Date; b=lFyNGFFQUZLvdgaS66td+edcVeqE7+leadSwJMvPParg3m32AdhIP3a6e8eNVX40OcXGPPEfN0GxlG0wXeqTnLGrFb/e4BqQJ/wdBVCOezc36dQh/a6Q3hul6MlfJX/9xys2y0sMq4sVPgWI43PZE25NqUWIKqTDXkRhviKneFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edrI0Gcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edrI0Gcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9164C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783141113;
	bh=NGE6R97S1PFargAxU4yj92QXFi7im1V6mXMNT33Odm4=;
	h=To:Subject:From:Date:From;
	b=edrI0GcrrJCeJHX07YgMKkeGY+Wnk8YJAM3DWktPBbzLCtpkXfn8091KCNtO7QXak
	 Zy0mRYGGZkc1UK0H7pCMePUM1etsAvqmGWNt3SWScUHyWG2LTg/SDsd4XS3nte0U/V
	 ZNv4E31Jwy6/JlRd/umq2x3J8Se7/Q7CYy0ftzw4FQQd7Kcw28LGrJZblRKVVoMeQ5
	 L+pfRG2wwK4VdMEXRtRWpVd8AkafOiW1kd5qgN+BPeHzlryrH/DNnPVQtvNwkAOXEI
	 BOjodMl21i6gx9tnXnH5gIgPElmVOr5eDrQ2Gb8hcYHPpUPcy8amDh4Z0Qq+dWqCne
	 04w9DzDUGxjjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8353C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314111368.12088.7406217503398265249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac1a3655ef9e76db87364d430a71b15b7ae38e83da27f4e6904bccbeec4b2c2b
Date: Sat, 04 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783141113
