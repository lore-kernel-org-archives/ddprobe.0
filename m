Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3BA2E659
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746623394; cv=none; b=FR8Usox3bIJh21auB/OPNOp8WIVzEJHkMMqUy6m2i2MFyJc371rD3oAbypNTiYGJQ0xAif3DzE69Qqc5pJS2t6V3NGj79FHRl8Kr0p8ILwkS3HEaucXI1VDzmikA25RmcbKkajjAZsejRE55Yte5n+vHG4tgsxjKEwkUV+THKa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746623394; c=relaxed/simple;
	bh=szFHL5/tfhIheq52EgqzwoDKfKuGpW4DQPOn9meLZGg=;
	h=To:Subject:From:Message-Id:Date; b=UiU3toZnG0smILGuqDlsIOdEQaJzoV5piTqGi4/eWacgJ5WZ8PgJKtcv6z1BRGpI8p/CulE0W83gNedJLZKKO2MkCqvFo9/1yTKsYzmC6NYvy8C+7wjrUYoTYZmac+RN7VAHkCEtk4LUVwuqu3LKXATBygcjhaFjg7EPAHnspTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1izko+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1izko+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4A8C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746623393;
	bh=szFHL5/tfhIheq52EgqzwoDKfKuGpW4DQPOn9meLZGg=;
	h=To:Subject:From:Date:From;
	b=D1izko+Jxboq9Xo8DCXUBNHzsagX9bZTPJaoQQPBblxpMUPRR+8CBRv/NG3zWG77P
	 1fcvcGmhdOQU2fRcag1R+9gEXsY47/7B9ODBp6OI74J8F0z1p2q9NtESvKOmfcNa3F
	 MWbkZXHTZ6INKr+Ocr9IUQc/BVu/62f5Ks579dccVEJw/47F13+hQT+fAYfj631f0L
	 rKxY9CEzCpxT9u6XPAFhso2/zo2G2MQkRrEUuySnjnH3Pgk4nlZ5Vb/wmwAHIeZLwM
	 +cp3wJhAnQQmfP/LpnxBPMlL8AOLjdU627l8swFdDCSTE9DE4smgkFg1XopfJUe8y0
	 kUV/6O7Q4ePdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E807C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662339357.26070.15844316539062764003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99ac50c23f104b2bc1863397d8ae057132949be7fcb4e00f3b63f975f918b8a
Date: Wed, 07 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746623393
