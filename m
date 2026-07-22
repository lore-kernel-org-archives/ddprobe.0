Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542E341229C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784755174; cv=none; b=eMmr4ROFVzolIen4oAzwMhLCUeRQLVi7Q+XH+iY1CdLaoB0E4sX89WooRGdcxEaiNvhEMKlNb+xDzyFaeGWdRMLrtNeBfqSzWRaXUYxmjxoZzhFq/qK9pgSFSGTzy0o8rutJQRR7E4iGuYrCARfV/9wnIHsc76GSF/ldUxIvaiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784755174; c=relaxed/simple;
	bh=cK/ac/OKVULP9ZLJZzMogYipt3U62N7zv+1R3XIYcKU=;
	h=To:Subject:From:Message-Id:Date; b=IP3hrYnaOpJzjAm7Uay54gpThN4KJu85JccuB+E9kM2aqNe2FQx+ZUxYOez4FDvDrf65At9td96xk+F43exfcFw3dUCNPV3Lh1vVSNYdpetJqyU1Xnfemmj9KirWtEORvE8ZkC9/sXeDU4xaRSqur5tORhoRcV2D38wd4tNL/kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8CgPK+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8CgPK+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23D3C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784755173;
	bh=cK/ac/OKVULP9ZLJZzMogYipt3U62N7zv+1R3XIYcKU=;
	h=To:Subject:From:Date:From;
	b=F8CgPK+9ppFHeR9PEZ+tBzeKTBdn7HTWhXIF/hpfb7AN1Ll6y38eUmPWbsLklp+Wb
	 nOD+mJnImxF5ZxPo3bno3e8/F81oT83WUss8ty9vvvfmiLXvMKSEHBzispBlDf00BC
	 BJ8SbR8DyjTFkA5LKT6QokYP8cnNL0+bDDzRxWLEknVBcEqq8GeK1vEq/847T6K25W
	 F/y0qBVg48ovmF/5RgT+wNMvlx9qHtqpS0TqYMUrSKkGwOuF6243iLad1co3l7lFF5
	 prz5siBJuz8SYMCtUXAVHl54pD75FU1EKebVnvW8bqjuVGlZggPRFE7IbowFUV4RmA
	 otF3eqfC6yXXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E2C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475517369.16162.12791615782597838480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e3a726d9f23e9073464855f1d71f38973c28ad8a51293d1e77c9aa1815cd7e
Date: Wed, 22 Jul 2026 21:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784755173
