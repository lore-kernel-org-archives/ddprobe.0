Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E7A191
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730574354; cv=none; b=CvYlvXlYd1shxbJPKukcbqt6CyjJ26yBIzLPGxZgjRRuxGYTZ3Bk3jdEQWM2EFcR4H3ehiYq1073xT9yY+orOCOLO4id+Ac7FFKawTrvBS4B6WS0wjADDboJVg8L0Nc6IkVsJ3G0n+pRjPHAayTOEIJmgDWIIvD4UU/0tWgaPRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730574354; c=relaxed/simple;
	bh=405601KatHXiiZaaL+qYrv6t8rvlbZk51qDYS0os7+Q=;
	h=To:Subject:From:Message-Id:Date; b=RwFvF+bKWlzU6shdjAAzCRgSKX0I2Ci+XuYnbT1OqiFAt4yxT3hWC56FnFA/1F+wCHrQnlj7ekWru5b5v6rusKdEGeIIejxdILYtVRmkpdVzzEVqK+n+d4B0Wv7TwBEL24JX1Mud0Tz4MdiUMlLrqNUf6oSqpZdLBhK9vDq85So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTmRmmKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTmRmmKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA97C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730574353;
	bh=405601KatHXiiZaaL+qYrv6t8rvlbZk51qDYS0os7+Q=;
	h=To:Subject:From:Date:From;
	b=sTmRmmKvHFI4EsyxJTou/acUFbaPP/zXQlqA1B3YeX1qbozIRUlCHXsMSRzOajsns
	 B+dVPYcstLTzN6EUn4+20xgTMGL4KADDSXpTe+u/16Nz9jwmqsv/Ig+hkhR1lJlr3b
	 p1IXdCNNkVtuQtHF4oHI4g3ZrUqEPwj3fp7QuYejCksHjGPHu4ut0eWn4BvjvSTxvd
	 I0HBjBf5h20CGNoMt1Fwc8VzcEfku4QTWwer6ShTS4wWcq2GsqeEizekUs9iF+j8Yd
	 rPZcZf5/ppMi/5VNWe6t3sE153/Z22hrqq100a3e4oGtUoqKWLUxnNnmypN6dAAjmD
	 nt+dsCPqYyeNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A2DE677E8
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173057435357.32604.1893666565560757614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dc2a4b61376953377bb7d70801a0f440a59548591f435f341d61e3f8c3a16a
Date: Sat, 02 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730574353
