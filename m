Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4729323645D
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791214234; cv=none; b=Hdutv0gRZaby8DdC+YHNv2tgsqOtP1g++QdHAd5Gqab6bEAGL85GIMCx5HqoybuWjoFrPNfMZ6XDLd+sOrT9YH5V6lvQHzTb1c9rL3sTBGTmcLEJ92KepNOWe1nbROwMN1ox768JjfivIPMMf9r9tQLa1FsgCnJgsHkyYkawGMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791214234; c=relaxed/simple;
	bh=uvSA7zvu9yiSXSKOT37dNSD4TCqGE1VRF+nVsajZEDU=;
	h=To:Subject:From:Message-Id:Date; b=r6EQBDqKgg92O2YTK3mdHtIyvhr+e24wMIsWvfl2QGi2qCJKsPE7+y7VuvKMhdEk3BteGSSDDgxrxfabKzPySlugz/ozt2qc4tbvNFInopXVKEIvwo0P6hPrlg3kjlmoigPFeRrDaUAYONsFcM1EcXaxJNfoWLfYKRrFVSY1Y3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2x6Q3Hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2x6Q3Hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9CFC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791214233;
	bh=uvSA7zvu9yiSXSKOT37dNSD4TCqGE1VRF+nVsajZEDU=;
	h=To:Subject:From:Date:From;
	b=o2x6Q3Hk8WlLmi+MR7so3z3tPqi3C74ynUiL0Jpi9BlEM51vvQm2suoQ3BRKzt6Nl
	 tVE2y7fgbm9kH/kTYX2vhRmD7qp4O8MwOnFzW5JZrM2N0J6mIaWR+kjfnF6CyD5DR0
	 Pomr8csrO2oBqwB1Au+YVEvhbNRIdHxswcR/LcuJVh/3Qrb5A0JpdJOOCv/iRrDxI9
	 Ap3jKJUhFUSWTwjYwykZrwEjFHBfhQ70GsikzWjWr4LPibNSm9fgeF1QIXdhuBHFt+
	 AJjZpFECitUnmRFjPerEDUj0QrUxg8H0sgoiSkKm9AHVTbSBAl+6W+MIryUFXHK6s4
	 nIrqGRr8LWpew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C4CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121423369.9181.9707056571888973117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3053938eedd1928196b1c35cf74e074dd5ec8552fc13dc7d99d61736961e82ff
Date: Mon, 05 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791214233
