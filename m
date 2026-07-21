Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8613BAD88
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784622514; cv=none; b=gl9GpdxLhTtGu9ZTUh/ExyArT5CPh7v+DuPXKeeViusO/sFMi36i8AQjUENnCR3LDjfXi0ubBjKAGmCycz8sTahssimvzKfh3Jm8pezjaOoOc8lWt8S9X2n3ewBqG6gwTPunKTNwJOTaDsfmScc61q+61dbbCYKL0Y8PtMN2p/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784622514; c=relaxed/simple;
	bh=7B65haDlVEazAKmp1SX558Uydmf++k9avb90P8b06dU=;
	h=To:Subject:From:Message-Id:Date; b=a91+Bh6J7DbAsn/hah7HDjq6m1Kqjvm1xatirFNsM6aVufgmRSGoiWCkFbszUKB9Rc77O3pkGt7YnIha9E8Q+as7pkPS17XCt3GHoMt/tYXRN9d/Pp1y01psXskF5hacyV+HsctGZzyv+ktH+1zNrG1BISD3C33HBa3CJkVWK+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFT8DbBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFT8DbBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81F5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784622513;
	bh=7B65haDlVEazAKmp1SX558Uydmf++k9avb90P8b06dU=;
	h=To:Subject:From:Date:From;
	b=nFT8DbBaQQHAcauIkWPr6zlI5AF2RNQqX1WmR9ktVS6Mj7OFHu/PG6JeKHTqj4ewT
	 V2rIy0cHG2o3z5WhmrTAZB0yHkwEuZsC4lRxNJT5DPNC5Pgb6FNK56r+c3Ge8yqKUO
	 jquA22bjASXxhIZg1QUYrAfdR2ATCFSvxksWj+RFBE77yxzXRKIgmp9vNr7txUHkQS
	 n4qjdT/uIeRQ6Vi04KOc/Y7meBRB8NidT/66n0Dd+y1MbviTF/ODRu8bRsxzrarTNi
	 9eKWSNwhGklWwr35u0F+3li+fYDxIwPHuWwPkGkCiRqPBMAyDcNy1+eyF9XSvWiGrl
	 T1cG6Piv94+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B59C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462251371.4011.1561122242533575304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5dae03620ee72d9a511a84c6bc82987cce439bf489b4003bb73e3be5c07be88
Date: Tue, 21 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784622513
