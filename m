Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380C81C8603
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781968594; cv=none; b=NnuTkLTyYs9RouWt759t4+vzUdx/hpCI1PoigQTy8JFt75YB2IvmRudwQmCkQLJboy5F1/mcLoQ4K95zx89T2EJY7IrF2PA4L4J0azJ2ALnlE1Jw+vOjTMxU31vur4ToJG29GK7pgCZHzq3G0b9m+4vzCjZPm/13pU64Nb/6K14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781968594; c=relaxed/simple;
	bh=SD9rktAHOirrt9PbeTUEzeDdQuhDD8ZhL8eHRsurm2c=;
	h=To:Subject:From:Message-Id:Date; b=G8UEivvktFVpHICFf6R9mk6neXvTg5KHRmBbP67ig7NQuTnwwa6odMU/HvZLqVArAaoU0bs+mRuXGnp3kzo3mZVfD1NSgzVeG29LKniFZ3jJukhnAdgg5q0u/pAfd7X66M/3LFnHRkodyvziEfaE4bO2nyw4MmALqcBiezhojgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMpreh3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMpreh3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3736C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781968593;
	bh=SD9rktAHOirrt9PbeTUEzeDdQuhDD8ZhL8eHRsurm2c=;
	h=To:Subject:From:Date:From;
	b=kMpreh3f4TQS0OlJ9N5tYCQeVrXdVAlGd3md2ZuWdimHdiwuH49FgQQkApij4n0NV
	 xDHBMLfaeO2sbgTBnaytNTyeYDm81jvZJ2v5/dmiXfPQTaW8ntFmlMcDGBmn39g3Of
	 t4upPIQb63pBu7TmRT/SxCA8kIR04M5q7CWbHVDEBtHm5iumS1KgwGd6VRF5npKsaK
	 FiOAxdS9DOLVml1SvBwcpkWlWW3xliQhKh7MacFwQyVhOkR24a25sWPaAZ3ZBL/YHf
	 X6LVUwE+y6pxoYm97JOzONwFpSFevmypKmEhNwJITe79GMbCVqzIHOOEtCuTQyd3FT
	 VQ5XSjJAvkxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA020CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196859370.14726.17103678736339654852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b212b033144cfe9b5ec7f9518661dfb291f371d8607280266e0bd26011a358
Date: Sat, 20 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781968593
