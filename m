Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FF122D7A1
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780798474; cv=none; b=XawuVgx3yrbJhEG8wmgdHD9m7J7IFPODfO5RJrov4rGvYeCL3mH3yugfzriM4G0fwmU+psbFoGMOEE1ZwoW+9A0vRb01jkRhB21lESG6iviL02F+vABv/9M74fxew+WrBFj1KjmFbuGqdBD78BP0QG04+iUToj3j57zcXiIToow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780798474; c=relaxed/simple;
	bh=BhsAWAhZzjOEGUz9lBtsn20iUmjqPOQmTOsYewgVYqk=;
	h=To:Subject:From:Message-Id:Date; b=eY11E4zcEBDFSS+DGDjihoulnjlmPssp/nQMQvxFc4e8G0qHHbVFk76IYRz5eBRK37GL8sc1Hx2l83Pv24tavfHqebYlPgKiR9miT9f6OC/pEBcT+qEL/JWirWcbGOTtGL9XJP2IHH3BnZ0LDxOcfGaZn/vwy5sX61tq7i/2wII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoAkDxqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoAkDxqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78DFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780798473;
	bh=BhsAWAhZzjOEGUz9lBtsn20iUmjqPOQmTOsYewgVYqk=;
	h=To:Subject:From:Date:From;
	b=DoAkDxqELyn40BIfyQefv0x0EttgJMJV3AtTv2r83NGegShkOPL2D+G83IXypg214
	 iFfxjgwVAbkL3diwwE6aM8CpOb8q1Y66C1dy47lu3tgLJLYiQF2PZIOWYXw3Y0D1+E
	 FqMvpCL2RGVcJi1FkOfG/+9XbmyepNogC2n1Q3CXUxMY0WyWTtrV4rQN8Ye/R3ERNj
	 c1yodFKR8x+drC1sK/Uf63T0c6nuwuu1j+rjeDAd75Nl9qGIXFuQZyEO1W90zx5VYW
	 DdiSP8eycte1amITD5K4MFRn9UY4mb6onifK+3eC0RPEUs/uFr+xTeKkgiBOyjT4pH
	 ykn0wWjSDJPvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC58CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079847368.9625.13358504368663009716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84862f15ea7f4759df8f51a8ed33b10bf39911b478752aff6edf736369ee309f
Date: Sun, 07 Jun 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780798473
