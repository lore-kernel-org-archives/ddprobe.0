Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FC82F9C3D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770381835; cv=none; b=D5wAKZd/JmzGFozhcVQMIhtlWieaoPyWbaCmsWVlUSPa6Rf4mNYv5qOAf+EEwgPdooZd9i0dl2NjrCiAsrnUcckvy6kVYOdYl1Uumm64p4wWQQD935JPsn+6S1XR5zuspf6bB80VBmv59tAGrLkzAH6V1OyMEqzE7SiCupzstJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770381835; c=relaxed/simple;
	bh=WfM8yzZjZdqomFUfxXrY/Ojcb1FBz80o2HdhyJZQNTk=;
	h=To:Subject:From:Message-Id:Date; b=rdS0a8F7cSjNO/IWreFV4/WO4JaT78ESUuxuMlxsaFabcZ1/TVtRGVLGVN1PHktnhDeLfU7Mj5QsKzyx+PRJdIXDH60mtdwblJk6WaiPdWXlNALmzb5fqHXtP75wmTnkKokyDUhfIkFwzTKbHVHc1MmAoeQoBEuTbAUGiKLU1TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVYzL2qz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVYzL2qz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54DFC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770381834;
	bh=WfM8yzZjZdqomFUfxXrY/Ojcb1FBz80o2HdhyJZQNTk=;
	h=To:Subject:From:Date:From;
	b=BVYzL2qzsn+0T4xX6XmA+9RXYA9SBJ5KYMOocMVkdi5LJE3LG4WFP0GR7tLb2AAP5
	 Sxl2/jQlmZ7vmiaruIeShTwwIuw0Cpjtcd5CyBWBCh4HrMcCZGohLGES2CQ4POd/gr
	 CLoB02CzrIS3V3fyUn6X4tqs8y2APf1ixn1fBkY1RdsHOUv94J91oGOAy88vlUj93o
	 qwHhtG1Mptmpy18KZ9pXAiQ8JN5cgcqTkRe+e8MmowzTkDCawLEjzZ5/FoGAcrdEkv
	 R3YUCuK4cYpI4BCvsvPiq37wHci7ArIYeNfmh7SSC5s3LcKhIDUOESG8xRfy0cr6fI
	 37CrW9VInzStg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013CEE209B
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038183358.7100.7171336315594084842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fbf82de3bec7e4468e418a0d9f27a59334d58cdb5393a6f3fa6566e468f38d
Date: Fri, 06 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770381833
