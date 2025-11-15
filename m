Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9255E1FC110
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763203794; cv=none; b=OjZCn1nZ/r2i5yawKYkWR2bDh1UpoHeS0uZzsaVuudYdR409mHfh4KtMCv//m4crIlZlprXyqMR+3+XTaRpdhIiWfDv+fbPfvHkx5nwGuGLk7gMOxNOvmNCtIxs+/neFddyJoxm+J2Dm+CMccM6mfKoTXH1xPIie87YHivq2SCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763203794; c=relaxed/simple;
	bh=I+v6uIP65v59w1xDbb7zYrFy2wmeOualPqhmKuwoXig=;
	h=To:Subject:From:Message-Id:Date; b=JhIwFGy9GJVlvXsZrVbA/09UO8skByUvhhZ7tpzA7ujLcGAVTYLaM7uCeqoTPzatpJBssY03dDjIzeE/m7rZof1YbcAdl3h+fxu3472PeiMEPPw1UbXICawyBkkVMQxR3YUPqlp/GVZJ9RQjSuu46ITcGSQzHGamAMG+6WD8JV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pc8hbETq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pc8hbETq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 268D1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763203794;
	bh=I+v6uIP65v59w1xDbb7zYrFy2wmeOualPqhmKuwoXig=;
	h=To:Subject:From:Date:From;
	b=pc8hbETquqyRPtuG2/JD0u1dbIYkaH5sE076aOTI5G01uDXVw5xyfJ9jarAm6aLVX
	 nbQRzvzTneKhBOnDzL6bKoRoKOAaG1e8r610n36Ka3NgyC47+cBgkJSZx6zGp6UpCF
	 mrsFHwSC7oZqFn5Xx0nR69eZFrNBU0lLY7sO0e+auU0rwETJVTlfwGOrev+iKBff1A
	 ZhT60xwm3IF5Ki0CsVDQ9gBiWhPmUQqmSz2krC8V1lwRM5V01vjslu75UFmoTdkJIN
	 vcf0LxS2Yw1MMBwVze05hUCd8UYUwyg6ITuVqJPvJnIl/TuHciQY5b9MpVLQj0EzWD
	 72II+bPRyOR4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDC36CEB2CA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320379374.4932.16579392578391423594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680b4726ad6b05432dc0836a7c7df7dc881b5326d5eed38854dda230923a3554
Date: Sat, 15 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763203793
