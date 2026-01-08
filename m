Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8AE2EAB72
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767894235; cv=none; b=Sb5Rp9qeUsdEn+DLKV9dZ7xzdW2vFXTMxWfDYEuYglnPBaWOH3W90zQo3iI6FekgsYZ9po3O12BXFD/69yDoLEfy2LhklUtnwPS3Zlb053XWQZpM8ZHPt7tsF9/ETktkFza1xWV+2p3T11k9TT1dbjfSN/fbQTUooCxhxCbdkJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767894235; c=relaxed/simple;
	bh=/ciHiQUPHKQJ/TWYRVkzRZ6DVKVW45UAFM6Zm0xVnyY=;
	h=To:Subject:From:Message-Id:Date; b=EbSah1hOjYUdbqphc/fKqcpp3Ise6B81W5+qFONd6X8i0V2E6uWZUxlhD8j9bVY21RK5R4mUhflBjh8d7+TlHaedu4SSju11YbixywU/HU4OLJ97GM3qEtRiWGOcLJprpdnH3V+gJJLiwBxHyzlr0wHoA9bhGOC+Sytkhg+zao0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJLTF+DU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJLTF+DU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1EDC116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767894233;
	bh=/ciHiQUPHKQJ/TWYRVkzRZ6DVKVW45UAFM6Zm0xVnyY=;
	h=To:Subject:From:Date:From;
	b=YJLTF+DU0D7CHqtDgBpSrHb+NBmN/KGqmGVYMTwoBm/BRilBy1dRxJ/RVEbY0o34J
	 /7nM1gCcKvWJFsTxgougJKmelYgTBjWTFtdsWTxdHHjvBWdHAHDMKulhzRWkk5fqLu
	 0fYCzJvc9whAKxCVWYaBRFsqgV+YWw6SRE1w/DGuFPARmamyLdB5VWhq65VBLQwA7k
	 yIk1Yl9j+wErTn8pP5itADOxSGM/Id0jhZYBCcfLoJd1TF7BbPCIXZfUWBNCFcKLe+
	 WWz9wche3CEsvk3i14toEVSB3oStpmaIjIVYbSSD9Y9WDBfdtMKB9abmEESXftF++1
	 e2C+Qx8iRhMnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB9D1D484
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789423358.17725.13584703086601566097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b4ad5686b8deb08fef8d409e3fc50f51bc26ddffcb365a8d34e2d0e43b0807
Date: Thu, 08 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767894233
