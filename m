Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475AB1A5B8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787469634; cv=none; b=g2sbqNBIx1yJkkxOGh+xz5NdELHL+uPsvLRwYnn3YVB3vUsqjILrdAiGrfg1DPFC5ELAOodRk5f1dEQYUlZTjR1A0DJRL7iEtptVCTvoXRaP0GJsmBMe7B1NT1bGDuyNYBSK5qsoFVRnPdcNbo7Fbi5wYQsw789uQgT2q43J164=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787469634; c=relaxed/simple;
	bh=TptVD06TJwSO8d5LLpO4frTeUZIqLv+kV89gLcbIhXA=;
	h=To:Subject:From:Message-Id:Date; b=fO2r7NHB/HGhVoycRvST0YawVcos2v8pUzl963ZCe/Re3jGZnD8PQSTDkn9NOHCyZotl7fOgoY74cu/Oc0gI3/nFJxdHrs67LQIy3WK2n38vRTEd7G1wV8sU/smx2atw8l/IgsPhQMRoxKcLgGoxhxQMbCp6KYw++0JGx6TNJ6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVdnYHTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVdnYHTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C9BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787469633;
	bh=TptVD06TJwSO8d5LLpO4frTeUZIqLv+kV89gLcbIhXA=;
	h=To:Subject:From:Date:From;
	b=fVdnYHTkGQM5gqwBAX5En5j+MDnXFuMdBTeDRhMbXJL+3fRcEhs9PLW7wo5NuvxPt
	 LWWM4+QFmaTb424BWNi5Sk6PDDoX0M6FTyNGkmAtBXADN0aZf15aHXQ/Qj+Sf5Wkyk
	 MceLSw7AMQwZ9dUXK2XeFUmqMVV3lVdMe4NvKQVWLAUPNs2tMyen7tgX51kOCSUHY0
	 DmZet3KAdtlNx/0f7DpjVdwnun9yXA6O5obehdEhb3yf4m8A+4RbXXyYYMeDOCOy9M
	 D3b9JQVD1ZPZp4uLZSyiF0IryfEKNEq3rqdA7xrg+ofB/59UPapXnOLM4AFAxdfcaB
	 6ycnc5sp3MoVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31B8C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746963369.1546.12508126157860841062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e63b63c456eede3019ca7cb8c376d660401182d6d926f813d3407e96f4973e5
Date: Sun, 23 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787469633
