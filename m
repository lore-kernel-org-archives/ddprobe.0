Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CE51DFCE
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754156394; cv=none; b=Oi05OgjjJ+9MajcBDNv3xAPXwZ/3yr24xGG9f1iZn4u3WEDxebec2MSftA8alHd+yyDcEcGK1Rv97/9KaiIo/olvp+pwjnsIgbfDOwHAVR7dwA+HQ4RejSoFedarMw3OArS65ZRbJ8aKyj7Y50rstTuvCn6dXZZHUeNhMji/W/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754156394; c=relaxed/simple;
	bh=mDbHirRk9d+7nFj7Ui+q1I9CRnLwEex7JCOTvR/BP1Q=;
	h=To:Subject:From:Message-Id:Date; b=I4tk4Hl9SisYp+RASWsXvZcpjegk5gjl39Tw65okpbc7DbE4RUN+rISLGoZq/P4/ON1pVYxIswlTLuw1nDuyI3IOJ3c+Z28a2AYT3DIiBGpXDoFl1u+gSgh1GhXZweW8JNd+xRWRAKUuZ3cMB6TiX2O+HJONQC5aC5kG9o0Dz9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX1FnRhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX1FnRhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1272C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754156393;
	bh=mDbHirRk9d+7nFj7Ui+q1I9CRnLwEex7JCOTvR/BP1Q=;
	h=To:Subject:From:Date:From;
	b=MX1FnRhNpPo0TM6XDyWbqWg9zPwd2pBAUOa3IDd+szED+XhEIy/t7PEhmNDe94EN3
	 SmbCwzV4O6chuRZkFxmJQCgsK0LB8IB85W4AqjngDTf4zBFRQhxznnaOPDLAWvRGfq
	 W+XV5dMuAcpvTPMZ80Cy3iXuYV6PPxeHGHOAI1Smq5CAvPlYoTaIMXAQwNsUG6qcKz
	 mGFhFFgG1E6iGE6cIbtjq43QEv6hVhvaRrG6lz3lpVH2Mn3eROTGZ7BhSf2m7kVMa5
	 6veEIIkFNzBKdO1fSjRfCd+R/0YoPCQ9GK/CL5S8t6YzO3qWSJks6BjzpzzKBzVlrn
	 rLskEYGH4dn3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E50EC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415639357.5204.17680088806996504033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7236bfcba691887d9422a776d73d344ee3d58a74249bd90a6ef1df003ec8f6d
Date: Sat, 02 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754156393
