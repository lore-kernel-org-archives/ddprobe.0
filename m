Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5931D39DBCF
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791453634; cv=none; b=QwsWY/iBLE3yLYUwInxkPX7LgfP0H6amVNcVymr4rZGhKVxKyQK0QZ7soZWwKBex7Cwbec99w1XsVx5PrPpI81oOV9kPyFVos64G/wcFhiz3/uhvniON89On5hzpXI1XnmoDtq1PE/2HqM7TtU3qsRAZcKbrB17opA10f/f/8ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791453634; c=relaxed/simple;
	bh=v801kwVRK5qWtH5SKuS6b4IA69LvyGUI8mKrYbO0cEA=;
	h=To:Subject:From:Message-Id:Date; b=TFwG1+1hk9oOmvU724DcLIzHyJOzqaZspWqsrTDZgU/n5C+TQ1siET7rXY9UO/bVWafWLr1Bg2CsO5PWfq0UYGCJVe+ImMp3oDoUaSoHk5EKZSNgyOLcB0sLYd5Iw2L0s38yehIxQDEo9SKmo7lOPxxwKZoDTSJztF7iri78GAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAoRogxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAoRogxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF58BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791453633;
	bh=v801kwVRK5qWtH5SKuS6b4IA69LvyGUI8mKrYbO0cEA=;
	h=To:Subject:From:Date:From;
	b=RAoRogxJ+O+/r1daVMfF93pC0VjfDFytHJ+QTm4k/zrfs/JTGLjRaUmzoqO7JjfOu
	 gVOb2OMKbSJuwvn1PlF/XegQljacp0dTcHDiU4BAkTpqQREOJDgR8Gauc74eu2r/NQ
	 PPcHJjPpwpEIHVgjbAAhy2fE4GkrtK5rmkfUFKTLdus1N4shZhUxe8hWtn8cTO84RG
	 6RX9QxUXJPiBqzD5+FDfHHiQ/vce/UNW4wbqfALVbT8YksRjsVcoxwjaJSCZ1aNaR5
	 HOshq55QA9Uqz0EcIikNJ/Xgtdo0sHQtXj3lmVt67ZcZ0wphyYazddSZ5fgXqalzeq
	 GKAX1dhG0S+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB06CCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145363369.3219.14457022229030091008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d11bfc0ae75137e9c5672798683ccc1cc001eeae5659e360ba892ae3aff0ef
Date: Thu, 08 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791453633
