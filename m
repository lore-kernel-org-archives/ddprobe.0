Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2696B296736
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747300194; cv=none; b=jrBoqEjozevWp42RWJ52LABC+nILPmpcbjXqEsQ9cYkIunj6AZQ2473VyYGIPx2jJkQkAHy7TPLJs0d+3iFWMOHlt6iF+NzaNWxrzcww5DvjaQFsc68id9nst/fjwP6kV1y79RWYQVaXdw/36qoj1hAxWeRR5JLVW3PldKcvw/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747300194; c=relaxed/simple;
	bh=wvTGLe1m2J6ZWLGe6vOOVPK3ZCJlsq1ovRREPuS90Js=;
	h=To:Subject:From:Message-Id:Date; b=nGKibKIOhg5bo6wK0sGMSr3mEOvRbzmmNm8RXpKI227Y6X3Fp2Cn3cjV/KnSZwy7+gmMijD1kpv2Lx6bRzSZl97RikygX9mmj6xPzLmib6FDF2XzEdT3ijm7H6nujDolvE0CNfLn3hUs78lXKnexVEw8/4+lrwPtZKAgEDlG+YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CV4FSUWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CV4FSUWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05DAC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747300193;
	bh=wvTGLe1m2J6ZWLGe6vOOVPK3ZCJlsq1ovRREPuS90Js=;
	h=To:Subject:From:Date:From;
	b=CV4FSUWARjsmsOoUNBE08t5GZ0pE6tptutr2j+3z4AfxBvC//P8gVzhT7IEJ0QBcb
	 th0qL59OTzn2A3MxYU8BIRedvwueAhCUrprJMkEY3CF2H/V9CZsF4A2+Dz/AQab3FZ
	 w2BpwAZZIjeIOhv9m/kvwhI5BdxQfo3LKdE00SGUFQ3t8rMG//4v2CW6ik+mUDSTqd
	 DEtCn7s01+hKZ3caMhSclFIfIgyGDks5C9dDQe+cxU1fG7AkCpWsP8vhnsuy5Op2y3
	 1LlZrzQ9DJ29RXHGrQImfnsLVz9krIyEJ2atACgN+4SG0Rv4ffZn4hYsn1xlCo5A+l
	 sCg748HELb6WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908DEC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730019358.14278.15762235842162801915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc47029ce9b966a2ea03b5e6cd70888db5c3e1bc1b414caeec7fb1becf54c5d
Date: Thu, 15 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747300193
