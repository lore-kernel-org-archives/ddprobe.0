Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA4C356764
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781323594; cv=none; b=Tl8yjA7GhHYF4OiqYt8fmQoXq7fi/PfgeK719EI4YVMqzhZHS7D0LJrVrb2jMR0w4wVuJzP/t0cbdf3MEe2+FJuj95HYrI3nYyOa5io5W5Pw+KBouf8/RBfk1rr4Q0NML95cLtkPNju+8/8NEilUrRbHcJRknRFVMIpFM7XXzUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781323594; c=relaxed/simple;
	bh=H3nk7wpyGncLncSlM5betb3/90DtQv8WeBAVN/xXCEU=;
	h=To:Subject:From:Message-Id:Date; b=rMN94VSVIDG0BjEqz39VvLqodcJ5XoCnM2yPmFMlKcy1viBfhNzyvQJQCsPNtjyawF04ahWiVqNZYphBulgSQ27upcPh27XHeeTAS8ZUWB59R3oJJUZhpZXEzj/JcZOeFu1Or1vmCgjt+ycJmXSFATcjTe0s0ihLcFTCzjypVfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TisX4JJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TisX4JJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2EF9C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781323594;
	bh=H3nk7wpyGncLncSlM5betb3/90DtQv8WeBAVN/xXCEU=;
	h=To:Subject:From:Date:From;
	b=TisX4JJF9XuWXain+ZaqSIEkpomWkK6D337CTff3jrkSjeQcxmrJewz3IUN5nu0Uq
	 ybe56QHcTUBxXr+2vd7P+aHBWNXFMzp3gRmUKT0WHIoIK9YOsxYJHpohqChrc4ODMr
	 AdKoTFULLmsa7AXInt+emx56K0bsg23N/M2moT4RmGCymAEsqmpdiC8tW/U9XIua7T
	 fAB0DZESE11Qdp/ZK0CTEi/5JnOyu8P+5gh28xlhbLO86cxUc2rSPjrEofwaZh8Vjm
	 lajECnMOdUQVQ46DFuU0a1T/TRWwCy3czg/CmDQHZQyjcrhWnXPkvJcrc9euX0iaco
	 pfVlIEENblf7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D38EACD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132359381.24360.10124796247655356245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc40d2dd92c9f157c0db167c74f98e91b93d192612513f55ca2600e75e31b321
Date: Sat, 13 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781323593
