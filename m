Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D8E79B9C
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716360803; cv=none; b=o+AGsnLrEwxP4EVK2K6bgu5yd5LMRGUP1V1MVv7MW5Ywi8Fo77otjq2WQhlA60aSf+LvIuxRDWLrQjJ32R9mGVUqnTfXFDrzfh2ujY4DzWPjkwvopJ7krvwMGLyDckc7flWBltDmRex3KDDjjqmtoo0D542yLEC/FE/Mz7GYKwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716360803; c=relaxed/simple;
	bh=Ii7f97eCP5NTU6uCVvb2R0NkAEKWb4W4wceUAP18/U8=;
	h=To:Subject:From:Message-Id:Date; b=VJBHJXfw5nwigrx3QVNRBolf/E3WGIUE1zHPIrAEPuOQIBNAa+bQa8Kp91yt9BvZjakYbgQvsCCyin1mCAEetAUZejbzNx+ob2hSkc6KsM3kP9jRSAwbj9AJF7kTeFsSFlk3uIxnkp0U8smoEnpTF2W1YlbIR1miOedXNMIxmIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIJeRC/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIJeRC/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F04C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716360802;
	bh=Ii7f97eCP5NTU6uCVvb2R0NkAEKWb4W4wceUAP18/U8=;
	h=To:Subject:From:Date:From;
	b=rIJeRC/DBUL1S9Iyxtua5G5PPEZVx22DhqnH+m+iYTAMc8VtDf7FtKwLwPvDHcKrH
	 uoVcTL6WGNUQmQtx6XeI+qZ6ZK+3+pekaXKmNUDLMDLFGH3sG/KLCvMa38Z6oEB7rZ
	 S9uuWdntNmC4pXBv09mSZp4XuQI4UM76ZNYQn+lsziVeLKWi2pG/KiUAxhxHugmwnm
	 oRxrC1+hs77SvNp/wncHL6hYFIAwR+lRzAYqXt+ISHSEGZzHRe5fl9lp+OxsWrdRYW
	 QdEZt0Z0YihGOcITbXjhsxw25oYl/QBScRk8F+Gh3vryD2FVjoJmXdJFXtO1PC3GuS
	 Duc2FaqnhYNzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEEBC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171636080277.10143.8707093116542554953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97dcf6811fad3b840bcc253590d6745a4122f1cad0840b91b367ff18877c4e8
Date: Wed, 22 May 2024 06:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716360802
