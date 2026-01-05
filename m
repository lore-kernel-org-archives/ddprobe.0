Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394262405EC
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767621834; cv=none; b=Ly2k2bctWEGL3iMBJZy5v1Koy8is09VRBxMbfDrhi7mJRVNG88lo+uzde+l0eBVME2uoMVDLb9r+rrh/CRRRpWX5cpQsTMDIJocFS6+D6MLMpr15qWqFLquIRitShpua5lSRjlCsM8ZW4xLQsdldpD8uM0i0Ihiy5VpsQqILyJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767621834; c=relaxed/simple;
	bh=HdDj2EIalfaIpNpMk/ICR8iMPvXSI1wovxEewTy+LMA=;
	h=To:Subject:From:Message-Id:Date; b=Y5bxqaYp3n2DG0QV5BBwbifKEGnLUFWfOyfTu9iDtIHYZvFP4MaswIOfaKoVOMj9em881TYlP+oF5FRjlRmU7u0yGLKMJddIES5zSrwrMmOl3Bps9iptgCAC5rxU+2/pPVUQCAlG5jwpkOBTGe1S5EabBo109lRsrow8ZCh1gRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSa0OkcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSa0OkcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A51C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767621833;
	bh=HdDj2EIalfaIpNpMk/ICR8iMPvXSI1wovxEewTy+LMA=;
	h=To:Subject:From:Date:From;
	b=MSa0OkcXr3ltYGddlmJtsjPabGXawqCjPG7ksC14K6L3V4lZBRk96BPeKxCfx9h3+
	 rdb3BZ0MO+w9KITZhxXY5x6MiqmLwZEe5g+S35iPeKtm5KYWGheP/7CFuQeBv1+VMI
	 EVp2wtnvz1T64NywBep2701SX0STmUKewUO2fpF4J1tTNqr3UsJ8/Oe0fW5Y3LEXek
	 Bf1eqwBJ+PHpnNNHd0slU4ZmDDT32uOs/P3+jmR8TpAB/OJP6EEXGc8QwttFoQ2QvA
	 oh+MyrYH2elvEv4ZCory7Z70nf7pgz+GZ8YJAybUVFu6bqJ0vu3xrZjcLRS5WEV4dX
	 ldHYdhjKdcVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0846C79F8C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762183362.2313.11537449808455851744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bda3cd2cc0213917378f75d524aa88f33bffd68232a93d745c2cd0dc6cbe5e
Date: Mon, 05 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767621833
