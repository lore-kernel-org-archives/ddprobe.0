Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE74EAF9
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748887794; cv=none; b=kkc+vpRXif+QK918itOHu/2keCnsR/ihZCl1H7HJuKKKYjxQuM/+co6oqYjQ4ojltnVmzs1PmhW4ijyizSWA2ZgJ5VqCatS9B0sGODIe0gefrmnc9WoPUdDRFMZyFoYTM5dNhvhognAS8ieWfsEnXD5ltD8EI2QCSB9Yum4eN7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748887794; c=relaxed/simple;
	bh=OPJVmDPpk6d7RQRE+8CUpjTdhaaMYTZsyHA1Yb6UZkM=;
	h=To:Subject:From:Message-Id:Date; b=PSjGo2sWRCI06hH6AEdF4WthpAnYeeqAlkHUYAz0lZnOT/JJyOzGNHPicgNpfTp708/hLMi2orCrvtnJThiADt5TUezpXazsFnGufLu0t9fNhqe+d52sobmUoicrgnak99G67VI5jWkYlyvMqxTcGHk8HeeWVzRk0VYdqKKeCDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZSIrpjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZSIrpjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B8EC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748887793;
	bh=OPJVmDPpk6d7RQRE+8CUpjTdhaaMYTZsyHA1Yb6UZkM=;
	h=To:Subject:From:Date:From;
	b=SZSIrpjt8iUKYSZnP8i6jE/w2+dmA8mDdougd3AnbHjtBcd2kmtiBuQiKahbkGZVq
	 6evOE47O05XEkbWkIh8Y9uhb1fo3MDlc0mC9M/jhUz2jmuZ0p8UI7WmNuG41vcBkSE
	 G7Tc4VkkmwBNuSgmdziKHbPcQ0Yws7kQrrjtWJYJaoer302E01nmkxxxRT/AEwoPiu
	 cZYCNVLGzrxUZjNYtvc54XoJMUjItA9hWRMitJT6theIWVJ3kNAtLuJKeJky3syy3b
	 Ds+BhbzmTGAJOUYrEvnTYhVB6XRpd6K96oa4CxPQNUmWIiW6L0kOUB9OpmETrHTP1a
	 yX0f25hmoSiyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E16C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888779358.22396.17494759643412969619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c85134c36bc5da7b1c2f90f26a851a3acc1eed6c3b91b9657bd4ef9805a583c
Date: Mon, 02 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748887793
