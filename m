Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5721E7C18
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778187454; cv=none; b=UHv5+bxpQyP8Gts9ZIK0CZcpV8hQKZnE8fXf6VXiM9b7JObFZ7/Y12OQ0YCOoh9v6veLlvU2JofoGdefQcXa1+Z2UFRL85Gb6wiY1GL9VHamssCPTR7JzjJS/Gyd6xrwctIVo/zrNMxUf8OHxCk9wVpAXksrEe0Gwy9gOyk2EmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778187454; c=relaxed/simple;
	bh=86GF9xzXgO/5jLroMdk/8RjrDOOUgUsNjkz5Nn5hUGo=;
	h=To:Subject:From:Message-Id:Date; b=bjdl1WF5hYs9rAkC2rzcrhlfclOQbeLoV+eLqDTQaIeZtXJB0Qca2WnpDFwD8xggeZ1bmh7uJXliHocdjD/E5u6ttBsxcqkVhLDZDLTQUcgZmr3QSrJ4JSyvBcWWd/YCCuUZ1Wg+GXgTFsQHrsox/Hvcera/ODdReTatDsEvDaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WP0nuaID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WP0nuaID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA788C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778187453;
	bh=86GF9xzXgO/5jLroMdk/8RjrDOOUgUsNjkz5Nn5hUGo=;
	h=To:Subject:From:Date:From;
	b=WP0nuaID5JWdPsSfCfDk3O5SbOUkwtnESiC1vztJXCq67TC3bzvxlV1Mj4lCB8JUk
	 euFO3GCcU717Qs4bnD8TrbKAei66zA1YAmz3VLcms2foS5OxEw9PEBn/DSvViKn65t
	 T4LPNiFwUulO/XDjJnw5awyOQFWh0Q1mfxbnZOhBbRmkdCePwPVpLJDLqZ+O24/LWa
	 UzLZVDWTOhD7dx7FcxN63HE4ilT34pzab7MGqhxqO53su64b49BHqIVB8xaRqe3T3U
	 HVOippwDX9+s2DfuFlsHDiHK3U7WwZcZEm1pScvrQ6fCrzK8fQh2qrX8743EpVojMh
	 l7gyj2hTOUDgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8A8CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818745369.26811.17067724095312334686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce765090e3fb06de388cf71362b77700f604c01c5f81cce29a431bf096bebc9d
Date: Thu, 07 May 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778187453
