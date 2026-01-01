Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ABC238178
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767269034; cv=none; b=ImW/5FmF64qzrrdkXMoSq/MvsC4FRZkqCwg8xEEX9GXBcFJbYOZXc85g5FcQPQedRRtgCWEAMf2ap8plW0sdkaQHv5O2WfE4Utk3exPrtPF8JxEV8qCZaUKsulSW2vBcyKCcxIC1RrSoHgX9oxZpl09KQrPk/4vFxnHmai0H3Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767269034; c=relaxed/simple;
	bh=igAW2Hw3LsFxJCwWfRuvccUgqHdVeh4tuZSDtkclNpc=;
	h=To:Subject:From:Message-Id:Date; b=LREiLc60nzOfUp2itP9yLLc2Oj/lNjN9MahyRmhYxagrRRmpBp3C7np8VzVQ6ZnYr07gFP/pU7x0aMhKhOaSqYEMwj4JRa2Fifb89JUMmY9Da6RxTe6CehI4DZPstu6zk26f76Tdu1J0euo4z15afLrMs3u5FSOzX9vPpJFLX6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0Bz/cCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0Bz/cCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C6FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767269033;
	bh=igAW2Hw3LsFxJCwWfRuvccUgqHdVeh4tuZSDtkclNpc=;
	h=To:Subject:From:Date:From;
	b=S0Bz/cCgzcnMy2suPlR2kcUrydWZMgMVxY+i+N7S7oltL5scfoGBu+nluiecAM1lX
	 W+EMDnpxUqMBfDpbAgPTTW/hdMMpEuQg0YpPeFXqwyJkTpsgYDyVA/rTzwb5DIWMvW
	 Pn4rurJoBthQ2I0WT6VpfQKC8V0E1TrMp4eeuPFCnONmRthbs3du+ei3exRV4hOo4n
	 A0w/p/MvwlQj13DqqBeWD3/A/6bJW7WYh0ZcKpS86fio8jSsB6b4uYESbcY8u1I2G/
	 VloWSVyVQ92oaT+HhkeWEFK8OZmLd5u92GrwJpmLicj0dgVLLv5C+4UDubjQsNAoVN
	 vWLVIFCd3PFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9518FEEB57E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726903357.7077.6721714021714474168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a84f6062984fb02c4a62d4e0bad2674f3fbbd33de5ece1de00e72ef6a64931a
Date: Thu, 01 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767269033
