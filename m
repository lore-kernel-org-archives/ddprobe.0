Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D781FECBA
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779144634; cv=none; b=gyQvH0zLAZnpiS0Kylk4NJTassq6zrQhKufTsElqCic6jK2HTnoF4R11TsT5SZwWhsy38S4YSjOfRrkarxw2On0ni1uOnfaOR3VOpqWJOTdsAoSkl6DLpJ1gegItbRxWCT8bW0N6/A8o1SVbek5orMmE4HQTittJsaAf7flYoUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779144634; c=relaxed/simple;
	bh=6EQNVrVaFw2BpJPFSbH0mXiI4BDvw0Yw7kJdkMiJGHo=;
	h=To:Subject:From:Message-Id:Date; b=a8Sl4yYetPKbPyM+/0Dl/mLta8BvZnfMEmJSpr4e3GSAzID4p9tsGOZLvrIm0blG/nIbVItxwC4DBIDzsiPJ5kAKsSFX9wMK/3enO64CwpJfKeVEhY7AK5DYgD4W97GVaD1CiQn76//A1oqohgholFjw/pjpRZulMVPTvLQnkXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9fA0k91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9fA0k91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDFDC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779144633;
	bh=6EQNVrVaFw2BpJPFSbH0mXiI4BDvw0Yw7kJdkMiJGHo=;
	h=To:Subject:From:Date:From;
	b=B9fA0k91VzbTC9/YMX+V/f2GDj5bmK2Y82ROHujVakG0VJKX0Qdvt/J7b1nnbBPyB
	 0qIdg/BVdQ2qDgDujIyIES4jRvCq0gxFjkPbsDag1OZFzOAG9GnhDmCP/em6mDS8Ao
	 mtLKMfEaFkEX4U6TgPAHwNj4ipBZuvqr3gtTD4fFuX+JEe40H7JRUtdYnd+/MKDGhq
	 WvUgBmuPXt9tZconLpJisu3zZwzzg4+eZzFV3YRoWxYzEf68OPIYFUUx+SIIxqlyeG
	 Ctx6rYXseK+LOlRsHXQBIoVGdXXIR3ZmdjaHGE02GtSNiwLgsi5odQfWSDJ9L0chRG
	 CP0zm1/5tEJdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FA2CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914463371.8187.617177392882684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d0456d466d823196283a5f769f26afcf3f070cc10de0b42be3e80839d171f8
Date: Mon, 18 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779144633
