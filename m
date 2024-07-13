Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600E11773A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720841963; cv=none; b=j1w4UEWVpd7TjCAa4jbhDv1x8epu16LFaWCzRa/f9fWs2a42Y99YIHVrGlXmRjMCXidC4DNVM38ESkblPnYPJ4blQC3JVLkv0ZBVz3P2fjE1NiquF0I8S3RLLppnUJih7f4OjtZoosb/AdfKEGlC/PJaKRIf0bZTPokyXkFfWP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720841963; c=relaxed/simple;
	bh=7Tx+owJIVD9iac0skMc1YcH+1+ssVi5tGXS2cLPu5HM=;
	h=To:Subject:From:Message-Id:Date; b=IiWnwWX3EhlQEfoOCQeLUK41o4++z/XlsChNCsCo7Ia/YHMCUL8L4uqS7j2uyBy/AWueUnMMmykd5yCSznq+pdhmED8yTniTtWJ5a2gQkfIuDhfF+NDlfICJB2UxbqSeCjKwokVatLsI77p+by7Akgo7FCNzlvHLkSj8ca/OMAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6uJg1mP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6uJg1mP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D967AC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720841962;
	bh=7Tx+owJIVD9iac0skMc1YcH+1+ssVi5tGXS2cLPu5HM=;
	h=To:Subject:From:Date:From;
	b=J6uJg1mPPesngT2yifLxgeKXuGyBxAKXiHf8SZOx2xPUfLXH4u3gagVkTEOmBPtMp
	 3G9G+19Wvh+aE9DHTk8xHQRK7wxuHT8DlX6FaJmrUH+FNjYGXX+x2ht9iY5CQhtHhu
	 o/C/hvL6A08CTu0otgvuH4AiwQBGWC06iDNSdCI/Wc/foUTSYTE8ifAk6VUrnnEu3S
	 sWlhjhbMVKTzHjXiqqkVLlru3b+KlHQRUXkcZkj+4ragnfzefArybD5y6oeHBaj/Xr
	 Ff1BSZ++jJ/CWuMPAMOafED+O/BVMPQsnOBxAGvQk+UAHqdGC/2rDmRQMSxXUBzEp6
	 Ujgp4EBodTedA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A7CC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084196279.16433.17620516283793483933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2684a438050dad61cb6f5f1af02b57cf2b93e73b3d7ac9ca2eed47fe77aaeb23
Date: Sat, 13 Jul 2024 03:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720841962
