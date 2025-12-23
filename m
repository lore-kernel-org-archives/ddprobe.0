Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B81A20DD48
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766512434; cv=none; b=iDK3pyiFrbV250JrYmMwG0mH3cp8RccjNsxLWgPT4QdzArkqCYMYoLABg33DofkEiNzbILUKSg1k6Qh9hcItYAI7HsXrfC9nuMhsKax26ik5wyTKAI0RfxNAqC6XomUe9BxOjXOWsTmepWaUMS4Z4I1j/95muRmRhTOjKb4PsFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766512434; c=relaxed/simple;
	bh=C8YKRRUj/AaSPXNAYVkRJhZs9Ai/BOGkswPWx+2veok=;
	h=To:Subject:From:Message-Id:Date; b=i66LvGQenPMRcNKOdpJ+bXWWF1kuVzp0ccrJpX+lMdkLlXQCkuwmNRQCxYxB/PH0D8igGZqa6cdRuM0zdXMXXdoiGR9s5Z7xuEU1hXfdZ7dEEQWly4WReBe4OFdNC2XS32J4r+ANYTIJZzfoQSAzDgWqbAEfPCK1+q4TBhj86qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4r1K3t2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4r1K3t2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44FDC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766512433;
	bh=C8YKRRUj/AaSPXNAYVkRJhZs9Ai/BOGkswPWx+2veok=;
	h=To:Subject:From:Date:From;
	b=c4r1K3t2puct0tutVaJGHRv4Efar89/zeoeFf1tjUegmTs89rQCWhfpTjfompjCZ/
	 G8Qm7iuf1Zq17A0tqAwOn4wmrvmLYNFxUuW27lDhjZzOECGLzN3v05YbDBOV/F2PeD
	 QBjHoNW8VBO8IpSRGaqXkYAu7YgUEag7nvrHr/Mk8wbWzgoOB1E7eiwdpPFFwGgm4t
	 eHHnl6p+LJdZHuQ9I1VPD0wPeDP6aJXEuC5+YhwovtVKEaVRB412U5rfXynk2fbaDL
	 GSyC8zeYCarj4uCfxTjaixRps1FFQhXfrPsWkM1o+IbUen19hwaQD/5+7kGMpVlVif
	 dbMDrVHyWDxhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE1E6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651243358.31987.13392608060534876986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b30ce733e2c2cf3e9aac5005cca442f374992ed423535cb8bdb8faec285f07
Date: Tue, 23 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766512433
