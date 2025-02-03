Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D30AEEC0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 04:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738555554; cv=none; b=NNyZwxe1vayDg0as9eSBY+eOaMDsxmntSp3TTJcyYscHm6y6DOWQqy4XlvIcpkOKQ3COJk88AoGgRrX23V8e0FPG94zjNYzkog90bxt7sywD/NxfZZS3sDW2bfszutVatq1x01rykPtX43NO8KgsvtYQOuSlC7x5TbVUBP0yBD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738555554; c=relaxed/simple;
	bh=W3dkE9YXTbOwt9mK0oieQfwmxncC/FVMc33U316iGHw=;
	h=To:Subject:From:Message-Id:Date; b=ctz6qYgevdgCLQ2nKJ0gQqAZI8jxq5GU1bNKwHxdXDVC6IoryOrkAjpO/B3G9//JDCFYJqDNGYIi7fQx2HJ5dB2HmLa6naON73jFs6aobtPRlmxKnTAaAVGIyVhBcexYoBPb68ih//Eys4Z9/Z4K7+m6enWLxhN400OX3Ezc3Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkC8DLtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkC8DLtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15D8C4CEE1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738555553;
	bh=W3dkE9YXTbOwt9mK0oieQfwmxncC/FVMc33U316iGHw=;
	h=To:Subject:From:Date:From;
	b=NkC8DLtcITkBtUEZqopc6cY0QKdr+De/jQRAXEe5Khvb7R7qRcYIhEDyjy3Ypgusz
	 tmRHMivvJq8vpn59BlRYKzQrsaKT8FKkgDr6y9F9qtiH815r7hkUZ45nhQ2wH82Ins
	 5yw+CfOCO1vhhg1V+roUnXVrJdVxGZhnjjtmKf9ONgiC8YCUTSoIAS9zkYzu6/9AT1
	 TOOair3RpD+9O8i/leOqa7KF1d6qyLzIqtBvFa0T5ModAxLp59znY7Fze4LFu+bmYa
	 Fis/EDJar+FW7XBASsSlgiEwV9TEU2i4WdR7lPquyqCFahRt3tjvdX1ST8zzrn4ij2
	 b3DFu10uOKjNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3332C0218A
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173855555364.30311.536413610705462515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fd660bbaa4b3daad94ee84262e5c7400c23071a627f8ec8a7d096a725b5d99
Date: Mon, 03 Feb 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738555553
