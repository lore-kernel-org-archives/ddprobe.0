Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318A21803E
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724978154; cv=none; b=JLPbsyo+Ft5ik+XvzGL0uGL8rNy1OSTWTmbFvG98KUjk/hTtFxy+TFlsvyzfnf9poimZPkct36cyydaegcuevxv4dfonfgK6ly56X//7RyxxmgCJsC4P815EDH5UzXoDwOH5EIisivVyFGDebK6jyDVRKSKtpuhWTyttyi/5heE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724978154; c=relaxed/simple;
	bh=Enuk3SyXhf5WQf5C2uNeaqY6Y3nR1RqEGEMA/yzxAKg=;
	h=To:Subject:From:Message-Id:Date; b=EPn9OHj2x0GAFOLc2dDvvTb4WxhVfM66UzOMdtgqpE3MO3+guKdOjrfYR5ZNBJKsSXA/LShoIoX1ROX09NyFAu/wTqIy6cgebIhyGZ0Ts48zVsmnwCAyIWpKPsZg11V4wTfdtE/uaFNSIRWAWeYSsx+IKHadwFpyb7yhwcG+6qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyPrNaW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyPrNaW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A2FC4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724978153;
	bh=Enuk3SyXhf5WQf5C2uNeaqY6Y3nR1RqEGEMA/yzxAKg=;
	h=To:Subject:From:Date:From;
	b=GyPrNaW8q/KdQ5QtbBossb3H0Fo0hjdX8c//UinUj7ChTfLhT+zd2Qx808r5ZIBHZ
	 LwujKIlPlhi+EC6F+UqVHzciKizFmGWuLUSsnbqRHJiXuKSzvc/jOlHIf98K2LEzM1
	 Q1p59g0ILJlH9+ukwgvwzeZSHzk03rV+r9jdHbGnjPOQrVd+52S0v4AA5n9h378h6F
	 N9XDzZCcQ7Q+bPlaTtjObV/5ZqzDaj+tzykvEHWOMG6wO97fKOj1WrxP6ud37NfFGq
	 ocBn3Ix2rz+Tp1+qiiLndxZPJz64C9w/28heD1CcgrxA2B/8pS3Ek21afGKmcckwDS
	 C0fu+PlHVEIXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B33C87FCB
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172497815358.31111.15462140735219044136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49f0097f643b9dfcd76d443c3b41054003f0ffa84b6b072a7ea2207d407a6cb
Date: Fri, 30 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724978153
