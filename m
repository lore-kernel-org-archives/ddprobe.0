Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183CC146A72
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754731794; cv=none; b=m8Kp4AUABBnbZOXQmsGFjoxCtZ9UkRG5tnO4iG85DQbZwSDLM+JeovJvFFHThSgjzy0VK4dmUD8S0x+WGdfsR9YPlorVD2XGwbPDkvO4J/deSLBofy/fdSFq55+ZfEjhAHiOlHvR5WgAGWEML0JixD4vnRXVH6l2on10JikD5UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754731794; c=relaxed/simple;
	bh=qywO/Yd7H7g5Bd6ZJaNRLK9q4flkKDujCJDc4nZnn8I=;
	h=To:Subject:From:Message-Id:Date; b=YgDhrlkaHN0BxrcG/6lgn/fEQNs8jUt/ofpATKaDivr7pI/f731pEyLonUTE++KmaDmPZg50vxvHugcDMR9SjMM54lVXhUv5OJnTSvxHs+jtUv7fe5/pMBtpg7Kffu/a5DR25vYSJNw3QDCPeKkh0CGCzcHCGCAOAyy1obHPCmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utL+aACk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utL+aACk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754731793;
	bh=qywO/Yd7H7g5Bd6ZJaNRLK9q4flkKDujCJDc4nZnn8I=;
	h=To:Subject:From:Date:From;
	b=utL+aACkvpE2XgtsGzwyjIefpvBZPl/GnXwptdYRSJYup5QiRM3Be5F09bZx5EA0L
	 wA6Enj9SKfsyAA6ZlTWoIFfrubD6RMEdP4mBijK81YPPLosOHswGxujfOjmpsbYB5N
	 y1QgMtiixcbkLT1fh2L7+o1+4+r2qT9tYI00iPLuCTZxdGSDD0X1ZkMFHuvsrA/2Me
	 LOT/rhWkAqTadsCkz0lo3KnqnM3WQQsnGVdgU+LPbwf5U/BB1eAduquQiyhIdBdOr5
	 8/1tvpbKlzo13Cga1Jwd//UV0lDoR3z6pGyq2oXFFpF8qViI2VByN/9WOL6B2lnlHk
	 it3CK/aVkxUlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F174C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473179357.30065.7081202293918983873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9131cbd8e953f895fa48699e0d71386674c8ca3fe6257b9c4aee52546ba8191a
Date: Sat, 09 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754731793
