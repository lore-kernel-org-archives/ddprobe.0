Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E81259C
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753573194; cv=none; b=ZF9FT1EAiUvEHY5TpacPLuY0yLJ90nluxeVYmLRRRp/hJgxGk0olE/5clV1q8Mvta0Gx2PCjE6zUklp5nRQ7Czse18i94rCso5YiWoS7BTu7tk0YrGZioo+QM9jU64qBxCb0xk3Gyhpg0h9N2xHH3kEsSyPtLZmBYe5lvzIAS1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753573194; c=relaxed/simple;
	bh=EoXXDJLeWfxTPCi/LyOv4iB6SO9/akFEh/5DE/wTK4M=;
	h=To:Subject:From:Message-Id:Date; b=dSf1+o08IgvGtU5GE5zUk5iaQkpx3MMYKtg4fVkUCp5SfbaTKSQwKnrETcEkMrMiBPCcy4yxtrdnqg0BUK72o94zejuGkxnSBDMug+KElolNdVXSvccKRoWTExAmzQ6wz1ySLThHFPGqck1UOFgJ4V0kT2+HAADVysaN5AZDT7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HED2qSrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HED2qSrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A378EC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753573193;
	bh=EoXXDJLeWfxTPCi/LyOv4iB6SO9/akFEh/5DE/wTK4M=;
	h=To:Subject:From:Date:From;
	b=HED2qSrbGkibZdZqk8XsryGPRUYRJJVUTGmhuISmeTcrKGhiBAifpZOYZ6KzKNZd7
	 v7v1D/8qdcp8Z3O12v4b19NxazAsDndUx7HdoniyTaEs3ZcPeobtZIoncihYijZH9j
	 pn78BMtY1IBMHzHfItY9uipkeD7fBDYmNdM3Zv0io42MHvIbRh+I5jKGZs//pOXyoh
	 Uh+iltDz0Kke6fr53ocNDvNVhEoI5e9loRZGrKX2veWrq4MTK83eaMWjcayXobMArK
	 VfRBDeqAgdneo/D/7zVIEhnqSST0axtUFb+hB0tGaO7Sp4AqewbXlhpP/w1G2h3WUq
	 UF+x7my1QszLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A1C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357319357.28342.6178022226060163863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16bcfc66e7e378217437b80b855e7312ec6309f51c71acfc12365faf8b153a30
Date: Sat, 26 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753573193
