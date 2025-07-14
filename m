Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C1524DCE6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752498594; cv=none; b=NNGQaizuA+wsdlx/Wq9f06N2l42bt9XYRREiRxxFZbCMVFtH+TZpB3xrCJcjDSO38uQuA3SdERAxTmwJ2cZkWFVONVhz9h89XCj0T45EmvuXxCukJPg2HcfY7GQJZpf6x0X/1fa7MLIbAj2V6e+fhIfiEbQh/LMo8rIaBZQPdzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752498594; c=relaxed/simple;
	bh=6lHDy5XkYaNxsjDai1+6nl5VjyUzNzA8ZyBJkiZWXwo=;
	h=To:Subject:From:Message-Id:Date; b=kJZgJkODu1lnTPN+9qe2DwxWICDwP78cMXPki4tKqX3SYVBab41d3IAZQoB59q51EHq62FQpLfc/sL+1DVpj0mb6whiMb40agBuvDW/BoxlD9ioIXVR95GM75hkOffBUyrTjGiTizMsDhP9ipR7GwLFdFf6qCH9rncRZbSTdu+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5jAVD37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5jAVD37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBD7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752498593;
	bh=6lHDy5XkYaNxsjDai1+6nl5VjyUzNzA8ZyBJkiZWXwo=;
	h=To:Subject:From:Date:From;
	b=X5jAVD37l043IgfWRIXr2Wxxv5xsgdeHRAhq8CnXwbcxSHB44IriwdHtAsXnHKdC5
	 7hHZZU7g62yHfIsB2bIwku84YaUIel5LG3ByQ6EGnMwjmB1Gt6Kh+0TzXiAg0reeq3
	 lr1GY+2axX2NxcDuit2wTRR6P6K29/jxFeyyHfMATnastZV/W986GSyCh4nMm/4lDD
	 gLizjW2EsIJLJEd130cPc2p6Am+S/Ebz4exEO9vk0GYFU65dLNaL2EqFNq8fO9IpVW
	 EICGmRf8m7O16BS0GZHXWEvqsuKc1DjhV6Fo2hYElcRy+S4FQiYfSK9YyYWBDoM4SP
	 WZiX2M590JbFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A66C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249859358.23340.11906393578408041756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c9a7d9e1aeb62ae4e1389106b78b96db57e2b7f7f84a5c32284a191a061599
Date: Mon, 14 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752498593
