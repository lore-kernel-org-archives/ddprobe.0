Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA34A21
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717323323; cv=none; b=o5IMu3xs3fvUBoDfxGwGD37hQhdbUaTKDTSM43J29Fbk3tTLcZZK3EL6yUEwyB8N3YCDAD0jqwalrsmw7aVBh5PPN4woh9ZvRAAKTV3F2DkqRng/QxqtBQKKSbbdPf+K0QBNSgXjcN+m+bgjeDkBOULJrU1gSI7K6029u5E1S5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717323323; c=relaxed/simple;
	bh=Y4uE8EgUkY20vzRgndsM62A/g93nwOAY8f+L/Lj9nz0=;
	h=To:Subject:From:Message-Id:Date; b=stm4lAcZ7l5Q7BkLKFUfep3ZjrNx8ZIvB6wfTaCvnz/OCttpL5VLaqw0vSnxKaXgEnLFLBlQ8oNo1Vaf3FztgcbiTtx45rr+gLdfdzbp1q1YpnKXTaGVqaAczCc3sfWhNGtCGOvhuyab4GuuYWQHVntmmqFQeDlbI4XYDu+Fay4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/lsK0Um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/lsK0Um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE305C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717323322;
	bh=Y4uE8EgUkY20vzRgndsM62A/g93nwOAY8f+L/Lj9nz0=;
	h=To:Subject:From:Date:From;
	b=t/lsK0UmL5xAwrHo0fa80k1QSXFB5wfZ/5Lw0GKittoPbrNooKCflpxIFTYlxjn/5
	 szHwymsO9lSG5y84JdiGCThkk/hd0SMZflnqDZZ+14Qn+5x/431li6qYkisBiQpUQr
	 C+V6YXr/ncwhMcNkPZtR2VulgEjQrliX305XyaOcg0c8x1fTSSiDjPr4zdjPALMerb
	 N6wnx3X0Ue+r6af1naVUPPe+xwcTAaIITq8Yb4eMJKjeT4LFXaodMtJAnNgQqLy/FZ
	 378QNtypzC6plG3MHQLEJZ8uB6G+R3qJNSPMihTKSjMkjHDTMF/64tvvqrUKV4yESF
	 tglVlzVXysLzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5639C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732332278.9971.16919644698057821654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f1915292e5a8d75609fda259b6db4f7db98d5819f4aea3a2540bf68e782858
Date: Sun, 02 Jun 2024 10:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717323322
