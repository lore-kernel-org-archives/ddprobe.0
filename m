Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127773EA69
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732589754; cv=none; b=NtybNSn1pX89Vnu3Xcm+sJj3sdY5GpBd1zXat7t+TXEw8apiHXzhytVI3TqIDz9cWyA+Ms25sK3pVMhWsp+6DyORGmB4IDzZxyB7oOENnRl/+s5UbJonGAqtRom8it6HouOhuKPTwbR232Fdhl+QJ/F/EhhbcCbT7lnkOSKxq8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732589754; c=relaxed/simple;
	bh=p/wtq1Y9l0rsuURsrUOrx99zxVFBvFvrJRptgC7ZM8M=;
	h=To:Subject:From:Message-Id:Date; b=U3Vu6ogyM2HkpKAdv36MQ6B/ldrH24ES7qmEeSmKsKcmDY7KaYCx1aygtFIph/lTJhPdybLNxeKVAY4zTPUlfu4qJ6j1K7lSWm6PfXSxQNW9yw+06JCeRIR2BuyH0smXIauW34xgtqxIRW+V8eKzypyMPzgsCfdztmVdCjAd+hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji41jNuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji41jNuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AAEC4CECE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732589753;
	bh=p/wtq1Y9l0rsuURsrUOrx99zxVFBvFvrJRptgC7ZM8M=;
	h=To:Subject:From:Date:From;
	b=ji41jNuBrg/G6pxeXUQFtsKYnLs0k4NeqDc+9npgAnhsWlPvu6PNNeIpr7mF7rDaM
	 GPJqxayINkBncq4smwQuS6W9Q3dnWVC/UzL4G0rIYvFxciEnPgQ20Y1bgcyh2wq+rL
	 IKXBvy2az9NEPaCGkdufltFLGh3zl3xflSug+JuHBPjPnYWOHCCyz4E035i69WXc81
	 B60VDy66o6J91qGRKCUciF5NPLNHD5cNcl+Mk4W8KkUyz9KqJV1k6JcpAmHMQEkh32
	 sp1ySIhSTCnCXuIy4+yw4Z6OUxq/QSk0ESdC631VLxSib2rmqM6DQuxFQ5xoFfhC+B
	 2HnSUMhDSRxhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93636D5A6D1
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258975359.2424.3748224071088545885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6748e4d29c3b2905fa6babcbe8945eacea75325557b5237c40397e1d522975bf
Date: Tue, 26 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732589753
