Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18230242D6B
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754297994; cv=none; b=P/TWq1c23Q9hUv+eED8EPMMdb9hb0s3B56L1fRbp4FNjxGYqECB1Je+S/nXO719pWYCHoXSsDCcvyESKZLDH1dQNMGUSMEG4pFWtBJKrJRdYf6xwfYwal0nSjCq80voh4auFEu9TkUCLN5fDQdoCS0V164O+W7/51dbS7XbJjoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754297994; c=relaxed/simple;
	bh=twPsGMhKgbXS3IS9DsxrI5KM1Lv6GwaYqxDm1keNzfM=;
	h=To:Subject:From:Message-Id:Date; b=Y//nt3i9cOCG4tVO99bB+5Pz9qaMPARrPzDjphDAAelB2XUvQ165VudSD5mTgmONtEaMq+4DPCzJXoWV0dpXwCn/7E3TUFGpaN745IUJJoUY9M0x4VXTN0goK5BHFldWtMCORyOnw+O7gehMoJIoRjUxR8pQ5siWOnos2Yxls+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2muPK6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2muPK6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A129CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754297993;
	bh=twPsGMhKgbXS3IS9DsxrI5KM1Lv6GwaYqxDm1keNzfM=;
	h=To:Subject:From:Date:From;
	b=T2muPK6y4YnP5M8be457GWA9xHiYdHybs85Y7plAxHKRPgS6jORMSxiJt/n3lODb7
	 iRXJ+itV7iseEOefAMr2EKwBki1BldHIWNNtPh+hMP45HueX9f9w7IuHPH6tQQ3uWA
	 /YUWykDsvBE6VtxWgnvVxo5UYnYX+4u1DsTiR1DcBRoFcD3EPy7o5RU9996chCB5jJ
	 t0iSQC5vjgrbPxtkHZlFobUOLy2/tquarP0v7v+j+Pq6Bot2UW/jlKuvlmnyXvJLrS
	 nrLJdb3rsjHs6pCNYv69P/82yZn43uxCCZzq9769rXnpund6JbvQV8JtSpRTr/NlJ6
	 rBmXcQLusjxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F9C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429799357.31631.9332612650247479295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4e504f77fbd7a2bcd9db074a093ce29ba94202d774fdf1aa6c887faf3ec8ef
Date: Mon, 04 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754297993
