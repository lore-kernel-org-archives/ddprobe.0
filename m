Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774D380624
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720441583; cv=none; b=Tq4Ceyj/xvc6HMqGEvDjQsnU5UBec9FcI2MlfJNFI2LBTJMhO1LfvNqkNX0K5Lu0u2RkHCG/ccO/fcO6CC/DkA+nehS+lui4QmgwhthvSKhlrtcsQbhk894BQLGQBoQ+dG2wg2EXxAMNQlAsl7tbRGs6uuL7zbKTJVTCf8gBfho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720441583; c=relaxed/simple;
	bh=QBlZBaU+rLi888ms/yUUwjChMoyBpMvCWY+MK7WVzes=;
	h=To:Subject:From:Message-Id:Date; b=AV1pfJ83Ey7SD6ggZ9vQELST3gHv2fLjqpwYBsVdrAWkPxAeHLCoXBeiVMRAc+lBrGAh8nY8LJ2xE8do4V4oLfPkAY2FnEMRyev6etuUf8/h2e/UqMdMx/Sso2Dv6nxcrOm8VA2YYp+iZjalhjvb047J7nxVeRby4MyKWFGKqaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtkE0hd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtkE0hd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72C9C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720441582;
	bh=QBlZBaU+rLi888ms/yUUwjChMoyBpMvCWY+MK7WVzes=;
	h=To:Subject:From:Date:From;
	b=jtkE0hd9bq7Kiecf3fdhs2GgoysJ9pC2APz4Jf8ZVHPNPQh504e+T8J5oaYONmiKV
	 c+xEeU4WaZn5gnK+6cBFP5VRgq7Y3Fk+jGlqhj3DvmChXeTjpD4j7phek4PUmfW8L7
	 tx4M7qZOL4SY9acP8QV3u7iTtRtr+99JxXzB5RQbH1RFh0jNTBHCa/hNMLx8RKb+uI
	 cPalX95hzqOa3Vpzr6Gww58Eue1R12lDmo0E1Lvp2ufPmvcFaYA6v6lN4S8wzHqpg4
	 YtYBQwqItwrbzljdDHV4F1gcBZuS7SB7pT8o4SE64bOi+MZVSScisctOtTqwoIUzc1
	 nrnVTbn/49X/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D3AC3DA44
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044158286.20913.10490030953283144091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a990ffd702e6dc0a0d0b2f23a1ca3533ac50330b23f7dc2c04c8c220fbb6cf
Date: Mon, 08 Jul 2024 12:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720441582
