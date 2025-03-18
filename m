Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539101C5F3F
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742328594; cv=none; b=jPbHvZTyFj1qa/IwTHQXHk8V62itWNIe5q4k+CMV9Ps9lAsflso4fhwDZ1JRTYOu3+w0q1k5wmIatOGpR/Csa3ba8mtJNLLSUDff2T+LdffeK83DxP0M7PA1IxK8CF8a4zx8BjgMQRfYQK2a1wJRzFWOW4vSy9TSJ7ltAESWU64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742328594; c=relaxed/simple;
	bh=gJmZzvortG6IDchyGmF06ujtjdf9pO7x0fuLfNpEm4Q=;
	h=To:Subject:From:Message-Id:Date; b=ITR6vJ71h+Fxp9i10id+eB4I8RqI0zy8JeE2DaJ6WsubrntkuduwXMyTcR9zTlyPYkzOWPMIJCAR3WVesixJPe3bYELuygpxdYjUWRee3fKkxdCMSfrxhdpBlnWZBPYDwNb4+c2bYNi2ZbAsUZJptOEasf2zyW8GmzcfdlfsQnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkGG1VLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkGG1VLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0372C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742328593;
	bh=gJmZzvortG6IDchyGmF06ujtjdf9pO7x0fuLfNpEm4Q=;
	h=To:Subject:From:Date:From;
	b=QkGG1VLFr+ks/R9XSwnpyfXJnJOl6Jag1r9ETCBqiSJVPjWnxHOS8mCS3BmhZ70vR
	 D56iKlRnDkoNaPhN8pTU5pkxpa+mJ33sK1vi1PsQlFYhzclAz6MFKrwAbtrON/+siK
	 zQyGLfH6xhXuf1ubpGvfnqXlma1HnKQGcZrwGde0hKxhpaHmgMXDlJo7ybp3fVOagX
	 tr9zonvE4nD4HXZT8gZhSqK5Hm1I/JtWkUTqa+M/JCU3XYGTgcN/uK0bZCsdjBYaQ+
	 3fcEMpKwao9gtGpaQ72UOWc6WrZT59VYqDLJrf2zSrM8il0fY4iDtuZvKIL9vSPhxy
	 2IJHXyGI8NbGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63EFC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232859366.31641.3549961331685062265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287452619037a451dd2cc5e841f78f6bba380e9853aa3a498e419f2c4f8028a8
Date: Tue, 18 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742328593
