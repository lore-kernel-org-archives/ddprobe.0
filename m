Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC9354654
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760095194; cv=none; b=PgeuZmXmGgOUL9mVS/W8jFGSGQLYBY4VppV4xnQfaYVd2D1ReeJjzCFdCGcEw6MueOCzQbz32E9SPQF1aKZaomlgE5I8knAlYCo+WiHYqmB7Ds1FzCW768rnAjxDofVdEsul0Kz4slT1JUCVBG1/QlwRRz9IdH4ub+s1Z0lfuPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760095194; c=relaxed/simple;
	bh=40JL/+rua88sGPX3VfTF9KdD7/6FLln6gqVDgnOq/9k=;
	h=To:Subject:From:Message-Id:Date; b=a+8/AAjPz3Iv48tSaxKHyYbjBh8KpnsNb/o+MeAn2zaxQYhaW5hoHqY7mQFjkqZQJLx1ks1nTu7Flp9s3+lmq9aXPles3WGO99latbxIBBX7iyy/43LBS8m0t34e0DW1GKpewVH9+6u60PKNt5iantUHDdAOu65FqKBvQHaegy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dueKgOts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dueKgOts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9501C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760095193;
	bh=40JL/+rua88sGPX3VfTF9KdD7/6FLln6gqVDgnOq/9k=;
	h=To:Subject:From:Date:From;
	b=dueKgOtssLoO2GJtDAZzAtsbZa1fSlDVXZ/oTJDIsPcu6cOSgCupKkBskp66S1o+U
	 B81rX+RdqqgPBNb6gstNrpvU5uHsIvg8OOrzIXCakO8wQoVmI3Zac/dh1MEiHFXpKP
	 vO1McSk3IMuX+akCgctH1q6CRupQnVQB46nZxGWpTubLkhD90eBFrYqttJQwP3YO5c
	 3+o09BeBgehrT5Z2Y8Zd36qmoWvxLRoK8IfjQ+WlFqwLOz+XDKbBJPzfZKHpnoCwxY
	 u11dkVer5096xMz3oUgMBicATFfYahqKFCQsvtikE4DGdLaL2U0KhZm8UIk197ZMQU
	 mIcdD92WaYZ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977EECCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009519360.31640.1665220039748319358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7875b04dadf0decf83a4b1bf271ac9da0ba8f4e787fdcd67d2abf9427f5f4155
Date: Fri, 10 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760095193
