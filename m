Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4497A1411DE
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756172994; cv=none; b=XFHdI8olwy1Tsy1RFnruQsvcpa/PL28J4ZSCpM8z1YnhsKdDFAE1NvEcc68NDjmYYdCkT9voylWjcW4zglYipeXn/Vgojy1HRkMEeS3EZmzVQdAIozibb9SYACPY5+P73RXwhfLJjUNUxpVHbu76GTdtt5azDgeFSnFPcACNY4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756172994; c=relaxed/simple;
	bh=8O+vQjdYnoXtqrPSQem9YJ/+icbWwwkAS8hVR+QI68c=;
	h=To:Subject:From:Message-Id:Date; b=hzG1s00EGgJGT3Arc6XJBeZI4b+RPdu5ToLS6IXuFDX5bhV93tFUCPyWb5RmehSelFBpl10PFjsi9T2v/9ArJe6/36k29qS0aNzZ2dQsjDk74UELF0FboiwNeZcdmphwHmzlt77uhNUjTPRMH0/bFYQV/2bgf3ZVJEkLWuRL67s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBn96JUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBn96JUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DADC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756172993;
	bh=8O+vQjdYnoXtqrPSQem9YJ/+icbWwwkAS8hVR+QI68c=;
	h=To:Subject:From:Date:From;
	b=TBn96JUFBHAhxxcJ2GGv3bG0EAIc2kA55HvU71di9GMyYkkbkK8ejR34YE+MBtl/C
	 83IjAHO/g/tP1nbwIb95w6K9Hh/WpvoTn88Ujr2/DCNxDsuadw3K/vWDv4sEIXdjCU
	 IXTdAL7UhmTLJVRRRlsKte4e6hx7GmgX0A2I+rC+UK2l5kDzkM7AK9/hTbaPQG9M2C
	 3RhnqdcnrizhG3UB7ntUWZVHO5IXzCt50Hf6Z6OFx6qn/bJViv+iyevme2g3qOUy7B
	 F4hVS9ceYdRfiHSuVXif8iqiURPByHh0YG37qBfdjnHsQEXCOPAlwFTmtWk6DrMVQa
	 6HPW+hQjxemgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEAEC8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617299358.11583.7371445738895611469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541d2ac5b7f3fcf40a8d1c793b3caa81531cd7a271543a0af5400cdb0896003d
Date: Tue, 26 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756172993
