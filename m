Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253F229994B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771168494; cv=none; b=ICLfTixM+f7oQ1295IqCpXfBiKHOTex2E0cRC1fheS7+7NiM9VO0Oz0Epo2PgAL12DCmJwGC6WepqLnNE4W4NA9F8VpzWrj5/CtsRW+ykg2jXH9bf0HlolezgVlGIMPDB6CIeDWKjUB+o5LmExEGWkbOAO+Ajyyu6Mwgy8jwewI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771168494; c=relaxed/simple;
	bh=jUNzO9mq1y5TjUiJdX5TjiHbL8KifCjKyDOfMBZa4wI=;
	h=To:Subject:From:Message-Id:Date; b=T0jaAA0zEd/oqRy+5usbBysg6WfRy4ezKT6O7T/zszGoQPAqiYhAK8z46ILOtIi0Y4DsxzEySfnBwgAUl75Sdrn25WZh8G7DftDCwIpDkeASPwS8efYCjeyi8hmxlGbOoPQzqqYGmOHQLdgF39zXqp8A5pVzXlRQB5XhoZXdg9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ip99FMRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ip99FMRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E05C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771168493;
	bh=jUNzO9mq1y5TjUiJdX5TjiHbL8KifCjKyDOfMBZa4wI=;
	h=To:Subject:From:Date:From;
	b=ip99FMRFRriXqaIBVVRsPXeJP4TF0pdY+azh6Y38QKiubFQwQ0VSckntxWZ16EcE/
	 mCznuc8Sx0SoInTPGc8/Rzi4tMTp9NY/tcUFrcdLBWKqH6E6BNWUUJYbIisCdwWeDs
	 lg+NS1spUJoC59k0E8KYLvJhaLMDkN4kzpBeuQA1HF35NIL/N1UW0ozPp4phTQ2Vpu
	 1y9rSw5dZMjYzOZcBeT3k0ivm3C1HnlEx3Y0562k7p9ibuSoNnUwgVGOU3xORA80vj
	 gbclRQA9UeoPI18Y4r4Bzozl+uQE0336mYOvkrwCLphNmDbDLRukxAOUPD43jeqXLM
	 KfJiiN4OLvCEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8AAEF587C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116849360.13198.6538155386959288721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2207ec8062b9d0d3a669a307dbd7e0e7232ee053679878edfffc297242d84138
Date: Sun, 15 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771168493
