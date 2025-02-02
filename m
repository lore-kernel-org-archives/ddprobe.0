Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5659A320F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738457155; cv=none; b=hetbvS3nj28xfLANb5euRRf1LW/p1s7CkYCdxB2yulmVm5/FuJmjn5BLuLeKsGJ5+9yVBZo+J6E9IpL3fWujDJLRKGs9Slbf0pjeR+UBt0jsXVk3NklqwgcbPcfp2Fg0QjRQD+dTJXTg4Rijv8c2YIcP0Q76CtbOlzchtKUQ1As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738457155; c=relaxed/simple;
	bh=1JX1Z/Jsp5BurdG/g9xFenZP7aXfcaXxBD9JMbGLGAQ=;
	h=To:Subject:From:Message-Id:Date; b=QonukaY8f2ku624GoM+nQ9kQUqhF622ghcncZhm3IKd5UwxylC2BQFjAOt5ZoSc19ArhRHKZ0wI9Vq6VP9wMuwzoDXtBpmGwikWWV5q/r8VQ7cDYajeaGR8lrkHafumSGmyKfVbSP9mHHTT7Hd8TGsHnwNFTSGQAGPNJZwu2Tpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rco72PtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rco72PtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7653C4CED3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738457153;
	bh=1JX1Z/Jsp5BurdG/g9xFenZP7aXfcaXxBD9JMbGLGAQ=;
	h=To:Subject:From:Date:From;
	b=Rco72PtTWEGj8D2zOjRUv7iGPhnBAaOS11hmT4J6rLCY/MCQMZcn72tLuTYpTyeIF
	 igWqOzmp7Sye6532GxDJtBbuok3jEmv5x3v4eD2dwdnyMbz8ESEMgVhN5cMSqKsZtq
	 ljLVoGS4UsgNtSqddwyJba/78S+l28yHRAG+mlmKYnzS9r9moK/iffD5qPQ3Di9/tG
	 49zbnlJYlXrZ5bbf2a4C8nn9/yfKOhZoxQ+HfKdGfCOpUg2E80UHdVoh9h2+ewokXt
	 8cw6qLD1cudUzDTlQYel7ePM2z3TeImx22a/cfBJgavJf7AJyTKFQOPl0xYxaipXMP
	 0Olarce+kPsVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D081C0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845715360.15625.7791966194860204870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed99db58e8034f5da4901d9e143629b445339399aa078f94b32a75e4c0e63bf
Date: Sun, 02 Feb 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738457153
