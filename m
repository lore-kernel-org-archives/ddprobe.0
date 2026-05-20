Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EF4372EF0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779280834; cv=none; b=lW1sgyZNSlJxXoAhvA+41c///9MBwOU8AXDmSUL9lDRw73tVHFvn//iPqecwwnd3Dfjyg1XmGoh2Oz4IbmvfueaXcAE+1Vhlp12OABCHeG52l1ZkXIN82H0bqu06a9EeNdBVoVuTHrfTNI1kxcIZb871huXFdBlHHFrjBBkPUs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779280834; c=relaxed/simple;
	bh=ea7BBDJrlM4P4QGHnOHdmSQxM5VZ8rmPDVhbFG/Lriw=;
	h=To:Subject:From:Message-Id:Date; b=rwaBIllkfZgELefHurJj2JyTXHH2dn4mPOOO7/HDdcCA0Z7BtQQ3u2oRV+EC8bPybz21cTagR3lfdXG1kw12AaBEZp02V5IK5Uw8VghdXBERMIcBRLCycjOPPZrgTvK9ZgvyaQaJ0JlSDbkjHYqTctJD8diQIxNw2e+bl12M1yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAVmVaAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAVmVaAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E73A4C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779280833;
	bh=ea7BBDJrlM4P4QGHnOHdmSQxM5VZ8rmPDVhbFG/Lriw=;
	h=To:Subject:From:Date:From;
	b=iAVmVaAVIhCr6q5azbsrHgNaKhIaRDQIuiXtQUKHiplLimME39vmfXtZhHWijJYnO
	 6VmRm1Q5Dfl+iZmznK2l9UIA726+i/Q6IantItAUhLOE4ZlelJhtZEhPX4hnNK35fh
	 q2QVDtXKxpwHDebSvi+c7fJvrj0sGxM1jNHsBLvTr149jJPJHwdPtdG4e/2TeUo7aG
	 Vdpim904Xc2wvL/SrhfPV8mZKcIJKS28jqNpqS2yvvTv7hpw88HHIVZbuGX2LtGc5l
	 qFKlJakA+CzlTNFMY581GRf/UlD28gmIESyqf6vQmvOj2TZupZIXPuD5yReKKr/fdT
	 9bwNb+fbnQ40A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5654CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928083371.29459.14059449211765086716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fea05cc0a26d110fcf499640bed04e120d3c80834d6103a366a2236c6033d7
Date: Wed, 20 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779280833
