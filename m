Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5563F1361
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747280994; cv=none; b=h9WJsfHrjh3gv7R30reWZd2WpL4MyEbfXztTpObIGcHI5CV+dbsDnDrc4byfEVY5NWIJFGfCxfNAfVvxAGDetaXDMfTjUDjXaJ7b2uBfUZWsAeVPG3pqXxpWrI9p8nSNbzHVPVClmNQzyuAqg3whWcK9z8HiHy0PVoJst7Ukvtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747280994; c=relaxed/simple;
	bh=BWErIfuxr15jlYQ1fiIHyACBpA3qV7knEsXSQuhYHro=;
	h=To:Subject:From:Message-Id:Date; b=rfnNbaygINIL0ACeEFd1CO8Vx1MiH34zSWCLne9wk8tS6H+gQ5l82eJA1tEhNcJb34uKVrKAtJLqVVUa6iZFwb7joqVAEDXhRzrfuSppwRISo++BVlok5tYgnPmu42qzQHPh5xLMBqen2x8SBFtToxmyZp66mz2Y73XV1+79Ieg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLpxEUAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLpxEUAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA41C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747280993;
	bh=BWErIfuxr15jlYQ1fiIHyACBpA3qV7knEsXSQuhYHro=;
	h=To:Subject:From:Date:From;
	b=ZLpxEUAkdpLzDYfiaxjy8rEueadvZipnKJDhQ/za8awtXgO60tLiEe9f5h9fdtrn0
	 pWyRhr515Ual6bPHyc0Q4mgqcOw+9f0XP/yr63urZUq43gRFFKkaOPXZJiSFwoLALS
	 FS/qARjZL6qIHaFp4ZM4WbDvGkqC7cyMc5wmFDDgFjRscQIY1hkzxHuQJLKwg0XGHy
	 oTy2EaV28HryjGBtECNk/MYzwxv+ZKW41Gx/v31noQWOCRhknlwGaNAed0M55P+prr
	 RqexsurzKiEs3B1YQJiis18Zvtp9NhSkxAd2GYBbstbSkk6w15SIaHRKwWi6q7RcTN
	 EO6TobxaKAEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E144C3ABC3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728099357.12652.1161719598220721936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58712e5c105720d942c7033506688574bfd3b8796de5e90a30d759e53d4ac97b
Date: Thu, 15 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747280993
