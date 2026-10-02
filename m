Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3323E1D05
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790931634; cv=none; b=Npx89lL2B3lE6dh2EVeRkf4DZw3iav/uu/k+MbU9NbDNecNh0zXfiC2K7kCCH6ZujQRASUeRAaIOZjprPAC2b2TwqIDlQ2cB9HUyZCwRhOsYXvYKa+nWsYLBXHxZtnkH0kH9PyP2C8oq41ciB3Vs4Xpb/T9wLI1mAtSE4FZTNT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790931634; c=relaxed/simple;
	bh=4YWglS122KDCQJigFRB61T2dW/U8ltraNxQxY4f6BRs=;
	h=To:Subject:From:Message-Id:Date; b=aOtlFlGeYuW3UU+j6ggt7J5ku0c3mkh8pfduRgd9NlEU7tkdX/sDqI8SorAMDW2wCXEMh8w/SL21LWeCRf+Ee+r5YRzr7P4r+Oiai5GkB+l0XCHTxYuWCxAV33MORs0Lh1z2CVaDFbn9zHksxMlDzc7IWKt1wyN8ifYvw56jYOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EG228MAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EG228MAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD57FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790931633;
	bh=4YWglS122KDCQJigFRB61T2dW/U8ltraNxQxY4f6BRs=;
	h=To:Subject:From:Date:From;
	b=EG228MAvTVypXASFYZj6noC4oXsKNyfFXqsdE4zdAIy4kRda8qOJaZAvU88T64eao
	 yiui1wfZRjP7l7PZFWtLy/h0gY2uHqiJ6XYcZtF5B+s6xyqP8GqJ/a32ALKzPE7aQF
	 4L79x3IZTbdaOyA6sFU+0GK0Lo4Gp1TSD9l+jcDncnLC3SHEUl2uZidkzeuIQqeek7
	 5s3zi8ctHw0jLirsCKwULa3sXy91E+QRJuBVEs0u0G0nP1jrRt+w/Obcv+lssUu/JE
	 IvrMm+DsG1IQPQGjvARxVAYVA8yNSJ7jn9utSMdS1b+w7jv2F0RinYsukC5AQZb4lj
	 KQSyKLkLVyu/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF09CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093163369.29975.12191256322222609467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f321094f1b7ef724c17f880a7bb8f610aff73a91057608447fe54ded69cc03
Date: Fri, 02 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790931633
