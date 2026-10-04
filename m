Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF12345736
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791075634; cv=none; b=XEQT21TXRHNWwGcvM/EnouMWxByXVzC7uFM/Xx5WcSQ82FVct5/r4KnTDUXwZu5WsxcyFiOkxYsk59o7klVMSNdTucidC7H+b8G8TYuaZ465hhS/7zDM0zGiRxreBOA2L4uHSYs1ogmkL3gyyaUt1w0DRn3SkIb6Q0eFKArhKm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791075634; c=relaxed/simple;
	bh=At97Q1skkNbExnEWrOll/LcSmjbatbyg316rJoYfrME=;
	h=To:Subject:From:Message-Id:Date; b=oiYDcQ38q7TU6Pva2z/1g1QZo4DxYwj/ycZpbBU+2F35tRKkU+HCcMmdBROENL98OLq+QEhjg8CwPZvg45JArWCoxVVBvhHCeClBz4NmjoPEtOW+1vMMw+v6WndgME5nJp5ZySrYS1lKjDJySnNyP60MmcQp4Z6peiSu4UMl+E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJIy7ePo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJIy7ePo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6540C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791075633;
	bh=At97Q1skkNbExnEWrOll/LcSmjbatbyg316rJoYfrME=;
	h=To:Subject:From:Date:From;
	b=DJIy7ePoEf8gtbnLE3vo/Wo6ctShxgcPLY8V9ZIo2GwYVQifrqMHEvKzLvHCgU0Xy
	 HKPU73TlIBDxDT+bJnrwkTEL0jIgpbi7pvDr85UbYhY3eC1AW+E/LVuzxNqk4q+hVc
	 5fqkecj9X/j/hcUYiA1ESN9z+R2/WMF/ywM99QM6Y/KwqwE6PXHHWIbwUk/jBu96So
	 X0uliJUJUSim3uEcVPHExtZy7nztRU0vJpeFLVxIqclfX8rsOSYTDa6ewGN+8tIIJG
	 aaI2vWh3z+IjZZ3WEMSIrJM1e95jtaV83TeuMWizdgAUCWjFNDeDiBFFuzR3nXTmDQ
	 VL/pSgLqAQZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04B7CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107563371.4965.4152091439694834373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4630d4ae7b67620f433c15e72a744471701afb6ad577091ae194218a99f5519d
Date: Sun, 04 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791075633
