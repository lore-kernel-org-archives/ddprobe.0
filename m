Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E091E98EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786807234; cv=none; b=dsl2kJKXv2bT12yHY+yF4k30V8JiCCZ8qAj+8t4+jEmqGQdgx5ztiqM3+B+9JmQE1opa7izZEwcQNF1tHFpSp/eeD9CMXUJ4CWV+Qx3i1k9mI3wyDphQy3C7BO2RWUULqIdTfacK3mrs8g29FyMxmj76+mAzwQb52nulOQuAAS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786807234; c=relaxed/simple;
	bh=HnOcEARH04dpUmh7XINfKYFnGrKInfjAOZGRA7fra50=;
	h=To:Subject:From:Message-Id:Date; b=B4AlZPqhkbW6gQP1+LqfUvISSNhYcsOEnMnsMhcWUIjw7+byINOaNHw5ldtDFyJyUOj9aIDZg/PktWODMYAqc32IAZ9CPEjlSlmBGv7qha4vkI4JxdvujYuPxpk9klFyyD9hdbcafuVMPnNeEoHpe6XgsxFj4nqd4ZOV9jrkIlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nM6HUswD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM6HUswD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ACCC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786807233;
	bh=HnOcEARH04dpUmh7XINfKYFnGrKInfjAOZGRA7fra50=;
	h=To:Subject:From:Date:From;
	b=nM6HUswDCKEULF00rf5n7mX1wV2MbK832tWeDjCQpNazkHP5cBjY1V3Gau/FnAb44
	 v2fjuFijiPciMxJKUQicna/+m1HXL95WvOau8tXjALO4MOINY3WYPsR4MwQRNQ3bHQ
	 zlRiPRxXWSsxHoNyj+X3GGGNXGGX4qmBc9zG4VAqTT/B3Hdjq++yYSXs/0IbTnurH8
	 rp5/o+ZhVSoqW9Wsh8IXNkNKzB32ULG1Nt+zvQtvQdtLD4ociIjkGdM6wjTW2iwQVB
	 cMhpBV2zAjM/0HthDFvhnK+/6v0fak6Yu4kQXkgNqNHYjytdNmv68vSzGGHwBmNLL8
	 MHbXTr/+ZCzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA823C5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680723368.24852.14907699074920609865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea2d30c3d2bc54b1b27a2ce34cd34d123ffcd1e626694beb842f36af9204e47
Date: Sat, 15 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786807233
