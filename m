Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C001DE896
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730132754; cv=none; b=TTRRLbeP8VTge7fl/oSbKER63RDHmOJypQH0LQvGboIOaqJ7l37CBuLNA3bHtgX+U7k36GsxnjQfPTXQ4/U2gu2n6F+4W3SALaC3VJohUhp2D+eISjL2aKdUMptqNBUcGAVIdjedhDYWxpfMks2h43DYHaRlnukfpVfuZ/TBW+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730132754; c=relaxed/simple;
	bh=sbpnMB7b5IcCg2o974i7BJnr5gL+f6a1m2PGyHyPV0k=;
	h=To:Subject:From:Message-Id:Date; b=B324UkLGxa0DPWVNiDFyckEU9QFl1gJyfC4soxtBFL8aj5k9vOAmDmSxyfWdwo9QOTokRdK/FnkHpB/vp4QRXAuf8x/ht97FmYfUkqn/MlFuXebNF7tn0i5mr7ZU5DBqvcbFol3h61teWFh3gx6WDQI6ir0cV7Xj61HBOUqBEic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+ZASIeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+ZASIeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57A2C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730132753;
	bh=sbpnMB7b5IcCg2o974i7BJnr5gL+f6a1m2PGyHyPV0k=;
	h=To:Subject:From:Date:From;
	b=X+ZASIeqmMJaEZh0nTO3IZzJYOA25m23VifKY0Vv4rzm+PTIZ+FWeKHOvcPq+Ti01
	 uIcaPCVrzhZbPrpbS2TZvRJb5b/JUBZ92Lb481he/Q1LTOZMl7BF72ARtSEAkoa2Rm
	 uFhZFP+0Hl6OEONacjtuqCiZAJq7XCS590ujxVZI46C2CKini83i9zLxB3mTOjqJfZ
	 Rvg66F0g3KX7agXgwnjjImx09kUIlYdLfI70/nia/vyw8tdIPVtgo78AnpgOMvpHfu
	 RYIPb2sqRb1w9RB5rO0QS+x1IRtwJkqha01i2yo2+wnNhCWgv/MjYnp1jbhtpTvOR7
	 D733pzIDpxrfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A613FD33998
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173013275366.13854.15336783306976169352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d12d334685c98865ed793bce98d4ececae04d535fc1e9403e704ec6e325c945
Date: Mon, 28 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730132753
