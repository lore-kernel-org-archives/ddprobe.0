Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E89A45BE3
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765148574; cv=none; b=dnnyoJX8TpYArK5pEXKcR8OOecU/4Fenu5hd7gK3KQE90uVknWO0X/YrGOkHuoPEa6WepnzvwF/pJv7y1zlI2NH7qEABJrOfShWR2SthBvdx3/V40ATAk6Jb+j9dcng4+rroIkMdYPMB9yp0g871UAt7Koa+YFXwdzn97O0MfnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765148574; c=relaxed/simple;
	bh=q6Mg8oTh1fVEeyTfaV1xc2Yov4CdFyQuASLzrhYvgbg=;
	h=To:Subject:From:Message-Id:Date; b=pIPa46+OfaHUho1iCs+rzL96QcIReMXexZY3A69QBzCnprJ1JNBHg4g28kCko8jnmixE06y+JlXu6upJOgCMLcy2ngDMNZJmBR3g+d+igGNcZT4JrjRPvAWiDYB8yAjKi9FazaPEtSZFPqKXL2DDPvmIXi0kqT8/v8rtq2qBjPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOQdrQAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOQdrQAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA62C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765148573;
	bh=q6Mg8oTh1fVEeyTfaV1xc2Yov4CdFyQuASLzrhYvgbg=;
	h=To:Subject:From:Date:From;
	b=kOQdrQAo13ajvnCrnMAiW2Qk9M0aBL0zECa0fvPlq6Qwzkw6DEoNBJuhZsuMTege/
	 U4shdPQtB8TS60e6WVLSaVVSw/+Pt/mK3tX5KisQnnlLJBlbaCed5gb1zuT4UNqX0B
	 PFx0ON56WgaGhkEHcCBKX7W1PmayxxMrIebifxE+kAjN/Jz09cLlyJfDcm6qSDlaNC
	 1ZOjrj/rFFwDRqwGVYm9Ug9+Bm4N/oTygKWLdWDK0prVXR0881G8+IrVAdHFMkjeoD
	 faDuodp/5xaIzrdLY2eprUaDKVIqoZ1XAa2o9GFzegdSaE0yjEjJ2X6RplBqQN8fY1
	 R7CZivDCwkinQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98070D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514857358.28378.5943994300553599454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56b3fd8f37d1011340ca76020f9d2f3e29b04996ca982fd18bffa48816c5f7b
Date: Sun, 07 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765148573
