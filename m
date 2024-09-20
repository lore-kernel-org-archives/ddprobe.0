Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8C918EB0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726856754; cv=none; b=qPF2cnZjnQbGbxnvz8hEDW96MbsIoVad4YjtXK+HUfSJInk8aZYX2itrnJXlw5hQKfjkRMDwTfDsKTwS75AFtnqM88rZyMeFtf08xdwXm26z3PwGgwAI5rQ2hj2nNQcCIQlp3E3UN83ekQJdkoJ1jgpeP2uxWpkU+EdTHfBKn+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726856754; c=relaxed/simple;
	bh=EBZLLvuEIdzxAfoJAP5LFsRhz+xzQiAmCDGkhubxRk8=;
	h=To:Subject:From:Message-Id:Date; b=fIeCHOcm9e62deLHl+Bi3Q4r0KWlsDQsORfvSvlBW5N0hPJjG9Am5SEFngF0j7z4Tn0BRZyXzSRu+GXUdlf+/DG+ZPM5wKyt7uRYX171VP4BPiK341C09Bj3mk/YWXL4I1/jmBRV62cz+p+NNIZNrMQiiOITuZUcyygCQaPGs/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfabKPtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfabKPtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9385C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726856753;
	bh=EBZLLvuEIdzxAfoJAP5LFsRhz+xzQiAmCDGkhubxRk8=;
	h=To:Subject:From:Date:From;
	b=PfabKPtD71Iy0srewzZMXmhgdA5jZYW967oXF72bNRBLcCmPmP7F+yDo0oSEBV7ZP
	 M5YmnG7pnpja8j8uBrcaytFnChjPI1YzR8TvGv2Iy4HV4ysv030Eyns5BDV3mu362+
	 5Sfb3LFLfVUL0avEs24FsoX++smorwZnwn8INn86yWZhp39/zPjWmjdpJlfoQx764l
	 BV+ajpECBJegsoeCcQH52I/fbuevOJBYfrLLF2k36MpTgvjlw9qbjjogdp/3hnH0Qm
	 q7h+QeCskljJVX8M2zVo9TIZEKv6K7/KwhahAj7SlGE0uzOQ0Jpg72rr9LETu7yxKw
	 NGdQtVyiI8urQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E444CF9C5F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685675357.25173.14942869680011058121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ae68578403a0f5ec83ac61c6d3dce2b20ead737818db0b08ec3ad0702b54f7
Date: Fri, 20 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726856753
