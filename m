Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6552F5A06
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791016234; cv=none; b=dAtZhKgyrmqTbO589I2LMDmdd8eYMQmhEJiuRWR5HTZA5sRjpuD+MLj9RRpkZH0RN+PVGuRQna+NFUtTOpcjul1defxXtwGrNxLUyPXC/t0clgtatvAY8c/2s4xd4lsSWZB47lBSU4F/OtK8MCdfzN1mhb16X6ix98hy+Mquvl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791016234; c=relaxed/simple;
	bh=AzhIl2ne8l3fHdorxH7S2BbcIkFGaM7dBgp1w5Z1rdo=;
	h=To:Subject:From:Message-Id:Date; b=ALUXgvrxbkto3vCUbeoBBR/8RCw4FElgyiTC8rjb/quzP/mzyR4FOYxaV73cj9HipRHA+PFNEkBY86c0ClbXqwJN/CfnvmU9DeA0vCG9koHJrqET6CupRrC7NFNsX4ZFw9MbZLevzrUxubBBlHx5OAzZzJNKqCxCDgQxW/RiFb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+J31QOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+J31QOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E274BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791016233;
	bh=AzhIl2ne8l3fHdorxH7S2BbcIkFGaM7dBgp1w5Z1rdo=;
	h=To:Subject:From:Date:From;
	b=a+J31QOCq6E+M0qOxMypj2QC6TRmw6OqiRLMdU9APqVbOH3WWtaAlsXHfpthl8EC+
	 3GL2NaDkvA4lD1Myit0mnFFD58LV+N30W1jR7AD57y3HuUFGIZcvMeXueiUYOHP9a5
	 E1AyYNIudu+Zk17mwip4wj+NoJdIzOA5v+uwHVnr6Ks/CU6obQjIatjZPWENp9CMjv
	 fjDVhQRZM9FE+TTOMU1zn1EOjTxd25wxXI66JdasMJ+CKm4lMfcp1HFDeyEGQhiSj7
	 zA/EyQvJviGQwCRO44CBufX0WgLfUtRA61qPdkLaQTNNTkLXu1j8RjjWFBRB4QL48X
	 ofBKix1dL34Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9DECA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101623374.13655.3145475321390972363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfde756c87c3ab302dbb7f96cc1d389167ac217d2ebfd822390ec98bf795b73c
Date: Sat, 03 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791016233
