Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DFA3FFD
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765685574; cv=none; b=okmI68UHMK67so+HttlNymo8mNov5RMGFF5WgPbxCdxE/pEoe5//7tA8SlXd/Lq9YNtLgx3UXO1/IW/fFj7xhNSDTdck0yKZVOgCfPpi4EtN6GSLG1RGAe3SdayaO0RC5WNR+/f1ZfTIFaGpbYI01wLKQLTtoKX+KUkw+o8kVQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765685574; c=relaxed/simple;
	bh=+ICj9TskrEi+cVM2G3jp322hrAWfquYPB+W0PdLgGsU=;
	h=To:Subject:From:Message-Id:Date; b=DDuSOTi5qX4FrXhxauFUkwdom7F8VW1z5Lf+miiwaJDxjaxNTngwlaJksz/ytX17WAS/lq88JZSkPNBFnyunp9jMbDE4KbPKlfyySFNF/oHKjLEScQ0oIKljP6EmOojrbAGsOn/QK+nGi2snHZSacyq+50u0LlTPXlxrictXVCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an0PiCkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an0PiCkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C72C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765685573;
	bh=+ICj9TskrEi+cVM2G3jp322hrAWfquYPB+W0PdLgGsU=;
	h=To:Subject:From:Date:From;
	b=an0PiCkTuJ+ZVReHOrTTzzxrhFhjpi3Fpvp5Gt/u5UtEwUbIJZb1PVrYuY4dQSTmo
	 PMsBHZMSXPmXnAZQ2/rMrj4Zv8Ltk9XgK7xcqkzcBz8n9a7E5hosBnDXjb+xag+ViK
	 GPWq/ois2EWVp5N6VNqhYU3MRImVg4bNU5nHYVjHWIgVmS4d/RiGz+K0y8Hr3L8SRp
	 Uph+4t1Unl9EbljMFU2bPV3MVeZTLImxLM6kZrCUEIzoRH5dumg/jHa+TjP0UgxBmV
	 Z7Xa0HYcm0f8eUZCSIuVTa4C2rsFytMcUERVlsy49InNxFpMHeqdcuuSa8uCILpyt5
	 pc8q/IaCzt3AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97149CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568557358.22788.4077620569741893526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe75dd0bb954e2988c3ff9e4ac79ddd9daaeba13d2dcc4a0848c5d09218d9dab
Date: Sun, 14 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765685573
