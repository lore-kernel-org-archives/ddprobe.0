Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F841DE4C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736178354; cv=none; b=EB/+Jl/zv6s96TSpCOLnqXqU2mzh6Y1WSDEygmE3BwLinzuMuXq0kMavHXnNXyOSoxh4mrvhn2Zpswjpo3dbsXJyHnrHv0O2rFL/rsCb+gE9/w18jONeaV9TWzTSS9NewaIxDFP/pzZb8drlhnIHx9N0ciw2xDNjzaCkTjsWiuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736178354; c=relaxed/simple;
	bh=SOuGtY0QMhI02g7GPiYm9TOL0gcMQnXA0g3IhhTpi2o=;
	h=To:Subject:From:Message-Id:Date; b=BjO8PfEGRAg1anf5QpdDSA4Tr+wAFtZ5wdLh12opsTS95opMCEwqZ4auVyMQ1/UaNtUZxmtLmv8su1W9pb8O1WYQztLAO2F+tbvu8qteb+ApNoTKTqtYSJuR5Cc5TCrGDq97+8O/cufIawiokNzj+6sBg42b9Z2yLIeuOmzepbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npPf4PQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npPf4PQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A70C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736178353;
	bh=SOuGtY0QMhI02g7GPiYm9TOL0gcMQnXA0g3IhhTpi2o=;
	h=To:Subject:From:Date:From;
	b=npPf4PQ43HbABSi857xgOFjFmyjPiADVTsG5mDReRHEQAmpyFaZkQlFoUzDC5Yxl0
	 jHKVMVHp4Q4NWgf1uubR6ZZf+08hu4OOXm/dupoZz9t2ENdBUWz9gTSZ/kUCFzKMYq
	 fWDS4T4pJ59dimaM9EG9jp3vXlVLwXNkqUU9YJMXXM/dlYlOIuGucvitblldnWQX/S
	 FHp3eVq3D1LCV8YVLaxIJESNrgW8tb/MEO20QV9p9Gey/42xodIzUTjHXodrw4FTR9
	 KjtO78mUiEmf+AEwkXjcdc6llQ7HpY2tTIH5o0mHS9faxq7W6l/J1YN3E5t27mXnHS
	 o01kKCN6os6ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A6E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617835359.17731.12500104236463663458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24904ba36106d5eeb781d5669dd70a3243dc799a45e5802e61c67a0a29088c81
Date: Mon, 06 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736178353
