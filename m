Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F204CBE62
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707886697; cv=none; b=dqrppZ/w2OwOTxqtnOFyAaKFbOPdqThqdMj1+XR4b94pUSTDXGFWz1/HTy1HPuamQFvQ28QaaZIVNRq+yIif+2YQeMB4fPMW/ZKbtcQlNYAkX+AVKK+99PWzU3h0ZOdTTlTnKViY1iohTHHRojND2ORCWSq1L3snGMwOP1BOMgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707886697; c=relaxed/simple;
	bh=5LRBHTfUSH0NGD8zqifpsfox9zL72I+LQMDySLgyDVE=;
	h=To:Subject:From:Message-Id:Date; b=NJf43WfBfy68Y7kJz9IP47BZcAiGx9y2++uFd5kzMfsB13j/NzoJcKdw0fRynCNV2k9n3L62YCveldDFTAfifb7pVvMgiCvPIXcSCuxecgjVtRXLzPJc/B1mlYsFQs2jEWpB8CE73Bk/Puky1YzQJHNkZlmQEr/gv2K8fHBtoCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ppm0l+8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ppm0l+8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3AFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707886696;
	bh=5LRBHTfUSH0NGD8zqifpsfox9zL72I+LQMDySLgyDVE=;
	h=To:Subject:From:Date:From;
	b=Ppm0l+8rTti5UNC2G4qyZiiEopyZ8mIq1tQus901SptGl7ayG7l9AlQMnXFH/Me1p
	 NPhByQtSGddjLCC9CZJrPyO2dJvgiZphHjUuxel/4A+aVtkhnuAxkfazMDez2zqJ3E
	 VIvEXp/utSmVATuNFPpZ1tXqDbCIPlsf1uawEHU5luFrE4VJzhZeTKq68dPgrqUtDQ
	 Hie5LK8l7U6l8dZKUv8otJYCTSDyq9mjBwmROb3hrXF++N+yH2I7JPD1kVc1sLVnAb
	 6uTvuA46saboUpwzaLHlNp2FOrmNiRlq1Och6WlWNrtTgv6x0/2B3F0a9+7qC8+vge
	 uYf5cFhbDrc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644D0C4829A
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170788669638.26603.9936635263065552243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d722a26b95eacc7eff676e860b734402497142d0bca7ddefe5f1b71a6d9757a7
Date: Wed, 14 Feb 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707886696
