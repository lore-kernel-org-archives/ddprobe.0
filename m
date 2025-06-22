Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2B71DE4C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750603794; cv=none; b=uT8i2gyFfi+eZsA5KYhjY6Dk7zv3Q63XVv7kNPCrr9a7NT3lw3l1eKxkat5gndWJytI3jfOHVO2h2qT6rkOcZZKiDXjZLRl5jkJu2Yn5FCi2hwM0wQH45HKJQB2zNyScJ6GnC/OhKwcrDuCD47cUKrKw/m8J1rtWHzqZ5J3coCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750603794; c=relaxed/simple;
	bh=YpWO+cwXgfWLPCi9WrSGMl36nF6hOMjlK9b9Ap0Q79E=;
	h=To:Subject:From:Message-Id:Date; b=ZWOQfMbGaXwdcY7He/lttyKslPghSNUhM35kW09cai8fLuUkUgdOxhU8uVGBTLbpj6XZrCj50OHSueqDHa2JlRw5ckbAk0fDsifZqWqmOgh30H2lsq7At75EuAHMzydMF5ePIRdho3iF/2HP+jfQ47aP7A6tFiLXZhBIKrqF4HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVy2Aj3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVy2Aj3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91ABC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750603793;
	bh=YpWO+cwXgfWLPCi9WrSGMl36nF6hOMjlK9b9Ap0Q79E=;
	h=To:Subject:From:Date:From;
	b=YVy2Aj3b0o7Gqd0ff1EvJcLx+UF1NBSZcTKYe2gieTpvbzlefGRAjOk8WD9mt0TtA
	 zAIrNeEtlgGbHA0TaGHLJMrFC0uIVw4IHCQOS68dRFUIBTkoi/sIjqk4G2x9XLWKIX
	 jbQ+R6bFifHI2k+G/GNbw3X1e6kuTQbS9IyPWF4zCIkx/y8lK1Kj3kt5cX8bGOrs9/
	 IxLjrMrbasbG53EOUn1+iJPXgZKBa0qHOJpof5R1st3VTeBx1yKIdImLWoC0czJgP/
	 PXO37UDkoaK+lKSdat6W9QY9fNChPkNAJb2sb5WdS/bdv/CjtuDpSDfgsRfY15HMWo
	 uj7GijAaauc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C11C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060379357.19634.12125610127731352702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf833151615530d2eb9224df61f7fe1294b3f86e5da5d2bf8f0b2c41e1f36e69
Date: Sun, 22 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750603793
