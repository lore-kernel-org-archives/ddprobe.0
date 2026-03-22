Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30053175A80
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774178694; cv=none; b=E1hH6u1KKvtOuSSbIzhPDmrXU+WwX3AV8PhvVuLZeWA+AXgenS32WtzJlKL82pmLuNyPhmXuVkvgJPgkzem/6El4p/FibB4c/9Ux4jlgm3ulSrbdleGt1rnMxPIvo3moivm7LNLfRCgnf1EXX1TETCLWjcvZdAWLIiN/ZK9kabg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774178694; c=relaxed/simple;
	bh=JOWtt80rQMGpVdBrVkZ+UlHxNVo7D1AXwAGNH8JVTIg=;
	h=To:Subject:From:Message-Id:Date; b=HbzgolzI2zxctuvHVrE7kDlm5SeiODKW0PXlJK841ejLV/6+Lj00ujbZiF85NGqg40NK4jgnvvvZE9huf6DXcdiAWQVTN0U77xNb3NXFdau4Gys5rgwSnaCZEcNt1l/z/3xOnhPEmSe15vWjfnmopW50V3dYyMYJiJ00D9fs/mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7pekxxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7pekxxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12C3C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774178693;
	bh=JOWtt80rQMGpVdBrVkZ+UlHxNVo7D1AXwAGNH8JVTIg=;
	h=To:Subject:From:Date:From;
	b=d7pekxxizaBESHdiuhwCGb2SnF5YcYQPTxYKdGBais+4xDrBXrz8si8DWAm5L2Mzx
	 Z+7FeEXgMBA8yrTuE1362jQwk50COSlny0NQZQHZYTN23DcmH8STSNnpZqA+qD2MFb
	 6nU8Qln1g1eZTeCTC7+mydP9HOyeffy40ozCTBRE5tu7KaYTq08Nu7ZepftgrHzral
	 90BNuqM9TBvwl74YMIj/CMLJFP5aP2Nf832Y6le438Fw1fAeskj7snP+uEnSslk1SI
	 D/qpr052aBXqMqboFkv08PDzY8M/CJU4E30I6UgQSEVskee3w9X5R/7K3Q7ghpp6CH
	 Eu1k85yG/+/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97684FC72C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417869358.21113.2115304823127379948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168dfee17edc0fec0f4c10433eb0c5a27c1d34b8068d662f0c11ed61ec122373
Date: Sun, 22 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774178693
