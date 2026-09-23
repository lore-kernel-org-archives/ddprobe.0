Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE623D75C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790152834; cv=none; b=JD0Xo2S+iFs7/XTAr1EPV0uEAiBv47Z6FklnHnnnnUum4J2jr2KjvlFpuuFMvxTxjVBYCg8AuMSO5hn3SyHtB4yxu8CCbL/eaXAqiJ6Wspw+8RtaZhI7OooC+aP/oghO2Fr4dJBrCydbswo0Be2/wxXZaRWL80fPWHFE6tXEvNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790152834; c=relaxed/simple;
	bh=5G/yiTHBWPHxopnEnDvEYWkBHe2VTPnrOmYpAQaf+dU=;
	h=To:Subject:From:Message-Id:Date; b=ozqKrrNpSsY/QUiAPROZyt+qv44FhS7sPDZ5Q0VuFSQp1ZsRtVcu7ACNu2GRI8+JoDJe8pWupSn5pahtQeRRwCTqydV8c7PogiZeqa9UZ3tNQc1caDZLcwLm5hWaGGWrYcUYms6qoVtdYLze8DUI9dvvP/2PqDIMmTpq65HBRrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n04U2XVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n04U2XVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA7E5C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790152834;
	bh=5G/yiTHBWPHxopnEnDvEYWkBHe2VTPnrOmYpAQaf+dU=;
	h=To:Subject:From:Date:From;
	b=n04U2XVSYEhVCpnNaeJITMDY2RS4LEIWnGe4ZfIwL/YBjTJOMAPs0iQ47YIndbaLv
	 SvXQ3wMfXrK2EgWV/JFLq5c8Osv7FNozYT7QMGGGobT2xQSfXZRC74w/U6exYNNJEB
	 Beda7y7Z6+nYHACdtMSrh6rrTSE1HhvKKn3g94azGW5w2yCagvbOSxrwNPNfXWGoFJ
	 JwUBzDWUSFm3248ABNxaUzQnSJBnLYILDCm1YxQc0epM/fIvz3WytYYhVhV78TqJQF
	 Ni7EOFJv3HkC6CwE1hMy+QCFBclcqxhXbqClNCvQJby6XmrxFABK+h8iYBp2Po4JlE
	 tDfU6eC7qagzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5F8C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015283375.12569.1538102245372641747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66320d34b20b09935c8b5d6a64621f5801506ffb29509514771091beb2c44d36
Date: Wed, 23 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790152833
