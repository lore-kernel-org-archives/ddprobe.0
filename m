Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D633C1AB6DE
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725295553; cv=none; b=HQqXgUnF8gRuc51eVo8afGzHKc0AwysP1O904NRkKjQUabYpInl0T2KS2nDriP9+6fPe1DKCLpxcRD31KbUzSqRoqydHAu7YQQ9RZpuEzikkr7ga5vMC3d50ebv0tGgWbygfw5VNC+lroO6X0PZJ4VFLG+S2j34yUqVs935iw8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725295553; c=relaxed/simple;
	bh=xUN2o1mdZu7E5nMxiQoSDPdsnCsXNfafuVJeEQPK4po=;
	h=To:Subject:From:Message-Id:Date; b=Cd7GWc0X69Vzb2hF4GsCk3GMWw4Zw4Yc9ibG7bg4DDuwnmfA9pwb5o4YUERQOluRnNdjsP5ONhmBj3wlnYBRYMSD4Vri0Q04QGMQydt4M+GgCzB2+M+M6crGRyon5vAIc8Z/6ySqFzwIUIYrjFxNVcI+Koh/ST0noW2EDI1u9Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4Va5OVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4Va5OVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D06C4CECA
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725295553;
	bh=xUN2o1mdZu7E5nMxiQoSDPdsnCsXNfafuVJeEQPK4po=;
	h=To:Subject:From:Date:From;
	b=Y4Va5OVHO+1S9sMPVi8XOSeQPBDL+tQW/YV1NL4Vvolgb8Nv4Asxx1jiyGJa3Hgy6
	 jrY4HSpf5GUmnsMA8DdlnMzQMhOn8FwWjoawzBDAFrt3ynPasAD3kFDQh7AWUzP/hP
	 5+qlM2fza3wAfbDNYmASnrW9Q5CWRQMO/9oiq8m1TLcDga9wNPGnCestRujx2zaCSu
	 sad2WWRQvrBqAhS8bb034zFK49hyRmxD4Eqhvmje+oP93MWaXLZuPuljVMVQwbMFsp
	 aHzJvpYusZ1BUo10l9mR1XwsKfZnotLapv5ja4eNL59MpgPzgEQSJ0ErZswnZ9avkX
	 soFjfpleeDmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91256CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172529555358.962.11081750424328498528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8f5dbd68dd045b1453248597c100f7cb3fbcb17dec4293530de6f5209702c0
Date: Mon, 02 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725295553
