Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3AC8633F
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747016394; cv=none; b=aiSmM2/8QxpTzsgCrziQK7lKSjzu51ZO7jPUD+vPKsx7GpwomgEiGqIvKLhP4NY77S29/K5QiVMFXm8ituvFJLuSWgp7UgytGPlhbzTk1zyMMpKMKkXqAyZ5O40SoopCFZ0+eBeBm3QuwV/+z1rbC4JcuOiLlpQOzGE9clDff10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747016394; c=relaxed/simple;
	bh=yq2Rn8y3ahh6S5pxKg8uN3lamzbMzxcaQrvEmT+J+Ao=;
	h=To:Subject:From:Message-Id:Date; b=DNpxkR33dgokzxtw6JgfllTcVORdrinZRD9zkJVuvY0S8/W9UrHF/e74pD095ItSDbE/EQvhemy22hSQ4vCQ46F+WMalpANmU/OjByZx0b4j7F0arZQ5BEPaUyHK+dL3BR72KISa/9ZOy1d2BIEuouJLBVeOUlwqU4Gcwa/mD38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4W0Q/yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4W0Q/yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A206BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747016393;
	bh=yq2Rn8y3ahh6S5pxKg8uN3lamzbMzxcaQrvEmT+J+Ao=;
	h=To:Subject:From:Date:From;
	b=o4W0Q/yo3q7/w+NWULrUYNfB0e1tPxJVko7Gu/5FMLFAdU45wR29qbcJsWiVof+Gq
	 G6lo/XL6SwSZbftyp8iFDo5sxGxWYiU9fvBwbJx7ATIrkcYrhtVFEo6rZGNQQQP/nL
	 G3GJm68f34KLWiKJBGKa3xlJ9I1eHnc6Gi2OpywAQj0XfL3rKzM7JaHE0vCMozFObw
	 gQ7KFGmrRhVbrK7pEKKou49bgGlspqmdDhiuh0S83vhVy0VtGVV6XfakLR0f1AXOgp
	 DS/Z1Wlr4PmDFy1EaK1gkJrKsc5HN45CjRyy1ahKvy3ZsjBp/1ICpfU7UVR00UNu3p
	 MSHNKcSv5CMYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E883C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701639357.7125.10539420322697168606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285b0bd1767b6da609d5366e3dad4e83ecda28075fd0469b6b8fe9aea9ee074d
Date: Mon, 12 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747016393
