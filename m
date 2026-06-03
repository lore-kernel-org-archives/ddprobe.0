Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1394C2F12AD
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780493674; cv=none; b=QrUMRAAHgN1+7NfStmy6ESvm5RF+H76yXstFuRm2WT9M7E8+/bzatMSsacp002C7Vj1460m4hYgQYzD31aJhc2BW0fU27rm+AEeeW/2qh9bVLGbxlRCSmXU+RSkrs3h2s7phKbKxJaUuwRQuH0pKCMaYGN7t0rBm2AhckYUxRjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780493674; c=relaxed/simple;
	bh=eq9TlBNpl+p1ZdZe/9lldeN0YUvQorOF0T9mMWpnwuY=;
	h=To:Subject:From:Message-Id:Date; b=akOeWlXsucvwGytNEpY3EyQ6BdioJ5RzHgJW5MBlrOfpuc/cbgJUqV0gnopm3JghE7/e54atzTOICXK2HDKZ5/2jI78pOekE4WXCsblrz5ArGk9PYEHzTga1ViCU/8Tx9eEWvoGoTjrB+ZBfWAJROn1i1R0CXWbyHUJPrV1SuZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpTQ8z89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpTQ8z89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2603C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780493673;
	bh=eq9TlBNpl+p1ZdZe/9lldeN0YUvQorOF0T9mMWpnwuY=;
	h=To:Subject:From:Date:From;
	b=CpTQ8z89dsbIIXbVODm5q5Bc6l4w7OZ14aJbNECbaUdhhx6zh5BvGcY5RCGG4AF2z
	 gGe9RB52X7yldpfl1k6LvwdNdyWPPVNPZozXtCjs+bIRDjWNDInjrvA/AgbZLEEEa8
	 Gqge6xG5AzcFk3pA+a6NwT5KEeoSrwn8ol1ucmn4HXIxGn5T03PrFtn4Q7annFhcnk
	 DfKOQKBhtkugyh84Vd4YEPg7O0YYa9yALNKf9cAfxnTBtw/OJG+q852AjJ7O8xwMB5
	 z/inQ4X+DhB97So8bu9ZcxUcH6udS30FEFb3kcEV5LXvWO/DemmPEBUS667D7rBhRU
	 qKyAGVo5YBh3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A808BCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049367368.23031.18367890690853188334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7467eb93c49d53ee13dfe5010a488df1b3738a3028ee8406f466675c2843ab
Date: Wed, 03 Jun 2026 13:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780493673
