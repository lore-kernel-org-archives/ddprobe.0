Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FFE26AC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706596097; cv=none; b=PZeu+r/m4IrmP8w5UWOnzDaBwLw1FzIHkMdEbNqHJ+G8K0A3taOg+LEN8qUlsDPFeZtXi6wx7C/bkOsKrKm75893vT0O+22siVPHiEKcTQE9BSolTjLF0aqhvzODxyVBU3oDcicUfUDLLIz9rD032hYMJdMAZ0/koTB9Tjjsb8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706596097; c=relaxed/simple;
	bh=DglmQVOBJyDNKIR2NrrRhL6X48Ce2/P3F4x/H33koKY=;
	h=To:Subject:From:Message-Id:Date; b=M3BHlCxbm8/wzp/TCHTtbwcHlHJM94cW0wojkM4ln3/lOppSO5/n8OJI2umM3TGjc10guP5qAuDCKxIGiTFISwDinJpZm73ifAyCjNYKLFUneatdAXJOvxThuoNV5qbLIEbtwRM1E7BOz5rd23xjNjaJZDs+fTwOAQtmP07i4OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5v+REpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5v+REpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD40C433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706596096;
	bh=DglmQVOBJyDNKIR2NrrRhL6X48Ce2/P3F4x/H33koKY=;
	h=To:Subject:From:Date:From;
	b=C5v+REpGl1oSgkMBNDQ9iZGccHvrVLZQbNbFRU/e2/KVy2FA9TnBXBSGwV9FnBGMK
	 nT7KgTi0zr4gTv3VpKUOigt8rIDXb4gBZqIpBz5FurlMInWU5993rluC9e2CX5yicb
	 LoKHR/bZigiR6jUz12QYZKmw+xYjkn/IDTXIJv2iEI7mCT2Yp03UWRgoEn3zfDEjX2
	 YT9QUj/THRaxtxsPSvo3BiRPZZ/IPLuV04xQ/BayxCzKFUHc2CDuLStskPb9BIWhyu
	 tUIozS+UMjJwf1SlNLu6mmRBgzMX+MZwslYweNU+qUYPk3Yfc8M5Qxg9PzBX7cpLXm
	 cYA0qlUYOHN4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6D4C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170659609637.25896.15329802909432775037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e498bc8df71b7366185dd4b482f802942602e196ffd94513db70ef05d4fd9f
Date: Tue, 30 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706596096
