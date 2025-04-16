Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8401531E3
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744827594; cv=none; b=gfps+yG2Ymov9Qljagkaqw9TImVURgJgZZWtXmY97pqwy+/xbxN9A/aEI8f7F92zlLwjqG+qWxw484cundMmml+niAPN+MLETtY5EzvCb15phWKnMZ9+RClTTcw3qes/9Yq2KKW1Y54L1nw+hSIl2Phlwr5flEIWJX7lFbRN32Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744827594; c=relaxed/simple;
	bh=dUSKesIWy+3ELg7we2xacpNZKPbCJ9Kcqvufkjk96RQ=;
	h=To:Subject:From:Message-Id:Date; b=eKeh46w3m/73BwbQk9GYMvY4M2ewDHDXLoRceJD821dCvafaAnw8LGt+q1bcgrv6UGMGeY87SRJlCBui0EH4cCTfGIMyHoPC2Am/HExE9XK47J6x6atTH1YNpq/dgObqF5Rk4gdcnxz/Qtxqg+qrylgIJRxSU3vQKWJhSk2ISIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q99Eo6DS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q99Eo6DS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA99AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744827593;
	bh=dUSKesIWy+3ELg7we2xacpNZKPbCJ9Kcqvufkjk96RQ=;
	h=To:Subject:From:Date:From;
	b=Q99Eo6DS13OB1WK3Eb0vyCLbVtAlo3qO00CgIHdrGc0LuC5ABCwYdV1QvhOXNQbEZ
	 Gz/4gMWICP0IZD7/mXXJtQw3OQNH7eq7lRSSfhVipfs3PRhJ3tKZkfVmBTJrQIb6vR
	 +AWUSdckFdD91O+supusGG0Zl9v8Cqa/HEXpyiVqXJVCo9s+kIoTDOrTeAnb43wBui
	 GvcUmqgR9V+F8xVoOFxKkT2v73YGQ1sVl2T6sXoPVmMcMZSkrgQXjmNGdAYr8dSFs3
	 ii1tnyJi55wmdq0w5OmjtoX32O8bhcxEzXhE8yl3zPKK3vTD537f6r5Lg9gBhm90eW
	 /rt1EElMyv64Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95165C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482759360.4381.4388133140350779084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a02d557305c64ad4a7c16bd86f82ba08359a9fdedf6f36b9ec8edee4ded10ed
Date: Wed, 16 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744827593
