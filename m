Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBEB4A0C
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751002794; cv=none; b=gcM7h4u+vaMkDXClVLD7uOsuU0+kKt/ZzQDZgaiS4p8sa5sxjubFDz1EXeQX1xGr9vATKT+LFdiF9wcjW/ylwi7aTd/3tBD9uFy+1XvmucBVYIiaad8H0c+mS78m1eeyenJ/1p0ULPB66AjMF8XrU6eoARmBBHBzSZyJROtxo9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751002794; c=relaxed/simple;
	bh=XJCBo2LJq2xNpJSgycX2ToEW3Q+un1Ga0NfASZ1/iNs=;
	h=To:Subject:From:Message-Id:Date; b=FBI1LZQM1YReHlguk3i/XLs1BOx8I0cbtT4LvUitvt1Z8GQUJH1KONkoTmuMUnBvjFj2YBmNy9cPQMMXu3flmaqgqi56Qvk7othOReJj+iHIZjm4gZJbSNWFG3SeQvUmoQoYwqh/1i3VC+ptRZ4+bytTQdMRyBHTtZvfCer/8BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRmQ2cPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRmQ2cPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8C7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751002793;
	bh=XJCBo2LJq2xNpJSgycX2ToEW3Q+un1Ga0NfASZ1/iNs=;
	h=To:Subject:From:Date:From;
	b=IRmQ2cPTaJMrjSDUur9DM9rCPVxrM+hF1quk0vcUSIh/8TlMbFuKXIY3lp87jTLhP
	 jU1jpILU2EC9sC8eZBS/lQJOQJs1S58a2TiL3ziMRkuzpwCW466Oq570KsO5/ssxsC
	 pWkHv20vgeUz4zQ1x+tNQlg69mCBHK6CzffFbMXZkQLDVOIAQY/tHwegPl7KNX7Ou7
	 Wg8ew2HkL9DKQqWTs15TiWZIQO1swwfccp+woW/HqtHhvZzxDJaKLP+55N+SVUWgQE
	 KID24sFpGDpbI51ourNwMRHLro8SO0/tZsidYsI7C8OWHeFZjynrTPbVNqNOHLXQ5I
	 rQj9UGQNP3kBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3DC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100279357.1343.17102571505457593573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb10cc792bb30b3ef23442cf429c1fdcb0fad3bcad7139da3ff319d419a7c1a
Date: Fri, 27 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751002793
