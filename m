Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFC6322B6F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770815694; cv=none; b=GwZWq+8nLTbbc9Bnt0a8pKM/+Z6V5Wcx2RjbMEkYZJX+TMQL6l+qP7qeW45mYAebC+hydq4sjviNI2yEEEXZ3lngBRMcQXRMPNOdAaMttEOc/djOmqM/Rr2EoleIl/iBUZ1ZWt+89yS0uZ4F7ALvHXYVuWldCgi1ujpJhIir0T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770815694; c=relaxed/simple;
	bh=22Wavoj/aRjeOgPP/06Le99SzEPpwfmhmU9H/ZvvCGg=;
	h=To:Subject:From:Message-Id:Date; b=kphfpJ/fMAo9T+ceFNIXxR17u9A7rO2MpY4PdlnufVmL4+HvnqPeKRpxEi/z6d32PC86nwvnuyjOvETgpNMFliUWHm+dTbEdhfWjsQfpF4DNlXPt7mo/OSluPo8Qpda5o8U/YjLtqJnJXYTsmFNKd6sKBhMfkA+eghcctU9P87Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCb2Vuni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCb2Vuni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8837C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770815693;
	bh=22Wavoj/aRjeOgPP/06Le99SzEPpwfmhmU9H/ZvvCGg=;
	h=To:Subject:From:Date:From;
	b=HCb2VuniKkZOPgOerKLJ/3/yri29+sVtNCOxu5X2ExzkCmm/4PLES59YZUNFcHLkr
	 bKe4MbyBX2FhVinLSKeC19W3ocFy9n5j0IJ61+enOI2nGOZQ6X4Cqj1ATQiUpAgW7I
	 4R+S8sjwD4Uvz6WBaEjJmoGccQNFejMOXfomL5OLC0+nASW6wTJtS6mxbTKNF+8Cum
	 WZeiANkhQIQRc1jM/wW6GITfIkXYGC9tbV05QGobmX2isOrrI8GXsInwG4zfk8cCtl
	 V/wpwYICDfpzXRIOdR7cvFibvM6Gesx+g1e90m+qdfvMjc22EDv/xFZlgFoQapjehK
	 yst4WY0WslzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94949E9E305
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081569359.23255.44706192084932003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90b4814b3a51f34dc9936edec890469777eb077c4e6cda2735ebcb0b74a377e
Date: Wed, 11 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770815693
