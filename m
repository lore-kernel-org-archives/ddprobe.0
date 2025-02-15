Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4AB15696E
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739648934; cv=none; b=OybV/81HsL89OKiLnQuza4E+Af/2pZTkUauITnh+UrNbkpXQtqkK2SGmMPp7vD3XzA8JneDJok4GHQQVIvyFKFFKN4SOyZeKLAZXhJFzq+pG5AbL7r9tPd//VrXdaXBsED4zg4T8zcg7WHkskPQUIUb9BQRNClIPIiMGTpa6cCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739648934; c=relaxed/simple;
	bh=pIzXLUDQdw6rTHmE3ZoZqGdl/N1xFsiOQUtdGDMP0as=;
	h=To:Subject:From:Message-Id:Date; b=msnzaBGxL9rCL5l/K9l3tBHRzqflBM72quIZ31DGOOQAiagdRw/8n/eL5WfO2mTkmbmuUDlyxedEq1fHu6FHu1FDz8da+0vTCAIeLRRGBDQ1Yu1jjoEYS/9PwIiTyWLMH682Bh19fJTvMGklRIHhO1Jvso3REDUDLxgDgWZrs6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JirYo/NP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JirYo/NP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7628C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739648933;
	bh=pIzXLUDQdw6rTHmE3ZoZqGdl/N1xFsiOQUtdGDMP0as=;
	h=To:Subject:From:Date:From;
	b=JirYo/NPWFKDYnitauD/PzUg60Fm109a33F7Gg73p5GTvVKTVN8gkH0cYg+664yUk
	 nyuJtS+suQoEVpf1aWlQnP57E7lUdC9UQ3u62f+nK6NhUVKGce7kX02c1o0JfEJkUI
	 gUGAWy+XHS7EtIRODbEpN+qOI8ALdCx8/A4apkTVITTO5M9sYl7p9+wjkDUbEEQBh8
	 Qe7pv9fZ6HxKJflxldtfshCHoc3B8dfYet0Pf3dgKVi3Pn7prnDa0fFIuhsHhaT8Uz
	 1i10LDxWhlE84OSpendzI0T1PBMWzgHA6Z6D0HwZak12HQlqIQLcvgG5CnyVIEQljQ
	 YLOL4pfWRwyVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96348C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173964893360.16339.7229171940419486151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3080436bd4b6db379d15d87b27226504745c9c2d4b0de6fadc4cd5d07619169f
Date: Sat, 15 Feb 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739648933
