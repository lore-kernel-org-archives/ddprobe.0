Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCB91A3A8D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747170595; cv=none; b=QnN2eHRdcbc1TfSk64i0GsV3JA3C1AKUHjKNh9oHZkadmKN39GXGUpFt2jBNwNGxSKWJzaGMgQIM8lRybqZQgsJUAwfZ2OfvoHVtstwxRznXL7g1vwyNWhimkiuvJZ03+z4CFgIrJEnOsgQ7dwgm8Mq6ay6JoDOKW0ACg/7ow0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747170595; c=relaxed/simple;
	bh=GEYRrYSs+M64X86WpFIWmyKGbnBodq41PrMSVJmg8pY=;
	h=To:Subject:From:Message-Id:Date; b=TK56PIcamxippljYeZgaeLQ+gW/F08XhBbzZe+oGCZCUZBOwWZc/dku5Fu0ndcPApgZ7nvCDJdN5sb9abSieqWWWjLuXm+Ysks1cQo/wm4YBGRu+7WA2FdltAMjmsQ9McHIkQ59EJeA/s2h6eKOFUuYuXvIEvEMU24b1YlC1P2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfXYnSxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfXYnSxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F1EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747170593;
	bh=GEYRrYSs+M64X86WpFIWmyKGbnBodq41PrMSVJmg8pY=;
	h=To:Subject:From:Date:From;
	b=LfXYnSxGvzOpefhUBCFFPSJgUengjma0EwpQLnm2C046maqdaG1y7HZ2Sa0pwd1+N
	 wwi2Xi6F+H65DpaAXd/QQJRO1XEFf6FOd2qnpZiOeGB9AF8ljy07VFIOdtD/tWdAsX
	 +Md3CN6ISoEtccycNRrEYwQnBhtpC3z8kOimWT9QjM3HWmUt4Ix36nEAKbyq16zTjt
	 zbiak0Y0cDLr+na2YM8R1XI6j/LxPeDxyjoup+fC8v0GxEGAOH7Up1GsYLvvrQjkjS
	 77wj48aflgSVKRnd55kJtXf9xweJ/aZG30ZykyDWkUbxZJnNi5dvs0PejnFgasNYnz
	 hF4puTrJOYhwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF6CC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717059357.28060.7091180037278939300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b986933fd51eb50d3eb7ebce91c909cd4c02232f4addaedb8bd046f934e09551
Date: Tue, 13 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747170593
