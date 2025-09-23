Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367624A32
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758589794; cv=none; b=hvkg1R+c4sSKK3wi+sCheBB6BkRljmb5vzGWw7s/DLeSFDT070aoXpEehtVnTRWPw84UHNekJ97XsnA3m9kqODn3ODp2UaAxyF4Wp8tue4WlO3DFcPDkVY4Tdo/EpCIO4q3QABff/+0QdCq2k3hdfzbB1MsN7TLkNIkydFKj+xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758589794; c=relaxed/simple;
	bh=iKsxjp6cEuLAMIZ8/CqRUszyhvt/7xwdgf1ePgAzq5Q=;
	h=To:Subject:From:Message-Id:Date; b=FxunHXLhPvFa2UEZ456Bs0CTHXL2E2tMkdgMCb5rQ2se8+hZ+clBLyyMX8jXYZmSDiRivYyXBfumtGUvhJAZ8GS32/yZaDTAY5voUyzSpsmOcYZ7KNTNzBTzcU7aXra4uDNBXK0GyxjpUMl8oXhg3+6K3itO5nA4yOLWrugPGVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxp99UWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxp99UWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5488C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758589793;
	bh=iKsxjp6cEuLAMIZ8/CqRUszyhvt/7xwdgf1ePgAzq5Q=;
	h=To:Subject:From:Date:From;
	b=pxp99UWOq/gGWtmEgJLlw4lnnj+VcGUupd6K1O/9EkRd8dapfXoB9y/JQynlcWBu3
	 gbCQ8WH0CHnEJ6gGmtMxaEaOTvC4VyImBPn+6vl5QL9LRutj0aK7t/O8ESgNmNauNB
	 iNwVc4P0u6QTqVqkpLHhDgYD/h/t/zzMq+0tcbhHh2/I9CgtveVAnGW5xv5UJJGbkV
	 PfyWNZcHcuHaUdUS9eurKg/7gm6qQN1YlamqzNgew/MYl9aKld9dCbCk5AtX7TdNtb
	 zRe/lms4iBPuUj+BvEGgm9MGnoNUeqCKaEBSlM4IsiuFRdddOF19dJbSg1r3+xIK6v
	 whxEOF6VriDCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8ACAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858979357.10597.3663493127311164252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed27a939c9726ea74ec6892c0dec0178e0cc5e675711b023b2ae966604c62d1
Date: Tue, 23 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758589793
