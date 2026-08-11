Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB3A2FE07D
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786454434; cv=none; b=iEks1eIAyuCjjWciO1fuv98f0JwyXPlmshSn8BpSskK4WMbQfZGiWIJsQHDpmR/XPwcTlEglLBu3gmbxdobFp/RXlE9Zs/POzCJz2jIefTrVfEW5HLtQc7+Xp5wqT7CVpLPNJtP4KAufPr0waQSw29ixWcJ1TGnjk7E8yN3NxG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786454434; c=relaxed/simple;
	bh=nDUfe2SUAxFjx80EPV8QeaJi/IzKXL32/t8XVdvrL+0=;
	h=To:Subject:From:Message-Id:Date; b=fH830LfPi1oDfw0V45wyz1sFkcV0TiBf8/fmov45dmMzQzqwIkfG7lbFmsCU8J6SJPliqKOGgFulBkRFATYw0+BKavlwl42TU66d4Y46BnHJxLiSC6LpUUMFqHIpqo9l9liq/tsAh20xFefGfRY9DPQE2XQv50y5Har5m2RaRlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPFiGtiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPFiGtiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAF8C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786454433;
	bh=nDUfe2SUAxFjx80EPV8QeaJi/IzKXL32/t8XVdvrL+0=;
	h=To:Subject:From:Date:From;
	b=jPFiGtiXZfuA1P7t2kvTOes869UQ41OVid1GogCQuiCkg7+Ye5UZA71VepW1TGt09
	 oShuhWCNMJUNaFaklXaNohAxk/foEORqUxdocyI4r7+P2KVZ8lBdDLAbRM3iiKbZtY
	 /d8Yj2sYsuoSuAxX0aKE7+qsodi7EcG5N1yqDvqiwoAGC6Rd+xMg0V00i5jW/7JvHn
	 wRm5Mb2/oJHe6xwj/tsSxU/u6MP5vT2dOtLqv3gKkDzwWDC3aOLvdPw2/ns6h1Bp+a
	 Qd/78sDH/TbaYQ/yOu6n2SrKAq1TO9dolgQA3Ig9SYBhvbsA1QOGBcsjHZ8toST5XY
	 GuQq4VlUsw4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB52BC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645443369.30319.8792146083954239022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374195efacf56e85a89bcf67b2572d1eaf12372b6320f695541eb4b861e98ea5
Date: Tue, 11 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786454433
