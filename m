Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC194CF461
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792282234; cv=none; b=QvK1vYVRBH4mJwQ2Z6gnUHK3pcLZjRxFjkz/QEFjuKQjPBltTfsyeCKkxpRa0FrPWK9DwWp8P3dmVVP2aYwG1mCnxEb/xSorx7/HrkHSgcG2mRO01XSiFoch1vRp1BoSZqXlToXI6Ft6kOozBfWew07I52jLRjlMNO4V/nribZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792282234; c=relaxed/simple;
	bh=/9CSpSUQvSpUr8omPypWubxlt6tHnd/XOpsua8LzJxM=;
	h=To:Subject:From:Message-Id:Date; b=BqYteNbgJCiX4mVuVkxVtpUhwO5FptceVu0pSPpA0xaN6tBDNuBvm2lo1Na0ZfsyeUqnLrEUdq+7kKHdMj/lA+i9//TQkigz860zaafb7ny4jCFaeLT3LcdbokbYuIqNUQdFP70MkUVehBL3zSWEvM/PA/Ez4a9j2Lqw40caSgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLQSwOEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLQSwOEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAF2C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792282233;
	bh=/9CSpSUQvSpUr8omPypWubxlt6tHnd/XOpsua8LzJxM=;
	h=To:Subject:From:Date:From;
	b=bLQSwOEbVm6/+z4Nudj10/jvWoC83RSdaAAiNQ90uxV5kj0ELR173gkNr5Nuh3CRh
	 +KlXc1ZWL2IjaNPKsg9FpPFufz2ovfqITyIS6TdZVEhw+DyUbYMNg325kIEFZzgogS
	 uQcqq6wUJBfszkCrowbOdasEce9WUpjZfmuSHhbJ2zPDCBj/UJpziomhMXKKuBXQdU
	 hJCbPbMM9BVUcAZSdieiA190ir7uAKacI8tL8UBxUlYzmL3NeipFkcaPxvY0Qa9LmB
	 80iLnvxOIjFYt/BylJMgY4HJmw7gOCpPtCUmYMyW/Isng0F635e02JAEYBEGin1jmq
	 CdkgQD9Ip2Rvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36FBCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228223371.30781.13135666429827046154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7213ef24cfae4e4d8e13c0f671e4d4d59f6e31db35fc261b7b42217dd4fac771
Date: Sun, 18 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792282233
