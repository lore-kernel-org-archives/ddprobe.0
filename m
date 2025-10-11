Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D04672626
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760191794; cv=none; b=kxP5YOzU8G+Tl/siwwGmf0aMrY3XHiF7vDVQ+gW/IEV3HUdJlx6XUUXrIHNR4622KiGl8luS2ujrqY3VCI7Tbahcj10oQrQnKM8Xh2d6XYmKnfwG7EezRHhvl28iSsD0mneZaq4okDpcuhz9bwUHpX/+VJu5oh+YiC0y7f42CYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760191794; c=relaxed/simple;
	bh=jcNImDV9Ccz7nGWaQLH66LCRIc4txTmIfiHdUUmZtp8=;
	h=To:Subject:From:Message-Id:Date; b=FrJbc5PkRZ53yj6f0jXgD7/4aiN4DB3wfMdo62dz9p5HTAfolBB0Z0N9lkKNuky9gz9sSiPVSVmmuzuAvG0Wio+WoxrOUe3BGiN0mt85/DMqP9K4TFcU+3dH43s9ckX2cLWCKbhmvJg84JHY6jFNFgd4oip3aYOQBkJkjkpiEEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAwVjTrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAwVjTrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD4C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760191793;
	bh=jcNImDV9Ccz7nGWaQLH66LCRIc4txTmIfiHdUUmZtp8=;
	h=To:Subject:From:Date:From;
	b=HAwVjTrfzqhISNwHWh5qEHdfnMmyXq0vmhZ7fpqpx+kicN/3bSHBkqGF7m1+JInAP
	 rSoBADV7WiEWdNLs+yR27FjO3+R4NF/NtZ79ydBYwmNtUGWTNYlXnLuQkiayeSw7oI
	 gAB9MjQOSgotpo+0hLX4a/CdI9YMxdrZMC1XsLbt44ns1XAYivOiXvnFKotCumcGyX
	 YSMVRdsDB082xG5pqA8w409HUN0bteLr/2u3ALGVbIuN7xOlqHjg45oyASgs5VhQmE
	 61LA223hYBixEMQ58PSjFPs5bNSc0tTTveMOXKa60gvsoy4kuSvhROQgw8q2OqEBWC
	 /MXJYZGpcDvvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E52CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019179358.6214.11558855537710548402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455cc95801c6daa8db31533103014c6058e5a259b52d876fcf7a45838616e27a
Date: Sat, 11 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760191793
