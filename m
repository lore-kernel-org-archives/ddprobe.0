Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140562FF15B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773855294; cv=none; b=HCvnpwtVnDJkM8z1Hh4bHLjm5rgiE0VDsE3QLadX/Ud2FzBN+fSwvvqtKPAP0YmLqBKGPdIKBOp8d1Uy3lu7vgOGsU37fT29stpcYApGvy0vnuAS/T01V3G6kwgqC7M+WBMgcogy51Q5mB8rvthnecNh1SFioeBgbADrdsROcXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773855294; c=relaxed/simple;
	bh=ElDxfB8Hj3hJfWBMr9sbg+8GWIhKpZj6V2vMNxV1BQg=;
	h=To:Subject:From:Message-Id:Date; b=AXpVtmaxnq6/sYgpxTmN0WmtPFcLIB8TujJX6mDgZmTKd5VwNK8pSjCE7DshxghMjCmoXy++A0EHxnZgC+wJbI9kqL/Z4CKDflG1qyHK6KR9RAsepYCWlnzSV7CN1j7U0h+QiyNACDeXN1BwKWpk7ZaPfPffOKZEpDuMKfvA0b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhqu6Pz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhqu6Pz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F714C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773855293;
	bh=ElDxfB8Hj3hJfWBMr9sbg+8GWIhKpZj6V2vMNxV1BQg=;
	h=To:Subject:From:Date:From;
	b=rhqu6Pz1tqiAY589BRWC8lN7i0BKaJh4U3RmGhRa3lfrHvDEXGooREG6SmegQDTd3
	 mrnL33pORk1Fay18o+TjpV7pufBUjFpzzhiEDSAPEdKSBj1jHu/0fn2xq9wN5zmwm3
	 6BcEKvps0z096idw4EPWeaQ/tDAlWqtp4MD0IJHRh9iqxeUut4rvA7fwHM/4ohXaFk
	 +NhfeK+Weothck6xpKxUak2+VtNPqSlVGurDc85cBYzxcaV1HDuyIHT1LoWJ+CfnZi
	 035FIREBJsrdTxgY7x3mNjfyskvRwKuwmXjSlS39hfPDgUwotkbjZiU861cYLH072C
	 xSdgCI43aqfIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92410775EB
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385529357.26241.9405089659149050926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbc3724db5e69b626ebb96b8b22057854fd48dcec362bc11e5a994ad7fd13d0
Date: Wed, 18 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773855293
