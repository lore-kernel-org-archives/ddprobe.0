Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FAC18DB01
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749327594; cv=none; b=pIPF1d8iinNS1nMr4kzZrhHNSQPftHcKXAbos8+hlRKCoMhVBcKcpgnVhF7PjHm3gFO9Exqh0Rpsj9vB9tu14+CCbPasnsLkzZYCA8OAuLXfqYNmXyTLuhii7gXFMM7sHI7N5PwEoJ4+ndNbnM3QxamwU5vHwovAjMwo649MESs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749327594; c=relaxed/simple;
	bh=PkFTKpRuMDHjDvy0ODWt/dkh+t2ZPuj7iDzULvgWxAw=;
	h=To:Subject:From:Message-Id:Date; b=ZmDly5j1fablW7p3gKZb3rUcjIl5FkMiceNMiVn7ugm9lHSCrcOkgAgRZxsCtQgvVLJ0pT+My2FOC6B1KT6u2NCVT1qmjyvsBeADAxQ2/ztZlqr10mzwofWBgL0fkRGK8X7Py+H92+YHdKZUo7ey2j3v0qZA0ZTfEybByoV0Ceg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fu40u0bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fu40u0bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2031C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749327593;
	bh=PkFTKpRuMDHjDvy0ODWt/dkh+t2ZPuj7iDzULvgWxAw=;
	h=To:Subject:From:Date:From;
	b=Fu40u0bfF5sZlrtCaTEKfUxSlyU9Z5XptT3OIdnrR5tpqrbmYxmMUPlTogLA11JR5
	 QpLcNde7phu9jdOwPjASOhMNt8XZffiAxL9jI/DZosR6sIWkVcHBTD0EUlo5R3Cf3i
	 ROtHB93cHSpnVgzeHo1HCynMsv9+ukCpiVrwBtK2hgSInvRQvM+QN25C/CYTAFSJbI
	 ZQgV1Ih4qy/BS+Qq+2bGlXMCTE4YJtw+dLNse7wKB2a9o1R2KulwW0Nycp62TpmMuC
	 X9oD/bltcri1HcUarm8xvq1wLQTh0bUzKaSkTC27+fZBjcLE5Sq3vdMTVMmFJvYq2u
	 RiKFSSe7FYZSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C3C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932759357.21048.17094570399590600187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b54e5a43f8fbd7681ea2076e1951174e45b35e04a2db62dd9bb2fe4436be5e0
Date: Sat, 07 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749327593
