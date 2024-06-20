Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51892C8FB
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718924423; cv=none; b=hr04ayPMJLeXM58rKc6mzcpaHvXrU3sPENHdJVbVHji45xG76qL0oiJTzXvHZuJTAZWcwguRG459aglSPjkVxuqYDYsjh4xNOPz3D47j84utzfUr/DZKPqDo9WYqiMq/QCsVklhhside8CO+xnowFaYEC7dWZb6uP1hy3nzREFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718924423; c=relaxed/simple;
	bh=YL9bQmP2AbIDo3PZL7L6NPQjeKXlxD3ep2SEW59D9NI=;
	h=To:Subject:From:Message-Id:Date; b=MgEA0KRdbetz9Boge4jHXLIj6ltAgmoOq/1orkd4/LiZnwTeLl3xD6bp2gsXlSU9383PkvZCaprj3tffR1J1ZGCF8a2PwOCALN+i1O7/UqboRPZjbELaiHw4WZiizhIA9lkrzV7jAGwrPvAaKwLnMyVI7Yd/4elIr4mIPCrC/4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odgCwlfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odgCwlfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E457EC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718924422;
	bh=YL9bQmP2AbIDo3PZL7L6NPQjeKXlxD3ep2SEW59D9NI=;
	h=To:Subject:From:Date:From;
	b=odgCwlfw3NGwV+SRe8+4e4skuBa9BmDtMsMBYoa98GNW35BT3wdkwq9ZeIoydEy1I
	 Pg3AManoBl15f/Oais+v+lR3/ekV1YXHnYQgrOEQoznyDIteyNQ08EcoXBA7vyS3vW
	 x7J19S4R1Il6DLoK++q7gAf+KdSI9jPyIfeGj7URcBahfyv4P589b+TnnNDKokUdYP
	 w2Naq5rn+vQEnEutvBFN0Gi4/4lAZKlmUb7aq4O6NuWLVe7kUvQnBqlKE1zzEKTWgE
	 2xQRBHfqT6Iyuo8gPcry74LysbOJQGGmNQWCQtYSuC9O33+acwmuyCk7hV7NrhQ2IR
	 z3/ldx6wHc7DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE833C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892442282.4227.2191333615396684096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d90841a3d124afc92dee75df4772665fd30fde5e2422f2257d0a69f43a3aca4
Date: Thu, 20 Jun 2024 23:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718924422
