Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60DB31327D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773525293; cv=none; b=kltapVWapwOFmO6ieUvs7xcw5T/6GXD0RxlNwTq9IrmX2dOIsRCtjcK2Y76EOQZU8rSkyzLMyj6O/DZ8a9rdexbTpTcszYiJaMh0Xe6gT6snIzjJ8wkC5EPYSpqEO1tJtEH5qC5rG4089uxT3TaAYXRn3c20Sk3nrpvIjoKjnQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773525293; c=relaxed/simple;
	bh=GHQr9NkLAiYTDW84G2Hla/mANVrc3W4qtT2m0NihB6g=;
	h=To:Subject:From:Message-Id:Date; b=gNM9kqHZLSHCb0Q/q8s/m9J2KcRNRZTg+htnDx0LxgtJ7/9HH8+nNel6fNM1RCTYTEexfAUrzx+WLVslC00AioT9vNpkTUspfAU1aw7PhTXFAlGUighCYpni9hjiHvYM9ci2Frc/KG/AoZYxtTODNzbY0tnXQwdivKNQAvWs7L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ub9I1b62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ub9I1b62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7017C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773525293;
	bh=GHQr9NkLAiYTDW84G2Hla/mANVrc3W4qtT2m0NihB6g=;
	h=To:Subject:From:Date:From;
	b=ub9I1b629JOLswECa9Z0v+4pxBpalnzCDi8ftsRH0vY7Y/Q3/oJgNLHzle47UvXK9
	 HxXVpTE17hKRY9xZGly3niCGOkIotL+HsOSuWE8n57vH2Cofl1/DXunZmuEElE4vCx
	 qgytkuuUmk0HTPxZPGJtTI6IxqkTsLOSSfMO+iMC04u14qzEa/0r4PL/U4rrHkUsAS
	 q+6D/V48nMw6F+3V/LzPKOXe1BFcKbY5ibMI5cSTDf1h4U0jlNBzp4UxSf9c+FRX91
	 +MoNm3vdc66nYvPJzmQjPHHcSOXqxzxjk+Zc18donyn75QyncukrK8wPWFeSqAh+FF
	 3QwVjIcKZ3Y/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C2510854AA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352529358.16374.4565843871075781178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bb8e6fd9dbafc9212aa36196c3a8f8dd5951227121275d7c000eb1447c10c8
Date: Sat, 14 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773525293
