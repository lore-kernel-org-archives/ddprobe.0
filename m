Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B90945A
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724673354; cv=none; b=Fq1USBzJ2W+6xa+lJ99XlBfjW68MlKOclZGPywaFNcYio16P7msBhP/4okSDgweevN3DQLO0iFtakgupZWidEvV6rAhvnIof2wfv7QYuRO6597vUrU5zVQJvhad41Qm+gpkLuGvwAMIo4TeWS7yY99KMO/ZK6HDVESmGc5mMBkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724673354; c=relaxed/simple;
	bh=hm54oUZax48kiWAr/BoDAthCUW7ABGilC8YsDSjw7UE=;
	h=To:Subject:From:Message-Id:Date; b=I3HhurQy2X1K0CRVOEYKB0qyHPg96D6DZy91tfBlF8vLQ+HZ7024XcMyUzb6250i7c2GHEUfsoiUVWpx/WsqvPtzc+rQ9Z3SpsXRmph/tJpGIzBZW5zSEpvh0S13vL2sEdH7C2o+xZcnmI+k9wVNrBvrcV5kStC2yK+OArhw5BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAAv4ose; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAAv4ose"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E8C51410
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724673353;
	bh=hm54oUZax48kiWAr/BoDAthCUW7ABGilC8YsDSjw7UE=;
	h=To:Subject:From:Date:From;
	b=lAAv4oseFJEHN6pb7QuKG89PMW8Y+SWsVcKM5xXLzb/bOc0aSEvdK4heFEam9t9K8
	 I3IRsMvA9TDDjgSEOwAgD3fz/gEPQyZnN3Ty8gGOB9cs9xCfIBs/T3b58VQ1m9QBfh
	 Mc9ZdZtenKxxeHZiucMLsW6a3k9DxGSnFLgOkMDrZnjivyfxq694I3CQ3LaHd+I3Sz
	 q2TnqMggCjvixo/97DkG6KFmZM7pmWEI/EAVa7DD9EEy0MH7hG72jq6UiJK/lEdsNL
	 o7sFx1l55ngaWgfLCYjvMyeOsQuH3keCQTJA2Gm5THObW4LEm3CiGvlWOFA39EZOZS
	 SlbQE6XtXdJVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED3C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467335359.32537.3079967974901105636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0aa0a5e8dc0109478b2a2e88a2b33a170f68f85776d4d462691ec4a2bdb10b8
Date: Mon, 26 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724673353
