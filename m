Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA24149E1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739160353; cv=none; b=JTrJpPlqaGm2eOhUVdKyAQtQuMm8hREFhwa9cvRRBY8dsDlU6DxCSzVNJPHU3jSiEPU2QIOOOsZfjvO1uHWgeLzOMkP3RXklOZ5Y3MwhuN3ypdQuC9jdG7/AO44vwL8vZXZDDXUxs9fFBVzgmVEkxHBYJE09K+6mIpREnF9XZ8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739160353; c=relaxed/simple;
	bh=x0m+UBwg/7SiTIuMBnh/uudEhdnKwRXsJSfQhufjwpk=;
	h=To:Subject:From:Message-Id:Date; b=s48zaPJkVtm67kfVvnCnJSQSNAHdmDmOPHDky2Q8Nb5LwE3dMl6eryI0GVW9B/6iP9mKZcECeX9C03fbql42OP7fr0Lm2+MvtzS6TytZ9KXaTnPNF4fqL1v/PzD0HhMsMJPadDCWpv6EHtXMZAOKAzmnWBKanN2UjDZrFFHSPb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXWyUqnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXWyUqnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE682C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739160353;
	bh=x0m+UBwg/7SiTIuMBnh/uudEhdnKwRXsJSfQhufjwpk=;
	h=To:Subject:From:Date:From;
	b=TXWyUqnhr6xlbO3I2SLbVL8nORoydJay+Qns4/rn1O3DzIoYxT4iInpYp02mzby+r
	 ozQtQeQLr/YT+J7VE8d34KdDvsK6lykDWaMGkJie/AdhONKpMFz44bQrxOdQCCnGo0
	 l9EQMsa2h+y8XlF48Z3eia20XCznaASEnn0XxJ93POf6oe35e8jAF0jFr3EgbG+rOX
	 0A8ShwepmLu758UHpu2gUVCXZS3zga9z4MAbGzoGjWxir0zBltQsWN+Urq3GjS4f2o
	 6gFA2pYrTAvswSYLV+XqeeqLT6K02PrY2nUXIU62/YO6YDigQpOubZ1JG529iJO2d5
	 bDhUp10GYktDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7CCC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173916035363.17385.7416652811441186775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5cb06b9d48a0a85b5fb87e99c648ba981e3c2b9beea73856fcc6dc8be06fc8
Date: Mon, 10 Feb 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739160353
