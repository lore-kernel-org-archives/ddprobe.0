Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF412C17B3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762337394; cv=none; b=FF9xAvSPO7kY9mDU5QznBbBUaV+mRKD6Ullup3wo36v7MiKnLtKGQFycLvaLwp1P3n1ZKGvRm1BCVCg/a8x5leHrQHKo6nXwe9eLpqqnDQV68OBgcTpekCtfhBAuq+PQBC5D1Dskm0Pa3myS0RNt6Ba1Ys5eBumhTJnhkXZhRiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762337394; c=relaxed/simple;
	bh=VQBabQn6JLZTJwmHLymktmlHuca5uId7N0yoWLTY3jk=;
	h=To:Subject:From:Message-Id:Date; b=NfV/29iR5ek7DsEFPzA8x/APQXBjsC5r8rI7Ww6W+pxlWs9acDX30BNR1cMMIkiAYeTVHgUzVc2nWHSeUgaIQnIiJuhEPQguzpmAPMIXKn2YdCkS3YkgbTaQnr41MpNOwItz3kSZP2E9BGCgKDW8CVIS+fRL9Cs0FwHX1ssjfmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VW0Dhg6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VW0Dhg6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A711BC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762337393;
	bh=VQBabQn6JLZTJwmHLymktmlHuca5uId7N0yoWLTY3jk=;
	h=To:Subject:From:Date:From;
	b=VW0Dhg6xSJAqbAJFC8kkLt5Y8QUS+alzJc7uyvCi+GjN2ZcvX11hDRBAagEz9Qi0T
	 rcqNhv86vhW+QmaCWfgQ003cHPIR13rkh8vqYBVOEAqPrAqYKKEat9JT/9kG0MLAT8
	 gHPRinw5zMYmXXc+3Ge9mxupoxiHdSpUOlRHVktx8hrIsNzp3Dj48DKOQtFis3/fGF
	 OGwkt9NKE3EZDpVh/BqmUuxnQpgo6NYfYfE9ZTtd7MEVEpEjWn1Lk2ZPFSLVqybSwB
	 LA49YhnwOUUClEUKjt9Jd3GrWNK1kwpTYk6TpzrMC+HScMjxpGjh6yC9/x9ntIC6/7
	 z0Ep8F13OXOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9786BCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233739361.8300.10408957014865566172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce478f572da58b611208f4e38500a392c2633b8e188cd9ab4cdca350488ce65
Date: Wed, 05 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762337393
