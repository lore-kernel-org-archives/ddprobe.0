Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788E0477E4C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780584274; cv=none; b=Lv6o2dTrpVai4t35ugITlSDGEdrDGDd8sFoSOdSBEg5hWhJuU0uW9xH878Mljhjc6J+wjsxDOYfgd4cmuhBSr8R7vQvmdu5c9tqli2IxTjZmqhcrGk3NCURmfFqEgmqg63U0p3vUkNmpRYeUBYRP4twAqe2O+jlEu3KF7nB0NU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780584274; c=relaxed/simple;
	bh=jGdkd0kpRYpHH33r3Mza+p98TECgacw2wZFh1DjliCM=;
	h=To:Subject:From:Message-Id:Date; b=Y4tqJa468l6xEDMmyH5thXYcfiAGLvBkKk5uArDtoIwnB74QTA//opjNvackEB3STRGpnNmJweEpJbmymDGBuzl3uSo0T7urRnaQS8iKnDkTLCGzQ5Sok4QSjmfX3iaw9fc/agTLArK0b9VeuMY+6ASLsz5UPI9YF2hPCv7Uac0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVA7cmy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVA7cmy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A41C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780584273;
	bh=jGdkd0kpRYpHH33r3Mza+p98TECgacw2wZFh1DjliCM=;
	h=To:Subject:From:Date:From;
	b=sVA7cmy5r8ekQYcyNCTvIM5bIu8d3L1w1OmovTqoPx7HjN1TYmPMgm98p6QABI20S
	 KF6Z3Y2EXSSL6MSyE1gY+At8tlr/LuWYV6isxGw0/9F89rn/tuYnTKwxcke4NpJIAy
	 GixzVlIXkQKfYcTs/3d6h558WHPt1eNyTD8vMoiDeCAglt/bBT/RPai/KlSxyYbKZQ
	 5CTpP5zeXu81HQodwGfY4+YmSmu/v2WrLXI1MHefpLy2B7xkQ53l7rj06Tf6ObD4Rv
	 cw631q9F2trjs7E0P+FswQdLUHxZcsivXk9emrCITq/s85r7vpMyVHISsy3O+k9Z5b
	 EvUs+NlXftkow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD095CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058427370.4262.3387861913362761705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216e7ef1e7502972167e9d3cb7c98900e39c3702f68828508e9c9b46a5435f43
Date: Thu, 04 Jun 2026 14:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780584273
