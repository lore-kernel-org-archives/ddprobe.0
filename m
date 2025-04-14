Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DC2DDC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744663194; cv=none; b=hcuFHHgaDmExLlkEd93/ubcDS/PA5pY+xxr8WXteFhedYSJKotWassAGfiGAm2i8ajuItm6ErYYfSG6sVx5DjIpQDJD+aWj2DJDJ53wuTtsM80bajLUMmjTwiFdTLaexXEi39puDbR+PVnlQRDSjkOhVc4Fu8HvSYIE5KzZPtmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744663194; c=relaxed/simple;
	bh=BZe3rosG/EZaJv2b/r+Aco3LAMYCSgdH1czUsLxUiCE=;
	h=To:Subject:From:Message-Id:Date; b=gQAw6j00gn29FwP/kRduPFxJny+CXSJd+pC3mpVxX7qc60JosXdMVBe8udp0hDGdnuiD36KjToQKh/iXSRYYj6YVV3MiS7skZvTx8L/VgWjLRWOD7Ovrqs7/XZQZi0WtEx6WGC8N03KrN3WKMybfHHoNYaKPK4MD1pWGh5IQNlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz0W9EvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz0W9EvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F83C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744663193;
	bh=BZe3rosG/EZaJv2b/r+Aco3LAMYCSgdH1czUsLxUiCE=;
	h=To:Subject:From:Date:From;
	b=bz0W9EvSdTrYUx4wPBosieofAFUXzmWtkwi241tN4LuKcVBheJUj7Wno7giO73fJ8
	 YKpPsmeflgIOpj1xMkM5MyFVOn2JEE5Ple+6c7E87z8qQPieyOFsi6/TRkRMoLQVUn
	 BuDecLXFL9qlFOmfhPCY4eIICwG1Q9x+d/W4zh5yRSYfw9EcktwZAnt+dwiKO19FRg
	 R8BFGFkyYxoQ4pUXgs4b14Z4islXmqeEyFmAMyqSoxH66mY7snBQm8UoT2s0yf2qth
	 iMRtvIRKT9P0UOMTQLz3fbQfaEL4kM6ObkhZJzYTmjgheNXkIVI8o0W6tsRGdGzG3c
	 OxrMz2lnBY6dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D676C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466319363.3690.2412661208216147730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170ce8e725b4784ff89927228b6c55acfe55f6ae2fb9e8785ff7dc577d054ee1
Date: Mon, 14 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744663193
