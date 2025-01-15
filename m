Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498C441760
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736914554; cv=none; b=KHBQC2ayUYBY+CuG+Te0dAAGreA/KqYwD2kCmtYYI3mjykBdnTnSD5m+DNW6y3WmF5wtjDBQRvjXaaYioRBmug+Rzzqbdna6dYPhl3avV/YS7cB4aO0cqSZWTt1L0zk0eSHDdzKM/0tV+ubyiytmHqOOBK2rkQpvfliCo8UrQNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736914554; c=relaxed/simple;
	bh=T00MavW/ySc/Xd7dYxGXdw8KgS3u/D1/FDECKixPQoA=;
	h=To:Subject:From:Message-Id:Date; b=fDSIA4ULVJwnXUGs12eQCHPqThVyL+oGti2aLOMa8LHKALTqUuIPpG6Tk5TDHMZJq61Va/xIp7kjdsuk+ZAI1G609EsRdqyFX5IxVgjdSxc5R2Q6OX2PkzMo4kVDAavLxOeHOvMpU8bkujhjWrF4xZOCGe47yWDok8i4SvlHlxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjlsBjS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjlsBjS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE47C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736914553;
	bh=T00MavW/ySc/Xd7dYxGXdw8KgS3u/D1/FDECKixPQoA=;
	h=To:Subject:From:Date:From;
	b=tjlsBjS6ExHOnBCQ5REn2j3/F4Q3/5NOlMaGdY7zeuvLJFe/eD/iZnHC+TIjDBCqF
	 XZvjapVaUaObE6YImVSGWbj7qQ39CYRt5KbsgAJ4OszYOmBUMFC1Bf1nk1miPxjn81
	 g/J2I89LPO0pykKTHqxfHFdgdQhVf70+w+sxLKRx5AFYWocRCspyltfZHZwvvdCm8T
	 zddhF6f2pnzor1gUtMfSnu/W0ndFBttiPZQq1xasL+OIgCRIEuwCDSDKbpDj0jOD02
	 bWMVXsCgZITuNne+CnAMR0XnAKXlxJ32gPVpawoxg2gEeeASgX7DstYyTusXsXlBu1
	 hmDzZQakRRRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C6CC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691455365.10488.8872620302582848384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c08ed91a748424d687eb5eefb21f849bf1b0210a19348a7135939e66b5ba524
Date: Wed, 15 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736914553
