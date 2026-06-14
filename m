Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B26F30AAB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781413594; cv=none; b=VKiIqYjXsWYH25Oe5N1W7qpWoVO/Ov3iQt4vvYBToc6nq7JUQNg13UMSZPv6dIzUDwCuV02y9coJ2zHWyafQ0qq67haEa1dieGBtA1EEzWKv6W1ce4gUowjavrriS+DCyzTX+I5P24oaDHk2gYXTSsOf2aI6cUJIoo94JhzOQxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781413594; c=relaxed/simple;
	bh=nuPO8mfNI6cl7dK0ev1rpLpCp9J6dXYVFZmg8O5WHXs=;
	h=To:Subject:From:Message-Id:Date; b=EDJ1O/l9J2VlqnSgFvTXJ6FNQXH1LQwkvu0q5VHg52hOHSfUael4ho4/WnWWla2lj6zgRT/ngM0TsBe17viUPR3kIiXDTJVOBRUWszHfPFpCTjDxIbPz1bp7zjgIk8SbyB1An27hhqzuTlR81xinE2inpUFlO81GDZA4A67gq/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufbRXJE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufbRXJE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E54D8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781413593;
	bh=nuPO8mfNI6cl7dK0ev1rpLpCp9J6dXYVFZmg8O5WHXs=;
	h=To:Subject:From:Date:From;
	b=ufbRXJE6HLCsIXrxIKOj+Xlbir58YTjeKFmIayRiq6yL2x0PA24efIRrktmau58aE
	 bhuotmi5sqMjBXtFKjPcOMkl+YzQYMNpBq/DyVhUj35gQo0Z86QsUrY9zoQz/uDtOj
	 6jFzYWIRppHJdhBqJHbIqSbqKWkjCzdOkYTznb56EUO7DYUn5YvXmfBH65FJ8j4oGn
	 9v63FYYW/+jf0h9Mq16aRIAK/hu2S/H2VnmfB6re5m8EyQ76nesd9gkkuknXhFPZCT
	 5EdkgwDl4Cgyn+V/6AESab+qKRohNfWyjBGlFYW4mFyAaX/aAW/sqeOTM4ttjfkYfj
	 QC3rolUUngRRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3C2CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141359372.30646.9984735695196542138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be596395cf9ad77dce66b894d26494cc3933f37bc8306c6a027821391ebc08b1
Date: Sun, 14 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781413593
