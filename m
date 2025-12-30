Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C362F26C39E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767094433; cv=none; b=t9BXOMPUjE1ao4UemusXrq0Ng4BSMGoUNN8SMQdtUSWWu/zF20qf+u4EBM79OG8xUxG8PP4way3T9YHibyuq9Zyo+/R8Qqk8Sf14DMiGji9EZk3exUnH0bbNyMbZ/Kjll4Ih4xU16JdkEkJrR2SqOkvl5bJTyZYESl5oFJhzyy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767094433; c=relaxed/simple;
	bh=8oV51M5J35+gsea6Rt2kHJHLHLj+dvElxuQ1d9zh+qM=;
	h=To:Subject:From:Message-Id:Date; b=TKDUpE/ALqGbZq5sCXo27EvdQ19oGk9QPzEIJ8koRIui0UKxbXT0shLlSfphsyeFiFzv57tBV0rzhZtvJC1J9JE9/0Kbq3ITfs6Dn4inON66588dGKkTFDt7yh11rwoK1jXsRhfSSypHEq52RzeRMTw6gR4EPaU7Kxfpm9njnd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYJChlf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYJChlf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A448FC113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767094433;
	bh=8oV51M5J35+gsea6Rt2kHJHLHLj+dvElxuQ1d9zh+qM=;
	h=To:Subject:From:Date:From;
	b=CYJChlf6Biwl4ZXNouLWjXqP1SRVlTQtpQjtGkoQUHvyjM/0EdyurZTg5DVDTXb8m
	 BjUVtPvd8JizVedJDPm3AWbVuevY4jVsNNcG7IE+RsNMFkPeEHsrtVmkxl5CWWMejm
	 9dXIM5pMTU+eMkuLbyOBr6XN9OudTXJfKHE9uWu5y20TuKBZSuN6SOsNso+m68Fn4t
	 b9mkGUsx2AGLnjV2i3+BuXrwr8eU3oJilSJctMgz7AKn+0ECsJcq7YFGtH6jU4C4Db
	 VcgmY2TokogGYUn+7mRVbymTO+UEMlv9QDk8aJmA8jNgVJ5BcgOPsaG9fEoTakzrID
	 mHxjiVdYvcQjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F05FE95A6C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709443357.23905.5248157722308615005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d958aa2c567b293b7dd6644c3f76dfc925ec049a65840006dc30f15c28f9839
Date: Tue, 30 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767094433
