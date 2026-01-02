Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C10221578
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767386034; cv=none; b=LyIhCyTMrY8r+2Bc731TKkKDkiV1gJM344SZnyic2i2NuCAHqBUhoDtgfT6N6UQ2wRG5nJ2cQCZr6KpEaGyQQqY68pKyVS1qORp1o1l94gOtpG/jlt+t6FGhENZHMuV2m4ya8cABh2Ql/bG0l0Y0M0AafdPtIiUTwfz0tNWpsEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767386034; c=relaxed/simple;
	bh=+wYMcUuDsLfnjdYAuIJ3UGRtQRPsAGeVHP2d1p6tSfE=;
	h=To:Subject:From:Message-Id:Date; b=daXGRnZBUk84EIlNLI3PPqWgxekttPCupc22ff+j4w4zWgnHkSg8t2R0JFIS3P77Wf8bVoaI+pSX5vKDFfzqACCPf4RtUGw9t/TspXBbntndokXuXH3tCe7X/fdzH6dh6Xs1CauVgjWoqUwSiUOJnGv453YbPl4c7LJeqEQr7Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnBX2ym0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnBX2ym0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7173C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767386033;
	bh=+wYMcUuDsLfnjdYAuIJ3UGRtQRPsAGeVHP2d1p6tSfE=;
	h=To:Subject:From:Date:From;
	b=GnBX2ym0AxNc/SHmN/IfmUveZw2q2yKNsEW/oDaumzjMbRmo33fXZMNynIMFvabLX
	 wlokUpcP8qAv3/lT7GFxRgMazDow39z8wEMJJmjjA4p5dxWQfy4CDbVMaZH4/rUJXx
	 vTXqSEEn6x8wfy6od/VznGUS44nkVK/2+5I5YB3ieQ1lCfpXebuKKMWVRgXBTbNhZb
	 fT8JIxCZQIHLnXvBJdKIR/QjhDstvX0TDuh+8G4DU0WxLH+nry4k7Dp4IuGMFxWB5q
	 YyBFpNntB0S5//uvvSUbqITbwH1fRP5v1pQ8ffl0rupfYFKJma6yr9lKx1Cm94nYJO
	 DWTENH0l/EAoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953E0FA3758
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738603357.22954.16885076238977613710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415339d4ee67348e9c142f31ed80e5b2f7ef4b051150d93b907273e787aa4c40
Date: Fri, 02 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767386033
