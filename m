Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE818003F
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721477154; cv=none; b=MDJd2JpJDRzQ47rCgrXpsWlN9f8teuiqDKFbo05deLIGt5n/C66/aJbE+GQjmLjlcUSOc2tsYdqGq12vXi87JApxBP8mYOoDLlxcQ7q4N8/AfqjCp8rVG0eSuSXP+AhMkUhiCGII/JkriMbd0hL3HXiuf4PGkyt4CrGsNxQtZGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721477154; c=relaxed/simple;
	bh=Pxj8MTBViIS7zk1Ka4AS1hxTFvehDitvPta21INBDnM=;
	h=To:Subject:From:Message-Id:Date; b=Szp2VnkJL6h9s+S9TTMtGMt+kbFNQFRuI0qhtA1x6yC17lMXpGsdNupNw2H/bN/zCJg0Bb4VHyL7dFipvX5sJ/1XHqcJkqDH2aTNq3RgNLuG+CoJtRUjDpTRT+obkazZTnpLcO3ahTo4eqoXU8t8nrWF0HvZussKsdQoWVYmyVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFRbsy+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFRbsy+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E2DC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721477153;
	bh=Pxj8MTBViIS7zk1Ka4AS1hxTFvehDitvPta21INBDnM=;
	h=To:Subject:From:Date:From;
	b=pFRbsy+r/tnbGVnvL0DIDtEBF9+9IhkigwhmeXgzZfOLDiBQv3kzeyN3GmgjNHa9w
	 DttXSO4WGibRNy0es4o+jPO1sBwSBmAyyHjnBH2M4fkA5gYw7MCx5/xDEALi+m4242
	 Om3mqX+ASerWIEl23ebRxYVL/2bLf7pzdhxhuCDCIz9ekd30HLeWv75lYKVocP/R7l
	 Eqoh9JFKCqZLaIMlaK9sN1dCqhXtig/ICDfkEZJkKwRdYo2X/+cxEwObHlA9SuwIdI
	 Y6l4Ch1l730Q1/fGqIuLqLvXxYhYpJj75JElgclsTSofrPgIB+DWkN2YqsNBwuWwu7
	 k0FDg3gJFdXYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93539C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147715359.30904.6296711125020431400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a590bde5b426aee699d45293cec1f0738c4c33c4999ac347170cb537c45cabc5
Date: Sat, 20 Jul 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721477153
