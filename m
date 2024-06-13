Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAFB12E1D9
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 15:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718293703; cv=none; b=AGUNHmaIrh1FNZ9to/KGyMyaaCdkanAqbKTcMmzNDsZqY6mlrp9lSLzn8DzdLkKihDM0lDFH23Dd05sM11Oi8wDNIYMqBDogGBzwf4I/+QYLFM1Nf2H7Z+Yp7dbMZ46WJlueHJl1htbe9GG1IjrErpLLikFo38w9zlEXLq8BLh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718293703; c=relaxed/simple;
	bh=SllwYqipR7/O5y2LwajYz1U3kt3YXa7tYOrqJ/AMKdw=;
	h=To:Subject:From:Message-Id:Date; b=XORqhIZD5gl2T3pQ8HY6VBjV4Hz1CuL2jyi/ABA9k4WwyyxgktyeRMZI07a05kMLV6l3fCRWYQO091lkM6JkDnszJ4EkaHDTZXnwcQ7ncY4hm0E0x0qF/j3wsM+AcPfSsJJyTBF/xZcSahBSgSQev53uQfo5n6P/UvLniDmx8N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYDi4Q8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYDi4Q8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC680C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 15:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718293702;
	bh=SllwYqipR7/O5y2LwajYz1U3kt3YXa7tYOrqJ/AMKdw=;
	h=To:Subject:From:Date:From;
	b=BYDi4Q8cgeL/8EobWcTq1pXdbvicgwB5+JaeS9Gy2dvjiuWEFG5MqQhUTw91Kz7aY
	 BWMSEVDIBQdCALerQNBAwsGObpAo5pq3nd02MYf1hpoIJ5b7i04I+w6NngW4e8+T1Y
	 lCm7HLI69t7gaImqTq+1s9lGyG347qoG/kZ49cqfXHJoDAPLkKL2ohXRkaFVjzVtOu
	 0NDx0jfLVzHPwH68v+9/T8s+ONlmU6QEZlkyetfukGTXaBhYNwtYyGfCW99eg5LwEq
	 1oP1TQJylhFtHrhDhsNa2eEfX/zN8L4RGjRTxmB/C7CIxCVTcJb7MkWea2urPXe4RU
	 WYVsWA52rSwmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7D2C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 15:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829370276.1836.456277849107653385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537524f9461dba5b7249b4967dfedf9f231665bf88b510e05a443b18485cd670
Date: Thu, 13 Jun 2024 15:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718293702
