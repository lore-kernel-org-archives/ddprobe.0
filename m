Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1632F3B
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 01:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732929355; cv=none; b=QWW2jke6M4lnzcZuZfA5RMkim+xd7EjVUKh5lBb6AUosZoJooxRiruWU0wMiFJVGVT5zmCa5Jdhx06AVKi6FgBBTBpX8gWYtyRmhnzsRc74LNwkmFjhOJ9Z9Ixb3xhbyUESGVYhnmShXZ+Abw0qniDljiBa6aJU+DkpDdu9PwTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732929355; c=relaxed/simple;
	bh=5JQbWKb+bT9gVA++eLQ0dRm7EtCYymofJ5EFhlr8s4s=;
	h=To:Subject:From:Message-Id:Date; b=B3snZ/aywZlaYb6vJgrUf1ysyWW9H5p7VTSBf2iSAsebWUqS85UgkYY6oNSHQDoYvrbflEESbKBR0Fql6UdsxUvPjVcuE2DSOoW82Iu/Zs2bVS0qqu1JzlaR+9DdWPScO2N1M9hZud0w4e/sxdnaDTerJaCfWW/FwJn7dH+vQ0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceBUqJW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceBUqJW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD63EC4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732929354;
	bh=5JQbWKb+bT9gVA++eLQ0dRm7EtCYymofJ5EFhlr8s4s=;
	h=To:Subject:From:Date:From;
	b=ceBUqJW0g7BB67HomfY6oFw8mLakY+V0WfRFxKJZkrcBvyBfs+HBirTn1H7qfaOsQ
	 9ycmBIk3Cu3TZ5Q0qeh/HsNEkG2oPtuyQTj2UuON0GHIBjMB48pU6cArRCAlgoUxt+
	 JDMoj2SxrOO1sgo1EQW7GMEm4wtwnbxcVAj8tITYyJsPlfdpFfT20D68kVnWEBA3ZB
	 Qa2ukNkvEpSj+BIQ7c/8yDe2Cr+ThCjXX6d8kpNicCgaRyIpnHMJOLnDZmT2f5CZRn
	 UdNRtUitXZUVKBrJ0arm3r+BHj8EqgqeWj4Jz6Jw9B3dBQ82e1223WRSgVux5g0DfX
	 JRfCynAw9BupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFBBD735EA
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292935360.1204.9922334005885628421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5021ad9f5a84c3ae8e2fd6a25eca6153fc32bd55027a248c1fdaac50c5afd8
Date: Sat, 30 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732929353
