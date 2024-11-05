Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A881E764B
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730841954; cv=none; b=g+7qL77wvhbBgs7gpNjweQY1dBWGJDaituiOBJs5UIh0OYRwUqA1KF/SWYJfxJhXFaZ8UOW3p9fFLYi/TTiUiKeb50JHJv4XvsAD62wI0pL7HhMxYBDzD5wmxaKUg8ndDK2raxMbLUrRtv1/9OXzL/T5vj2IZpTocW1KgUbC23g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730841954; c=relaxed/simple;
	bh=IXzb04dXWAMZNScNDCvJsjTIpDpLigKIrPDfeA7MB2o=;
	h=To:Subject:From:Message-Id:Date; b=VosbqUK8jY1o3S92IYAWknU9QlSoq9BJWT5m2CyjiU8BZnsxlqNFqdtxi2c6GStP9C1tgwBUtC4NN0BGsEOCgDc7Z9phpwOGhdN56zpN1ieQ4udM2qSpWIOzcDDhjBsQq1++02R4pDp/gDTufFGy6RKq/dDmGNPh8LrQL5izugM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYuu/WdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYuu/WdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE67C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730841953;
	bh=IXzb04dXWAMZNScNDCvJsjTIpDpLigKIrPDfeA7MB2o=;
	h=To:Subject:From:Date:From;
	b=LYuu/WdMW+9u2RZMFkdIsvbTrI1poIYrbTAQYZMgDrQzcacRQU7nxlCewS5HPouNK
	 3QPQyTY9NNxmf1iPhFwqzh1SSNUIzhib8v8HCQEbTP3MP4ZxwlDMnQYGyTbY+wIzp4
	 cOVFhLVvvfmSb5jcshT2aMpBTmkpJXOQhUXkS3J2NzywNbu6rrdMcE9UJueFTGhAUb
	 EHyBlV5sgsJEA1dDofTY4u+PBOSuzML26OtEmdK5AscSGv+kn7J7jdDcScImhlm2s6
	 LwwkBXby7lcP7OjgHdhvmnzEfsRugRzR2c9Yt499DH6N0jFnXE2b+SMsuWUnSAwD+1
	 ofgKMR9INuqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E8AD3E774
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084195360.784.1240730813889100643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1449d5b77e1c85c4c5be004ea32fec6253f6f2f52ad5ee8c4dfb4bbce7639b
Date: Tue, 05 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730841953
