Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E550426D13
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768934034; cv=none; b=LeafnnvUrFBlBba2ivuvbq0pMh8pEj8h55+lpGaBYtSnxbccsioriSxdyEHVvyf2po8ik32xV5RfDVMeeAg+uWaE1+uqNsTIIyJ8EaJ+myIF0wnzw85HNhgeiwdCcDui7NbE2FHwZfj/zyh6oUbf3R9OzYJhaF9K5m8EN116yCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768934034; c=relaxed/simple;
	bh=gTErrSepqnXMYC1EtBC3JbMGiJvJ1Ej6duYBw3kOoYc=;
	h=To:Subject:From:Message-Id:Date; b=RkdApZIRmf5IYe4xc2KyUrsCvAaEFba+qHLQztlB8V2IOQ8FSoGfRwOpQF0+BKjcKQ8972oXV7iKfc6vjCzKzptu+7jVtI+mIB9QbKYpWYplQqvcPJvaSoWh7tnlGqpDpki7xTkcgkafVLcdK/Tk3zUK1mqPziXm0U6TQPVOStk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4cqf3du; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4cqf3du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35DBC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768934033;
	bh=gTErrSepqnXMYC1EtBC3JbMGiJvJ1Ej6duYBw3kOoYc=;
	h=To:Subject:From:Date:From;
	b=e4cqf3du/zLxjLt1TM8c6PX15bzzhWCM9oBnVsMy2tkG5Hh8DFlxiWEq/qleuwP8q
	 jVcuvpHEH95bIOqY0NXjBhGsK0OXcBrn56pyCyRymBi40WPvJSv3X5IOdRybGib6D+
	 lK9mIALwEBeugHvrYikRdXxX/lN7u4i/0iJUven8iboCne3+TnQIVhHurNvSO0Qx1k
	 vJHe6KxF2kZlMuffEAMvmgCa68dumpVPcWEN1ea3zGaWYdoa4143txItN/fNFnpNVp
	 Rkh+fzFfGDIYm6PJGY/w9460++emGxV91M6Bhoijav0lWuahWjO7B0r1oTCmn72qiz
	 XWOjv1ex6o6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B87D26283
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893403358.14557.15288428188907962960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c99b9aedfe3cd64021955a7a4fd19ead5abedb2c8f81879703ff1634819516
Date: Tue, 20 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768934033
