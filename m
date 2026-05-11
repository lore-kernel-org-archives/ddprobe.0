Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B438F25E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778503234; cv=none; b=UNMYdTsqYZc8pvvNGanUOiZ8T1VV9/2Qn/NxJByQCv9bVl1vC2oSL4v54oNZVTd9kRXy9LSdElEM8gjaLEYCXSOun1jP886YwzNrkn4AzMqDCAVYODLGU+hDFqTisakSj0/5Ir3uZMQMR5WVEigMwdam7ovZueww+ueUznomBf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778503234; c=relaxed/simple;
	bh=NsKJoVBav2CgkH6Tt+iXogchVBca7TbnGZrfQjh2i0Y=;
	h=To:Subject:From:Message-Id:Date; b=UbkC+ONZQOkYmRq5MuhyRJs20WgCZhHDw8IMnxk8TmkB1dRuLgLH6VPiEEVshHtapiOMvYDp4CAY8kws3Cmc5ebBdX59weOxOmwzT3ANjxpUGU5JmqMPWAGcBvZX6fbepnCsfeY1RFY/CXOCJ5t2X/Sr/lhYMoMvb/9NEhjBE9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzx4MxXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzx4MxXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E07C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778503233;
	bh=NsKJoVBav2CgkH6Tt+iXogchVBca7TbnGZrfQjh2i0Y=;
	h=To:Subject:From:Date:From;
	b=qzx4MxXAymYx4neWbFp4o0saoTQCzIfy12BWI5d1HoDAcngSvsV5fbx7QTMljyanG
	 z/VNrj1U83isbDiR0rmbCiTLDS4oY2Vgy51whCNqUvpV4B1TwAx37vS6bHlQaK4I09
	 o0csZ3GgQzfQtZJgvO3Aks/949gzZKrDCWhVabNrawNAe0EB2NiKkvzAY5nIDaIblF
	 HKunAtII++fAXDVVPc6qHVVVofUAIjGFLFZtGLEK8EECeJGwaImRJ+HLx8LNIh5saw
	 c5l9mvlodK03+TOtDgUHG+pKBxNHMObvkH5NrlmtXpMGDK9mZcRLMQPMR5hzulOa5J
	 DjYEEzvHUS7Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D3ACD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850323368.23576.3943614826373161862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66800dfb771d932de41f07a974cac22f8ec1522b47433d21f61faacc66398f66
Date: Mon, 11 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778503233
