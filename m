Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC9C335562
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780363474; cv=none; b=jSIwQ0aCRgMI4rTW2z+kRfcDkyw1gGOKdgpUIGbEmkQ5+8RykU09nNtu8T+dY0GelAFA2ijeNaaOEZHQTEb8MsePw4CBRYfS4/WNkrlZSSNNbTex/ZoSBOj2hMG1vdI6wn7JD1OvfomM2XP+mpxcQu2ic83tawjCDfhv/+EOX/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780363474; c=relaxed/simple;
	bh=WatZUp2hyXrVDCRnTvY4B5crvdjyM2pOp1VtagTxl8Q=;
	h=To:Subject:From:Message-Id:Date; b=FaZxQGsRrEeR59hztUirEoW2j4lfO4SlzrfG8zuAHEkziZjDv4hBlaCxF2LWqCJjmhdzD9Gswq0J+uDxlmBp9QG+4D/7MpUohQdJ9ZXGsk6w8hkdpKuRFslKY/dqftp/HvNNPj7bcuXr/0Nylx5Km+YVPpSoCMkvA9wyom8ZrjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvMWwROb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvMWwROb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F4CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780363473;
	bh=WatZUp2hyXrVDCRnTvY4B5crvdjyM2pOp1VtagTxl8Q=;
	h=To:Subject:From:Date:From;
	b=kvMWwRObrtCdyM0N2eT/WEnuqUHAksWcMhnl7Am8zRcx7kyYug9h3OBGqCZ/s//tx
	 USjJuUXEW6FbHHtt/i94wPeTkFXJzw1ao01P5JxKFyNZJBqUeaIKQ1tZ2X9+aPvUsO
	 vlV68oXVEiKOchGgilrXRN3YMmrCxeHeUOmAf1V8FOZox2lI/+sDqzbOqtDAZ3t3q7
	 +fm2U1xXF6HrG8r4G7wMbRFGTbrWLAbDgHYEhkJYrXSeDmXSRopC2/V/9/aPS4cR3+
	 DIf7s0X5p7ctMZA4K7sIBlyB/W3GRFTQLNaLu8fuO4uX+c8Rcy48tkZRZO/0bIJjzE
	 GwoA/KyIpFYIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A901FCD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036347368.23628.6783435505127116541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ea151d61473ad09dc9dc247f215acd51813f9e2a90bfb741b080ae60e756d9
Date: Tue, 02 Jun 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780363473
