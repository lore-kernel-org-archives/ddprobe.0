Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C57B1DDF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713125363; cv=none; b=aRV1L+WNfSSWbEz9NS9Z1Iy86u2rh1mK0cqTOYQNVBmAUoTKj18/F+wdiNTsALSwDbnjtHxz8szGDYpAntF7mk7ZugnudcEwaPLZnxVcUbLVCxvtG8OVtLiujhrYBLDxWZILSJ5hW9G2Nn2dz8y/iaKP9M1y/0CIPFnH/fhcLMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713125363; c=relaxed/simple;
	bh=XQYrzO0g7F7OFlJzotvNEakxEb9hV8NcThtN6Gmo/fo=;
	h=To:Subject:From:Message-Id:Date; b=se44BAg9oFHJ3ac62iFPPYopp0BnN/M3T/XRt2Z4aLldeHst2yUmYGWANLYR2qXdo+1CsXeZ0oRyQZf2QFA/tMGXbZ2t55WiX2gYUqkLZhWoEV7hzbCAA/cRIVwCQAjgZowmWpCnhIpCBl8DLnJbNr82AfEb6Z0vy/IZaFfay6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn8WQopx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn8WQopx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55AFC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713125362;
	bh=XQYrzO0g7F7OFlJzotvNEakxEb9hV8NcThtN6Gmo/fo=;
	h=To:Subject:From:Date:From;
	b=Cn8WQopx1pV1K6+O2ssC13rCHS4aVu6ov2K/I1feicKtqDa2zXOAgzRqpjpFq60JO
	 T4r7uVA+S8U0HjAkdEZnIKEH1SkgFuOiXBul00j/rdODPkFbX4Se5PvPmfJjBAB80J
	 3JRl7XB3Bxqd+Z4/8WvH4Pt48pEUv43UDuWHduPpY6dYCg62xKHCETKBlxpxZR8dDl
	 nb1exy6m0TWTIjDRRQCVb77F/xR0MRCuUHY1pHsMmzDPNDI5/uZ8kDp0i1rWG5JEpO
	 C16/srDacu/A1DBM+a7r7arT5L8yr+6PvyVTg6+BQ2WxHFlIAdjTT88fdHyvLsqsSd
	 y9jC19JfYdNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F1EC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312536275.27021.549581836858227837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73cdbb4a2df21fce3c64e6b3710e6e94c61c62f1cfaed51aa3c64434a5393fcc
Date: Sun, 14 Apr 2024 20:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713125362
