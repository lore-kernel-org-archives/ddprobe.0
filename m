Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FC63BED1B
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774593894; cv=none; b=kDa0LqMzazTHLdcTl5K5pABt8CfzU0RJlSr8lg61yOTOAtvnaV0zkIqyPjaEpE7iVM+X/jNKgwSAveB5yKwUKvdhIQ4gtPL8S3H770f1W8Nr2oeb2WpaEP4T6Q/nshqTg5A8vOxv1s58NSvS7pZ+RJV3i+cDhW//fjrnhbkkO4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774593894; c=relaxed/simple;
	bh=rmD/9/MNcaPjIdTBf4WiyYLHdPsp9np8ZxBdAZxZFYM=;
	h=To:Subject:From:Message-Id:Date; b=gQtPo8Jg9MT+N6FpTHEyIW5w+TQEBbPJnnlPD8qhA5pZ1c51Y5SUfLI06gcwnGcKlhMd2c6yq5iWfLwrCgc5vGckdTCIQYMxraLyDRhq9YabmYbw8dFrXF9R6Q4DflYXd1KxQ30H14BmF+o/nQo/4hwLajj4t2gfv5W5kMhBDPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJdEfdKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJdEfdKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A0C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774593893;
	bh=rmD/9/MNcaPjIdTBf4WiyYLHdPsp9np8ZxBdAZxZFYM=;
	h=To:Subject:From:Date:From;
	b=ZJdEfdKMyvqmfaP6P3lBn2dTOOfuzmxsVUbS1mDyqDLJ4u8AumF6ydvWFedo1cvAf
	 1bcD7CJyP6gPMnnL49XCc/C0Ner0mDXoKJfDLtct8pyTZSo9iDPB3UKzVPci7Q+RrE
	 uTuF3peZ+o4qQvOsSmDgECv42yfy8Klt0iTzAFgFR1Ll8K2y/Iaaksh+j5sZYfXW02
	 nVntGXChUdLPwPTWpTYN+wina105MlzF8MGTBJi5pzXVmYSy6O+euhR61smu5UE7a1
	 tMBStJ1PWXf+gY4eluLldBkoY0RyNOA/VAFrrnEIHlMyF06oiUzCzoPFK2OO6TlYwO
	 dlgBS4PPnap0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170110BA432
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459389358.8194.9591484276270704275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b424b7fcef60295354017c768f7b8e36b5b34e58e249545cf31b158b7c9ec71
Date: Fri, 27 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774593893
