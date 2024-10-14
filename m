Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22182145FEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728887754; cv=none; b=BbPD0ZgDlpZ+jUedICjs6F39oQBqwQ/pmuP01f+gixD6R5vPPTZzMPPq5V1IKr9FH3mDTiOBs+qiCfM6xmYLe5rSZnFkw8zf3ZTAU9k4Qxw3cXtAPiDCpgmmzxstLRK8YpavKHcH/KWAdD3+td0DylAzA3n30k5NFc8U5GOFzz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728887754; c=relaxed/simple;
	bh=CxA+mhyZWHBX+GamKCuqHNHut0uCbV+LA4ot/WCA4Qs=;
	h=To:Subject:From:Message-Id:Date; b=NKRdfCMcJphZUSgVr3Lda2ew+1TfolWNhya6t5UrcUGGhHIwBh3KVFXI9MCXCSktX4PP09uo10t3CxNPhnPlaY/9/fJgjxIzIafOGGGen7S6Xs9IgHuMB5sgnF1DNGVA0pFLHutcrVJ02A2Hbl2UuOdI0OGtmh7Td3LgWJMp1nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBZnNcuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBZnNcuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF3AC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728887753;
	bh=CxA+mhyZWHBX+GamKCuqHNHut0uCbV+LA4ot/WCA4Qs=;
	h=To:Subject:From:Date:From;
	b=kBZnNcuF1qbC1UNALCu0rEGqPyDRMbJXziOdTRO40IR/yT+Jiyh3wUQNgpCP0aquk
	 vTCHHUJzKyARhQb0zhNkLV06uR/Ajkp67z7vF/bthRefhIjy7ygzxClq+Fa849DIPu
	 NV8Z0DeNS4zpPX2d/bjxvVIxlDn/cwmdYYYmYY4N7Hph79ZcTf6YtaaYWrNZgxMqlK
	 UwzN94lH31+cNwWPsnAeLBOvxXuioIOcvsDaDE+0wE+jCs+335h8lP1lsumbhl0MD1
	 ARhHTdMP7Rkam0iTaHVHge4Qmu/CK9AYVj5s+rPe7kPx5HqArlJPqKSmmAsRu5Qmmh
	 KDY/9XeFyEHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95411CF2590
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172888775360.10285.4581832970027367247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79f956edacb9d22278992fb0aff53ddd6efd5e8898efb37fd51319184b8c494
Date: Mon, 14 Oct 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728887753
