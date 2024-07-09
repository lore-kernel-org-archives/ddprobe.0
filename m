Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7408D19F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720493183; cv=none; b=CkXoRwQBFB989UXZQKbIg1SmyNrr0z4jCtY9TaPz9UAbtlNnFUAQMtv4Un5xrTbjMuLehOeBnhw2Yx4dN2KJUTpmWPnLnRqRPEqi2fg1i/MDDhLOa587C5ZF2gVfjMruQCuRnULTkv715ZaIzfO8Iv7561B0AcX2lOZN3QSUqgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720493183; c=relaxed/simple;
	bh=Qd+3SrZ17q1auHkFKL72jB8VxO54CAfgiqs6k6j8+TY=;
	h=To:Subject:From:Message-Id:Date; b=B4dQuAmN7en34nSu5rvkqMyk8knxaqnMH6U5uXSXUvEJD1eDqutIaec6l9zmmROdlS+O6qIB+IKuNGUMDEYl27dhEuyLdDDPQcest97abhaMCvDuZacnVZslWkZsrC4CtSTnx9N3PPTMcAalr6OP9XLGnSeeBoGbe2yD5lIJPgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBUH8EuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBUH8EuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54ACC116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720493182;
	bh=Qd+3SrZ17q1auHkFKL72jB8VxO54CAfgiqs6k6j8+TY=;
	h=To:Subject:From:Date:From;
	b=vBUH8EuADC7xSl5J62PXGiyYeWMNGIYn5rDbIIDebwOF/7cTTdbeVq/xiy4Ys1FqO
	 HNGy95Kt8+1GrADGXCA/TCHrSuNWfMXZftMy5k5OWzFYeFpZFSnQphPwvkbD+fLiVg
	 QNuJ7waI4EgHMvIN+gXdElAbeJ49i5c3o06CUrRBgBag2Qb0YYnHlOFXzWwzYnWCks
	 JUoO/SBj01ZSX3FvCrblHybkiAlO56mYrJ+1Bi5Ao5XCw1stJPqb6c3cOcPtzivygY
	 ScTVMFsnWx6L5XgXQxcQOkc6iO/FQFEHL0N5pm/XcwhByUr041tjmbzi6//J457Moy
	 WNNAu6VaCSrhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C244CC3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049318278.29515.17969823177532285073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32b031e90aa5c8535fe34cb286e37cee1666ccbc3f81163ddff8d52d9b704ae
Date: Tue, 09 Jul 2024 02:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720493182
