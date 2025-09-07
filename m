Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A6B194A65
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757215794; cv=none; b=tIeaTt7otmaPpU5dmRyVL2PmOBz4YG1YlLfR7tr48gUqZuuMXhn4t3hcO1RHrEm3Tb6pD8YgaOP2/BZwpVB0Zt61+NgecRCTC5kla3FE0TRPIrgiG1MyymdMRCtpEMADbrV2/yM2kzZZO1wH197fUnnkfUts37gmYL9iv/+sIzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757215794; c=relaxed/simple;
	bh=r887bVE6DRZ4YnKvy2WjSiUcs5njRutzLzerwuG+rvg=;
	h=To:Subject:From:Message-Id:Date; b=UA2BEQAShIHdaT07xIjecDrcIGOuDLQHGbqL2HhHLacvq+hjimEwqDsJv9LfPFN1bW5lY2yqdN/5iRFRF5SG7zE6C2D4Vc51bnwCia8xiKNJFAvaRNBZe7CkPMwg3x3r1ppCeoyr9Qq1szS7tMJ/BmuLwndnHhPydLr0GN1UDzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ur99Md2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ur99Md2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A796AC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757215793;
	bh=r887bVE6DRZ4YnKvy2WjSiUcs5njRutzLzerwuG+rvg=;
	h=To:Subject:From:Date:From;
	b=ur99Md2+fdPXlHpop/hL8cFGndpLE+hbtPFanBCAISQbMCHzWKriiMWvJDCHTGc00
	 e8/PKqhH5BGO2Le29kmI2t9W3jfw2mji2VmOJabwWvb3M6gO36O5+usWXnJG6JJdNh
	 D+a7/RPX3haSovMlUt+gv+Fs7HMteNAvIqRlx5x32OZS7vLdMXYQN1KFtRl3obYGbZ
	 EP98a4ZJoLA+itmTIza1qwA2PfwlHw/6mFJrFqxNs/Ih1DyKWJv3A/jInhSDwmRSVy
	 GcykBf3r8vEIlAtW2kiJGRjNX9kYq64saU6sVkrvsgCfnRejSGh7FADxu5hUm4RUtj
	 OpFXcK92UH1pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A8CCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721579357.7798.9399890382633391781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67bad71bbf29b648d4aacae72220d089fcdf86119d4bae481e3c62bdf088161e
Date: Sun, 07 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757215793
