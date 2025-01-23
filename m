Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F59214659D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737651354; cv=none; b=jFIglBsc3BI1Mtz5Hr+a2Nqfd4hK5o8C4C3ZQlodI9856pj/b5f7ACoDdVt8Dt++d5hoIWfDaiFfbAAp3olQLBN4KFWZsaUr4rLl8cQHGi51Ree6OKeLR/E0bE/FLLB148CSVFOW0f51Ea/Q8h+Is3/gZ90vheaNdX8GODKor5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737651354; c=relaxed/simple;
	bh=bPMkFIOTbRLQKUvKcPDdhg+1rKdDZ8eB2dx07bMhu4s=;
	h=To:Subject:From:Message-Id:Date; b=iYfL7BClzu8/vmqT9sBJeCxkT29s3MnQLj4oBpYWxWjIEmh0ZAEdyg0iDa5BI/4F1GIA4COGetPJx7Tsk4rZPOMI/tjj8AI+AIE4y+bViAwrPQcg9O8t1axj3i22irZG/BJVj1cS3i7vEJMpxBzWo1f3Ng3BkCF9gJ65IXJbidI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUoeigKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUoeigKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3999C4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737651353;
	bh=bPMkFIOTbRLQKUvKcPDdhg+1rKdDZ8eB2dx07bMhu4s=;
	h=To:Subject:From:Date:From;
	b=CUoeigKq/YAWDUTzCOIvKUVIDl8Yfcqun7UGzaLBsNHl53CrwZY9kqZx7CarPIMEM
	 HhfhRt/5gKLJ8po/vXqZ7BmLgsBBnUgw+E/cNLt4FEGT3c7xDuaFck8t08kXPOIQ+2
	 +fG80F2aw/Y609bXM+z84uwMjOol/dWJ2O7lMAD0lwMhIojtfmJpRHH5TysV5YPjbF
	 LL0cRHqu/Fpe/XAtXn2veOHWPwsYnRkQRYaz9uCCGSmj96R2N0ew9ypK5SJpxtBkgt
	 6NGI8fBZtDbsNzRHqoc9TuD5L/LxEd4GXmjd8oi3DXVsqsU603c08sXoqEcRcFgtOv
	 5f1X+FRPpXsMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8D4C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765135362.20768.1417892671536179480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3d910e3eaf29612267d948fb2404a083b59371519664aff9c40fa19c3cdddc
Date: Thu, 23 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737651353
