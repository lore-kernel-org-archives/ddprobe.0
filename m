Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D72E3C196B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772036694; cv=none; b=jHKP6ehwL++k5Q5qQpLcD27U8OOWYpnfq2n/mg/GasVcIeVmoIAYikBIySGozXIlsGILR9Ua2mYzlHjNFfHuisrekgCjuCuteHEu5KTpI2Yf0OVR1USzuIu0GZVccHAtWlCwXpesqSq6CwdrLMglesgJO5NqrIcDblQscuwUOK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772036694; c=relaxed/simple;
	bh=YPvI4q1Ze9abG7UBUVCcYpCzau7qbYTX8gUVVqhE7HY=;
	h=To:Subject:From:Message-Id:Date; b=mbeWmIGHrLPgCpEmxxsnooIvJ9kb16hoWl2O4HPndY1KJLdpl72q1aA4WE9JdoXTHum1Vu1/CYN6w13HUSnoiUhfeIBwMsaimh6L/ZrH0/dtM2Zhb96LFTXUc9HdWsN33/JXdb0Gz35FqAlxqgxMMf8uZKxWWuaIj862Vtyt8T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBwTsi/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBwTsi/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CABC19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772036693;
	bh=YPvI4q1Ze9abG7UBUVCcYpCzau7qbYTX8gUVVqhE7HY=;
	h=To:Subject:From:Date:From;
	b=mBwTsi/tcGoJ1Z0UvwpzMEHYSAXg1DJnEuUPgSaFUYCL9hFL9CqwWx3kkBswBnGm0
	 CR2L6Devsrimg1TOQOKhwj3Zwk7X2n9kYuJmAAnbioaURPbuJJl6NV5RbfoOJURTVi
	 ObvtQ8fpQrYbDxlvp4jPzmfekr4jcRs2juuOotUt9MhMS8Gj8cPpi5+91wZvY3+KFg
	 dh5f6J9G8ltYgGQbH7vELBGQ5TcgmmoF5/k1/8oPiXiVfnbw9JrkXyzcZMQjY0VvhC
	 vPCKHjHb9Tnuc9966m4xSYKYoK/WvZAnxBWASx5WtD6iHb+N8Y+ZCGpVvVweMsvOh3
	 FAz/YBOtnPONw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F20FD3773
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203669360.20666.15030160699312860319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58780d6f6dc0d6846c61368e59ec330141a1d4a5b61d4b5823149f967703273
Date: Wed, 25 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772036693
