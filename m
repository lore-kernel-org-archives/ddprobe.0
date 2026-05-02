Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C79E2F12B3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777702054; cv=none; b=MvDv4JEoxj9NpHcANXd5oRtsjFo0Dx1yMEsyIMGkcjxRbEBeRNs6sECUDjs+3oL7Qpreehi7/Q99OmNlFLdEEuNS/KvC0344e1uiG43vWd4Dj3g0bB0R1oFLLI8lNsKxw/S++/iyGKsMsq6ZedVjAB37uPoeSmlvDRCSx7qf9Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777702054; c=relaxed/simple;
	bh=PbxU1xkiHUO4+o2pr2TOjc+0HOVt3XUDG11+d8TGqu8=;
	h=To:Subject:From:Message-Id:Date; b=rHF2kjKkCr0F1DuZY1iaOJZX5aVE4ydUjILkIPtDZMy2bFs7haed8RCOZoTQJK22hlsbQNEqCTeXR4I7667JdDII1H2B997V7u8HP6plXWwe5i5Dt6Cd4MQ8Qttkzv+3j7PRzcEgnGsudxaI5f/s37fEnzQjnu4I8tbs+DtkGag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaB0s/Rr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaB0s/Rr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23D5C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777702053;
	bh=PbxU1xkiHUO4+o2pr2TOjc+0HOVt3XUDG11+d8TGqu8=;
	h=To:Subject:From:Date:From;
	b=MaB0s/RreM8ZmMh0SBS83v3cBJT3LuGdweYfTLAXtYGO7TAC5bR+OS9GOyxIQCLcg
	 WNMmNX0li04j2hbihcc4SRiaqnbcUUtMBIgwkUjIV04fTN2aO21voUdbXg6WVhBaAF
	 /SefHvjI2ZJvmcuFPtd6l/x45Iq+3uMqciHPepgvIjMsjAocCp5te3DdhDpC0zyYOD
	 AutDSCAbp2agN6veO2sV38/BSI2Pq1C+oYU0nRbMpnGLqzHMsLtZxaZMo940HBP6IB
	 zfvY58BdNdK0zLubgUeUeGNMIYbKKkBH//Bj9Gu5QHG0laRmnZmj2fisTu8VXi1Jm7
	 yvYF3i5NSDHYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF10CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770205368.5134.16769974276936899606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0167c137b8a175e392dd6fa5c90ab8f578c3074f6430db058c92306676ab13
Date: Sat, 02 May 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777702053
