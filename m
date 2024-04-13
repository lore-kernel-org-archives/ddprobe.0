Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438823FE55
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 20:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713041963; cv=none; b=rSmCBtz7dW6bjOFvezDjc8IASuE9wlpq5FMuKJp4vUj7rHURduyLtj+B7phy+Awh66XnrIrbwKjAJg1a+HOxzXDuWu79MUWqH1Gw9466RrIGX/pTQuS3M6qwegZUZ7iNw0S7SzlIDBnb4lJA5/3hqxJ5nyXbNz/w4FbmFY+kepA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713041963; c=relaxed/simple;
	bh=RH4tKD5WEuiUgmWGvYuqMHq4ze0fHqIWjdZoykMUP88=;
	h=To:Subject:From:Message-Id:Date; b=kY4dykI0572PhcfHVbN9QDIdr3xU5fZ/z04sZ3DmFUQm9sePJ79OipKW338iwXWgQUqqShNZk42N++T86gXBBL4+3D1ET3LFjiQ1E2xx6iUm8jDJRFiUyfpC85mlCtS94qIOLgqljVTmMEyUiDWxrqlwNXuhds2amgedzL6ZDas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AK9IBfy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AK9IBfy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05DFC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 20:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713041962;
	bh=RH4tKD5WEuiUgmWGvYuqMHq4ze0fHqIWjdZoykMUP88=;
	h=To:Subject:From:Date:From;
	b=AK9IBfy0ucxO8uT0DVGZYpqTCE6hT6tzQRokhLUJ+fUib55xRy865A/0vZH9Iorbo
	 7fG9sz3ovjQwNA1hl6Ru+eqmqjUAjD37RNv+qbrPokpEDXYmTyLU9QCg9LUpnv4U7L
	 5Z+lMQLVix95tQo+4MuRsneRxuo9xHO0jx6kIYmcWX+MNQSnwMnGAWAC+qv+Wcf7bF
	 rgtZ9M0bZ+peFJ/yXejeIE5rO3893hubD/RkKGt0w1RhVnpWRUWtS71ggfnQVVAMOm
	 mYKF7jXpbwf4owrtwNV+xVYqmkpTldEA1L6CgYtGZSSnesp/C8Zpw02gtnyrbpjcCb
	 OYCTBOo6lh4BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF28C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 20:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171304196275.10672.13614926134212458200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a8a36f69f63fc673b5e848ea6abefde229c7890ead46360655f9183e57ed05
Date: Sat, 13 Apr 2024 20:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713041962
