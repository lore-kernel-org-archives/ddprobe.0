Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB5B2139C8
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749118194; cv=none; b=Dw90bBg3PJSYHBj77DwGNLBMaZjVaFy60Xwp588d873s1q3dytA2BQrVi2bssWRJ1lo7Zj6Mn0bOvsYvjNzQniCMM27yt2B+0t8hnUoADW+5wa2gAc956L7PTDJccDFDNKvmNwHqqohZVumb+ct5tNjhf3/RBHvnO4LCwk0t89s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749118194; c=relaxed/simple;
	bh=JEJKXR/SjWl1Z3U15G02b3eQEB0lAvFSGH2yFeWJ1zw=;
	h=To:Subject:From:Message-Id:Date; b=IFo8M3k4HMEww4KzOjXMniaeFvEd+ZBR2XpzJzCattt/aK1FDly13ge/bmgajyRNwLqYiRVY5QOGM0yMzf/5VOMq9cqICIyXPIvAtpkSbnd3i/g07Z6qFOQTLmz+ClHmQtxFxDQ9sqWu/hdNCjv05M3YTawHweDdJbf1jYd4BCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GF7/vvI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GF7/vvI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A576BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749118193;
	bh=JEJKXR/SjWl1Z3U15G02b3eQEB0lAvFSGH2yFeWJ1zw=;
	h=To:Subject:From:Date:From;
	b=GF7/vvI5ihRU+AdOQRHioOFZzkPPw6H6t5Miqaeblhf3LRjNDvW2Az7Dhxc0FdOoa
	 Smg5SXDeL8ZmD5sib12/YkuskGtaUzBXNwFTbTsjUx74fO41yzXsDt7rR+1vkH4y+j
	 0ozRSqpBYhYqBuqOop5+p6tUiaoscdUH/zTNQqLS+v1ez3d7D6XLS9p7V9Fo/JqEoM
	 jpA/ONYMXVZ9gXRqrb4GFr2jxdwzzYE+rfFIbZEqh1GPOeqUZ8oLtuY2M1PD3WSnuO
	 F0ma+CmaYsW2o2XzJv4T2eYUhcLbzb1XobyHEyynJIZAmlDhQjN9Ng+aqKA/53nkgY
	 8h1FA4bifzrdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91332C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911819358.21112.18160478378583510809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a162e9acf48827307a7dfdeb7f0941ed37573d714734d50e7837800d87f515
Date: Thu, 05 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749118193
