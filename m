Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36B337F725
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786158634; cv=none; b=RaNa6qMuUnCLA0TrMq1cRhVbE5cA3aXonp42Fea8mKwv1fN0Kh45yG1b7kfOH+hFOXf2TLgi5M9NJ+ely6I6+0H31ua7Ol/+nMZj5gUZNePfnm6QuuRe2nEyuwoT1moNaz7i2RATwBwzhjBQXZDJmwZTKOlfa1e2Bfo3bkWDBDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786158634; c=relaxed/simple;
	bh=FVaWvNeuUYXrgdka4+Ji6UCEz72w64Z3hX6KDND1eXA=;
	h=To:Subject:From:Message-Id:Date; b=qnTpB5MhMFcDhGZ6wENpMFLDBmX9igDTRRUSGdm7E9Ld0p/wpme/k+/p97kALmfD5Hz1dIwAheMBms50+PYLDn7AdRkTkkBdCFB33zn3SpNkwkh94UK+4lTohC2uKoVBJZpz1ujQuZa/o0pLCsI4L6lskTia8uOmGuBlPZoAMrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKyIYIgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKyIYIgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B0AC19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786158633;
	bh=FVaWvNeuUYXrgdka4+Ji6UCEz72w64Z3hX6KDND1eXA=;
	h=To:Subject:From:Date:From;
	b=fKyIYIgILZMw0QswRhHVRQc4T2fgHGhOTuoE9CGUVaAKSDZuPb2cdBp+IYZf9hfzH
	 UfcOrWAaNuJ7ICEJh6v7BI8TsG74hY5zTVoEOVZQM9vs81NpazPMrqsoqTgNK+5Tqf
	 z80xBaIi4JodpTnAiOYiYRHNbu3nUTUSmAIarL3G6kfX8QKgi7BJZumP1bmV2Lz1G3
	 wk3bXXhkc7TbfmdNdYxM++Q/UqcgiLDkdoORyy7H0SID5/UH9rCXLawvIQteO13FNy
	 QXQvIZ5QEAU0H6xmU2EVjZskTxEIXPysf2klHYDghBhSC/Nd0iA0gVitZ8m8SLRyhO
	 otX8DltmP7adg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBEEC5AC82
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615863368.5641.16935562279338909544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6919f89c064bdde3c1a62a4ca802774da1e7a356d38d7e4039f85199e945242
Date: Sat, 08 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786158633
