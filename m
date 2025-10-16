Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9352DF710
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760656194; cv=none; b=KbllNFrwjP00AVVmiSA1x29hlfIktlY5jVt4PdIv81oEofTqQ0tkrS1Sk/PAEAW/r+/WSCLFsFjKHWr14pz+G/hNVm44l0/5H2VGURXN5liyyE+FgShoW37ZqpqI9tNL1+1n1DDX600FjG8fq6Un94HlwhOQ8MvLg5W9mUG0i48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760656194; c=relaxed/simple;
	bh=tqrTxVDv/E4ubzFf10qJOaUfLOnXnzQuXCrzf16hfCk=;
	h=To:Subject:From:Message-Id:Date; b=a8ky/K5KvC+W5dTUfPcl7hd+AtMPBSRoEWEaYtSfoO7kljTeEzpVGXdwL4JUUQXpdkMngvN5PHHVR71zdMWiI6L5sYh8/OixNs32IZN3xxVWmN7F8oxrRQl5XH/6ZT2wy9bZODOE4hmJVvUs/SaVG2YwrVW5E0agUJYyjK+bo9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=do8iJjQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="do8iJjQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48E6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760656193;
	bh=tqrTxVDv/E4ubzFf10qJOaUfLOnXnzQuXCrzf16hfCk=;
	h=To:Subject:From:Date:From;
	b=do8iJjQ47R6jMl8sAXDcNG1y7CxVbnBdMf/IlmYLorjCnuu8vMfGx+VR9mRerTqKE
	 SZDOp2aFwdr1ZSi4lg23+DxuelVd1dsJLUhJkrjwJUvbLA1dpMRpPbCZhgwO/EiGul
	 6TFgIAPqtzZIU4iCpK0W+7laTH87qhCaOIxXzjVFqPEFbhcduUxwZJhongBp8MhnVg
	 Q6a6IZ7JRrtXt+4csK2PMslYA9+h6gbLkbg9DsmiRxEnidDv/Eym0IxFmM648MPaU2
	 g6Ns5QNFDYChH0ngj9wplfIK56yRtijO8myl2clUjFu8pwDNLmNX9rk7R+KkKKF3c1
	 TW5p7+SXVwpvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B0CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065619357.4654.9316395261596100265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d1220f44535ea3b2c5d1135eb99c265c940cba46b827aaaff2db394ed1572b
Date: Thu, 16 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760656193
