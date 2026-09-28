Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2955A314A9E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790637034; cv=none; b=IurZIDodk9bgiP4GgaIqhT5uIObxWdcYhice4y93uMXNyyHUIDu+B+gVIIBaYrGXeBcK/t3Q8IuE1hwInQLRaFydVeWWCySvWyksMatWeS8ezAUVse1b+lZSUEeDk2A7PHQKc9Wuft0LjfIi7Y2g1i8wxsD5FLeEo6PzVG+qeTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790637034; c=relaxed/simple;
	bh=Eb0fWChkX6/AspduAmhO55vfmMDUMMFbhEvqJUNR1Dk=;
	h=To:Subject:From:Message-Id:Date; b=UAFH/bSNUnBvOzSKLHRt15CMzeCYGQhl85BMR87yPpxE3nY6ZAbpXxAHsenOcsGwo1QRyG0taa+/VWR6av5WlSD4lt5LxdH8Nxb8A/Swvfc3c9dYQaSKJKwTPnKttUcX54t5g4mMG4RC0sMn2EHtQQj2VSpqkFffsAv41RcaUk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9sSOS2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9sSOS2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D314AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790637033;
	bh=Eb0fWChkX6/AspduAmhO55vfmMDUMMFbhEvqJUNR1Dk=;
	h=To:Subject:From:Date:From;
	b=O9sSOS2vv0pn57mDSU7sRYpWpZqt4L76NpUE/U+/zQwMKJetq/UXcT5Mno6aLGBFb
	 mQ5w83t569DmeMoCb/666Ll5mFLfv57SWMBkRHVVtYjnRL0vXuFjXbxYfBEy8LByYx
	 QRgjNcI2T8suUCDAS+Vih4wxJvpDbaqgug5JbbjspqBy+fkZqBfsbAJjtynIEQ5x0Y
	 KV0Gj1hrZfd00RpozQRTfcNDMNXyd/iGnoxpsTdljZRH8Pnt82M3R2QxIj45tqdKiK
	 tbKdth+hvc8qDmVpAMa2VqcKrj+6pPf64grRnkwJfvdm7AGcVKeme7KfnIWDRSnzMs
	 3eqmXgpS0ghig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD88DCA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063703368.17579.9117785054929233119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df288ed1542f51eeb0baa45fee5f4f7c9e717e3ad0bcab49fce2d58dcf888058
Date: Mon, 28 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790637033
