Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9862727FD
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779239434; cv=none; b=Wih28rLeDVPMKGFW9JVmWKdbTOsqtDlG82SBQqVLj5VGtKDSzFdRBA0icmjQmOGOKNvsXF44swcV832WWKMHBpVi8h8GAKtwOM0NPoFs0sfyQoJKElgFVnaLc/Sy97KUmMoDYfZm6R6O+4pwZ5o3qkinvs9uD0CIK01tvqmLEJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779239434; c=relaxed/simple;
	bh=fXJD/6hyhJvENooN29qmAghO9DygfEZjY9WhextUS08=;
	h=To:Subject:From:Message-Id:Date; b=TGFqsK/F3t2g9Pd+4iCB9Qe3gBLo94ky0tpSU2HtkbM0AJbhXVru2+HeIynY0CaoX/VhJgyEBWzHkgxxNeQlr8NPCi1GVXIt9cxxEdLF/BAroPC7pwXu6KKHynFC1MIartK05m23PaOXJ+tFUvs9iuzLgHp0Irz97xF6dFaPlAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIDuh7JI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIDuh7JI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2919C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779239433;
	bh=fXJD/6hyhJvENooN29qmAghO9DygfEZjY9WhextUS08=;
	h=To:Subject:From:Date:From;
	b=hIDuh7JIqPSegCyJgfwxrhAb/3xJ5ordWEvIzeyxKZn91XJWmRW2z8AojcNXbVeo1
	 p+vU2X1u/WHelnD6bZXk/cmj/3WkkorxqrzeXi1jyldwKsMYwjfjsvt8gg2WFyUz5c
	 84SR/H49OWW4EWdj3tJsHg4rTozJlxyQ/HQqZgxnimqlI/KcWDJAymrJkorGITBpr2
	 N2PmdqbMjO9rSrjt1W9QsvPthrJzxBTXk1z7og2pK0EFby8/V1ZHGgu7EqkHntV1sq
	 f5p5ouhuK9pnCWBh+f3SRG0ZlOcBTB0TTZCHxDYzgjt9mCHRuk+iMlbVjSL5xVIT/B
	 GdinkYg+pbkYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5EDCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923943368.1182.6425690619380320723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb5142c4c123549e7c729e0fcfecfaea73ab3aa124fdff565b1952c2792314a
Date: Wed, 20 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779239433
