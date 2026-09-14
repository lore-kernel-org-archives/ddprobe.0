Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8039A332EBB
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789355434; cv=none; b=gZsjIYMPmGTqWjstXUhw5aS5s7sIKSc71iQakTNrLeRJcIichDfPZVi/azqhIsNx+lFz8S2Pz6VwGXpGvmVCYyNqNo+oKLNa3ChQWi84UYNTF8fQpfRIbeYmMuRvjvtgjzrglUk9HAMCYUizBbdPS6tYU+cTec0z/+43CVaS+wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789355434; c=relaxed/simple;
	bh=2benFAyV+yg5M7N2VMjS34inRcKqI/hEla3cbtZ/R/0=;
	h=To:Subject:From:Message-Id:Date; b=dwlQ93hAAWfiW5fofWTYLWNeBRfvvqPsUsS5APTgtUr3i6MseDiAjb7C1mMFPcCzIJPXEolHrNY3eInZO0/tcwb0Hqwoyr6nbbHOSLXXm9butmsryoGBGGGnOA89kiNfDfXCkoTSC4L0hhr1IRRcPU+7c0dHG1M4jkrqAb9yihE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uez+MV+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uez+MV+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3DAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789355433;
	bh=2benFAyV+yg5M7N2VMjS34inRcKqI/hEla3cbtZ/R/0=;
	h=To:Subject:From:Date:From;
	b=Uez+MV+TiOm8IDQdGN/lWl9tFdkNsyRlRJ/wb/r7wy/vAkaj7hRVQl1WZebdJHYSi
	 WoP2KOV7GVR5KsLyF767gt4W327MDX/itWsn2X9s4fNzUcgPUVH9kYa6EbnCmAbmsD
	 238BEHpnIQX6ZjTlsCPKQhwSZT+X6x/AyjrX5l9qzZNm0SBh8E6XEUtcGD5nYq9P89
	 jblRq4w3XlakZF8TbTULbOETR0QDdYiYLLNWn4jGYro+qqou+rzk/0QNwBnDejPDtI
	 oEUXVFt4/oeUuup0FYaOw3r4FVnVsIxavTieAkqicsHkKrWADQHAKBnGLS8Ryr6RvO
	 /iZkfkEag7y9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98DEC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935543368.15261.5679135980023556324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9c8938942628f802b9642bae805f99a87a891b75185de4efaedb9528deba21
Date: Mon, 14 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789355433
