Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4E71F4613
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749829194; cv=none; b=MsyhR6JGwAb/ZVHdGxvBwblU0x6qPTg75TmuGR+smQJgN6oHzkGG7NWbq2XkFF+eo8V/Y+EjO0s67Icym9gSZMDdHjXZAqgMZPudZ7za7LH+m7BaiXnNQupSZlSgS0h6iaSsSJmltkG8QIiXhkHoGnaljZmEPjkKGLL0KhXYBzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749829194; c=relaxed/simple;
	bh=dPP5a3C2/kMsqVTzcZ4vS/dmAH2zVCEj6WHR+pqTArw=;
	h=To:Subject:From:Message-Id:Date; b=rC9ErFT6AP7E6JbBmPpb9gpX0MEAnPOv+NK5ZcIc+gULRR54xuYJiasJDhf6GCtVTllS442eZyRP+TBPkbZlyId/dls30M0rERhT/miWlz+Rer+ezYpthTRnR9jZ0VfmAeexj5BamPe0fv3RdTKot4itAbe7Ux8asnqYwU75TsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umUBaXJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umUBaXJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA6C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749829193;
	bh=dPP5a3C2/kMsqVTzcZ4vS/dmAH2zVCEj6WHR+pqTArw=;
	h=To:Subject:From:Date:From;
	b=umUBaXJBrZkft8YbbjYEQgpe27xPUZ2eg/g0wAFFEZ8MopRP5ZFCPW21WNDJi0Xme
	 XiYGuL+jFmlqp4ARyyqlfpW5npqAbmy9fR2gedTkFkoRJuimeHjZbfRnbgFxqg3qHL
	 2Lzx9flupoAaFjR1X0HbZOzb+IuVZxsjPXO4z/SntJuNpHHchynhTOoh+II42b15/F
	 G9I3HBMVMX8pd4EDnuwEDALGTOY9knFgu4yF0YaHnYJoK/zaTSrmaRCNGfh0Yp23HN
	 rBdhldN6I50ekJzPC1sX1Ff0prbvNPsHY2joYjFRwL35wDdSF+k7qT+i5rbAooJXae
	 OoEG7hB/UYkKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90883C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982919358.31943.14532700634605802092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47428acdad1d12f90b79109035e96e7cd78914517f2aba6527296a081c5f2566
Date: Fri, 13 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749829193
