Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1713C54670
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721807754; cv=none; b=ho6cSfXxxVlcC/vtLDGK7fqq8rkUu2Z6HcY1+szMuS9kZkVA23YIMSh77juQ+xl1KffzFrXfiHYfwI01u+sNYAmXN6v0+GQqpCPP5nRL3xhNeYzB7Mf9yEvH/ShT5gCfDMj8VxEEflV/7hR8gOdImxnMNN8+ay4JOtxxe9YZSyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721807754; c=relaxed/simple;
	bh=7kCKfndiPsaIWkmx9mq/z3kvW8rdVqLA5uGe76/X4Hk=;
	h=To:Subject:From:Message-Id:Date; b=UTRjgDXlgJKRLKSZ70inp7CKjUTvvuDzKu3hF3/VfgntvABuV9Y6IEdcXSHDLKuhyCP+I+RQ+1GMRYf7tYz0MQn7s9co2LE5tnKKba9ZiUmGpTI+JyYv2CQFcYi5j7SmzzSW8UQUvmZFMcpHKehkcWpdfmSnUThNuQx1X9rL9Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiBtNvCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiBtNvCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A180CC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721807753;
	bh=7kCKfndiPsaIWkmx9mq/z3kvW8rdVqLA5uGe76/X4Hk=;
	h=To:Subject:From:Date:From;
	b=CiBtNvCNL3ZrGwasDUEP+D2WGnbBaE5pisQimNON5jGDzmYPUH5Zx4SxBRxzl8UOe
	 JRX65qr4WV3mfTv4ieIed0vlWRh8o+l7JjflbEcpmI2tHGUwI4PMPEqc4nDM0Hpye4
	 0UzuY3MOsXkFtA4p9R31GU1GSd8lIILPXOM8oA7jd5z7ZXsgVb/gl0HALbXUIttda1
	 n1HExocy+nAcBWCleuIEW3psL/SD08SDj6YY+tGI0lSpVSpB1y9bodX7hu5x55G2xM
	 dcB3iP7VnS1K3Ppg0s1S6jmmalsC8V8uXKRNgItPcDJpCb/Eln2L6xnmu/mtuhm9pM
	 EgtddXsCMIqBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93039C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180775359.24521.12798807877025554228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2594d54847873bd252694f39076f3bf64307ee54fa9ffda12d1517d4696c82d3
Date: Wed, 24 Jul 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721807753
