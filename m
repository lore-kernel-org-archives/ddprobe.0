Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1050B30FC08
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769470434; cv=none; b=nhqLRVAKX4LU9e7/lSnNipc6FDabUcyKKjytfxuhxFGz48quWcqEfIK3xE45N7j0WwDlZ0759DC+zNvvYtXU6u+NOQtboxfntmNwS8/c9DjyPbPXVyhVgj3hKcHuFMQ536fWBPON5HZ9UguQxCAfSVdkS+xS8JyusU8rpFIz0tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769470434; c=relaxed/simple;
	bh=kiaYyK2eG3kUT9Np9YbzDjBs6TSmS0bOCcL6g6heO1c=;
	h=To:Subject:From:Message-Id:Date; b=SWfH3kQiksO8XueFjSStOTrIeQyKiijtF6FO9w6jCuz6/uUsVsw+Ndw0QuXIochwSYL71CGVWS3S4DKfasqWdb+J6dIchcHQK1++/bPO9s0dVVZMvi3ByCrqCUpnfQSRQUopj8qSNCf0mGZS3aivHCyOjWr1Pc35Du4mBp0MGh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBe33hmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBe33hmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B13C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769470433;
	bh=kiaYyK2eG3kUT9Np9YbzDjBs6TSmS0bOCcL6g6heO1c=;
	h=To:Subject:From:Date:From;
	b=fBe33hmxjwZybXiC2o/nbQfJuJomrv0TAlXfRnsZjezSSIQOuLBOXQG20ucJnTcHW
	 8yvI0eCytAbML6Vfw0MjySM+wXSR+maE4IigZGM+VFXU1Jpd915oggvttvP1/1/pEB
	 aXgVDX5llaqXErVtEBv3erBQix9sj83nF8HHNOMgf8jns5r3GADcMQQBGy24pWaLcX
	 DXM87X0gWYWmdrCbcRmUI4lZ57hZDya84778qmqLqXmXchsbMNiz6DC9vwO2T/XnlK
	 5DZAoq9008R4MdNI5OLXJL9Uy5ApgCe3hDkH1r8SML2DTs22zf7fqtl+jVKZh4vwQZ
	 dLVTY+hfpYQ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA4D19523
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947043358.3695.12908986448498376756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00710ea4f82c8c5b2db3c475f49f5879a05074ec9b79b930afc0f7b8b3661619
Date: Mon, 26 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769470433
