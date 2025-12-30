Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C90C222587
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767072234; cv=none; b=Olarl98H3vv58+HeCK5QYUhI+NoDcnryAGj+jr7dNE5skDiZ11MF8TdfsTpx58/wsxryZRtlx2rzMPqTkTYhN+UagMcViKdoxFzQjLwYMI2vxZe2WwPI7guCvmfim54ravRBtyXqxPmJyg2bvA8zgwgJbrP0mnVE7mkTLie4Fw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767072234; c=relaxed/simple;
	bh=4C7tlGvf2i/2J9DFKbVgUr2VCWGj7TMq1OUaF0M3p9M=;
	h=To:Subject:From:Message-Id:Date; b=cYaLdUGRya/Xlt+Saiu3klArtHJfzXaXzkBrBdZ4XQrZn4SZ3k0A313caNMjo0zXLd/Yz9p3U3COq45RlEa/8F398g5RaWOjBujZhzFLb8QsZjOSGFCTjnWMp6R3yqss++0j+HduZDeKZHbvhCVcbv5NmFlx3DDtNCgA9Mv2FHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDfFs98R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDfFs98R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63BDC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767072233;
	bh=4C7tlGvf2i/2J9DFKbVgUr2VCWGj7TMq1OUaF0M3p9M=;
	h=To:Subject:From:Date:From;
	b=HDfFs98R3lgaMKu1J8+PAYxoPliUkh2Nif682coc6wvgNcWs3O/znn1/oV8b/sbfT
	 oXkU7K0dsBWA80W/UbYpIDoo8ujcuawPpFfAS7gVqvDKkRqDKjEON17d5zIaAkMGcr
	 v38ydVpCoe06G5sYRbM5GJZIw2zRfz8GUWoRVdTh4kknANQ5BeJNDM5VyODv4pwF2m
	 2ATaVQpuQllW2TXkDw31fAC4hl+u9JasxalzUKukXttbW9mWFDoEgWPI2qD7w5y1F8
	 nLrdrDApoWd0QDCE3eVvSltAivKl/AZuEj0wwBoEV9hMD0ICAZ0KC5jzZmdu2E/G02
	 0GIPRwoAdYAQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95307E9410E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707223358.19760.801823726965522742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3039f7b6f834ff318be21dffd17288611dc5d2eb50e4362e1470305d9f9ded
Date: Tue, 30 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767072233
