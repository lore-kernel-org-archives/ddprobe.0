Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5A638C43A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786257034; cv=none; b=Jv6mHfI7FsF2iXi2D2CcaHl9wWh/9PEAlujvg5FMfo63JPNGpnHcU5aPkfNS/WYqgvk5xmThtyIuZQM/oJp0bJMm7HNYauGqRiax79apwrjz/OljhpdowxFQMuU+VsfYg3aMlErDglj1fwBXcaq+st3YvKxmUDa1HAt0srbFGFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786257034; c=relaxed/simple;
	bh=zRU5p/vTnF5TWXlbD5bAexpKu2QNCjaxSsbGs36ZU0U=;
	h=To:Subject:From:Message-Id:Date; b=o0b/EbDSYUakzcX+nRj/3lLpRhyjCSlI2gAFlUf/vhuroVcpKLsr5pyp40AlwON09bHUzhT5U4szCH2vvkTuezK7uDtOS9oDsmmIiqxLXz/nWy8RiIRVCrs0QDPcURY/KyIn9htGlyVgnMQNtyWigOUd94mgu3+boCmgLDuk7cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGWZ6GmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGWZ6GmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B64C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786257033;
	bh=zRU5p/vTnF5TWXlbD5bAexpKu2QNCjaxSsbGs36ZU0U=;
	h=To:Subject:From:Date:From;
	b=MGWZ6GmJUj3zFWYihz+UdS/KlvDRopnMc/BIMi9K/wj5jj7BpMPECFPHTaG/x8Rj2
	 rb/IzjJIj8LM2md3xKgNCYTeQ2Yt3tSUDOk+6ZiTtz0piYpS57fNyYTZYSv3emGhWE
	 LHv0Iq1q+VhcV6DvoxQ1QcemvtIpeMmvjuGs3CrmZeWntaWF0dwWhsgTe4q1X49m21
	 2jG9lU8lXWmLU7uW/QoN3YuC2n+PbHDkrxrTU+HAqXwFmna04J8GKpeSbPnuatMjZ1
	 VtrbL79syVVDvVNdGdpwY9s/qGaDDlUFelWLDapNmiEmCxufmD7kZEDfc083efVNIU
	 L+sG3NcxDvcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF681C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625703369.2901.6283099939048302521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c49ca6a21d640a4ce463eff6367d7701a7d9db56bd0fbd42573ebaa3451e484
Date: Sun, 09 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786257033
