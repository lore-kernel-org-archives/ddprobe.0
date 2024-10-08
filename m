Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215F82905
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728418554; cv=none; b=TNStVzojoCPhbHImPv5TbP8Ylgl8XI3OtYHZgMsL5TVSbhFnkFF+YJX0Pcv/MNFP3wg3NTukILsVRrgTSIKE5fl8OvnUpFG4oRiy5yOdf86HeqgO4boOP4UGSTax4cik9fLaou8jE0+gVD+phGLhh1iNv/E6vneZg8c7cpZSV4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728418554; c=relaxed/simple;
	bh=LbLdsmXz+qde9gSVLVR/MknPL43HbqO3xnIsh75M1Ds=;
	h=To:Subject:From:Message-Id:Date; b=ro5VxB58B63D9PDbow8czuUGKtoSnDuj80EamHZKDCcPZWOCBnjBmQH2Beq83+LZG8hLK/bp3d9JyTF3a+bj+AU/Wk4iHSeiN4uIDOLrzVNGi8by5LgcVFqDhjrGLWyR7UbR/zd3BukWZ1KqNoGZBCrd9d+k9JnUQi0SBMkTjx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVT4FSBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVT4FSBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A517BC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728418553;
	bh=LbLdsmXz+qde9gSVLVR/MknPL43HbqO3xnIsh75M1Ds=;
	h=To:Subject:From:Date:From;
	b=fVT4FSBxJ7LsQ05FSnE7YUYTFiY+1H8Gwz77iT+uN03f7Tpx13bjQVB6yD3ImKnBM
	 gIIf5ipmDlL1+ClPE0kFnVI+0NuvqGLp6lhUvU01S6/QSSRp9Xg7AMkeXCOYPRV5g6
	 ZYIScwPO/to0kfsr3DCB39ip1QzeKqK756dDEcBKxF/X/EPcUSiKdVagrsnHhx5uNm
	 25cfrGGvPwZebZcY08dxY7CsYoFEr31M4RGU2aE/aHaeTDcy83/zIJiEaW3WPtguoq
	 l9o3qPxWe+xRLJbDQDiXKRiEQb3Cwjny1QyxvAiQISIBJj9iK4s0lUiNlWCeo3QVUk
	 py9aNW8vjnRXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971C9CEFC53
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841855360.30507.3053652950845547190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07a6a90928b6603803e383910f9fa89a2b2bd8ab324038a410fe5b04f852510
Date: Tue, 08 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728418553
