Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4C71BF27
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713079163; cv=none; b=hr16S7xmiKR5mzGJ7Kb11roJspv3Lt8xcfzegLjxVc1yuI3HJxw1e/tIeoJSwmhon7EK0G1Hyf8qGCFdM+Bqs+i2n8+wzCaNnL1TtpgwGxBPsonGKEz7Hm36DDr7rdeXvtl/o4LoqTtizMIKS2AJm25SanwW2WQzj/loEc0Zcko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713079163; c=relaxed/simple;
	bh=nUs5wPk9t7Eqg4FVEoU+fK8CZadbg4fcEO0aAGAe5+0=;
	h=To:Subject:From:Message-Id:Date; b=PKtk0QNCYv74QzkLFRAx6L1z+4UOeQB+MRhynBidSr1iRYMj8BW4p2c8MVJ4AXm3yhDeUNOgHjeBEweD1tiT/UMFWaznc5ojDQ9RXUi33fRV/S3gkNfzAgfN97645ZzIjFbx3e0CXuDYUYOFntU5OR/baPMEfZQyq0oguRZzECw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnzxCC1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnzxCC1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D52C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713079162;
	bh=nUs5wPk9t7Eqg4FVEoU+fK8CZadbg4fcEO0aAGAe5+0=;
	h=To:Subject:From:Date:From;
	b=dnzxCC1v7PJlxwRe6nISWrEymDdbUeXRxn3e53ITSMZsM+XEUHM05KL9HdCIl/OGO
	 LWbZF+LqiSd9rp4U4GDGupQfEpuCKzVrosc2aJsFtLs34zFHl9LVzrVVK4fQqRM0iG
	 c6najXoXNJcVaxytXbXX2mSnVLiJNOyX0gKVW+zW1fM1dxDnNl/J5hHQOFbEJw4E/p
	 Ckq74f1E2PQGO0B+zhRfKnyrxd7woGRGAXowHp5sjSFoLPv+ji5owqbs+DZRW/Jy1H
	 VMLs13mNbDZCO8RLOkBIV3wdSCFCgI8OP59Vny8VIOafkj3f8vgNL7kgtilJ+hlp1I
	 +P1gwvhlFmFbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4307C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171307916277.29633.6971786595657139119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4886cef19209c2bdd120c32d4d4583faec5e76182c62ca4579922dff0e5695cb
Date: Sun, 14 Apr 2024 07:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713079162
