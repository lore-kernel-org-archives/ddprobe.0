Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0302DF68
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777602454; cv=none; b=cCxRR7Ux62YADzrfNme2Q0AjJUvw7cltOArenOD0KXaviJMnWluj36km6kMJM+QD5EN8k08+523eNkIdKL2rtU4jHyGFly6II1UGXKC6EgpKi2+8po/pj0Nc0UgK5Empc94aZu4L3G4lm8m+SWCT7bsgnBwa9EbqI01nwBeHOUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777602454; c=relaxed/simple;
	bh=qVu00R2uTgYoDL90j7wV/nsiB41v2W/9NeAKSbONhi4=;
	h=To:Subject:From:Message-Id:Date; b=dmVSBLeczpBcjhU9JJxpV73MtdY4YMlrgQCdurUbK0W6ers4lv1urRdZdiNK0mkOPpImfd/rU9tELhDAiGgzR/GyNylBCYZ3Vun/QzwVguNSKYsZ+3AC6wa+6lmBpEFdkullL7UBmUVwO+KttvkHBfXVvDwILAR+RI0Nb1NEr6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1azpwoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1azpwoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A5DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777602453;
	bh=qVu00R2uTgYoDL90j7wV/nsiB41v2W/9NeAKSbONhi4=;
	h=To:Subject:From:Date:From;
	b=p1azpwoyT6gYFbrl172Mo6N7zNocNL5q4OrYfHSglULj9eQJA6nRtqaZWcF1GGhuF
	 7nDFX3OiPYrSmXWw+0RtinQAiXuJHKU79pm1x6AkeI7NaGKYmY83HdOedGddjL37tJ
	 1eZ/ywLsg1ovignw347ljcc2XR4zrVPLFsc73uE3PESp1tj4Wrwr/B050XmfnClbGz
	 CB7ZK/nIp7eWg+YpZADR1IXGZl3lThQyJ1z2+vLlNg1lerQDQlVKACxRTUcOnVnaQM
	 7JbSKDborf85KLcAH8WgornNAITfoi3weAlf2R49mbtZMEcbuy1EYlgNguDH+8RQew
	 WsB77zf1MJP/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F0FF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760245368.28872.8704836531088394480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ad561f758846ff493d91de68c50c6424fc7afe18e10b97a677d9923a0464d0
Date: Fri, 01 May 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777602453
