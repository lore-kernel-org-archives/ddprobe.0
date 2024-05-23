Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAAC2746F
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 17:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716486803; cv=none; b=oC49XJpBqb8SLMM7gF3OsExOENPfOUCHD3MC0dyHSkp5WfxA1Y+O7m5PnQWmK3Kc7eN4O2On32+gstUwf83KlLjYdG5aZxXZY87V+/nCdUdtZLuJL54MqHJizUT1GdJdCyCiwThoWAxVV9vTdgFeYqRtt1wEVkMg9DrtyZAbdC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716486803; c=relaxed/simple;
	bh=I5tu3VAwuuEfo9kjIDSiW1w7R7+x3jK8Qxj4WU2zUPU=;
	h=To:Subject:From:Message-Id:Date; b=Rb9AORPj8WJecIr7f1MYRpeqD44E1472Tl0PKyKNmX8CRCqSqw3YLNRJC8WDXxx71RIIF91OWmbi69yULV0ey2KrTdEKF5eYCPOGI4neEXO4LtfDC7tops2dTUjKKfLpWwxiMoQLQyZCp/flY+TQGIkIFIuEYvAXKswVeX2IDi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj3o2pLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj3o2pLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD9CC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 17:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716486802;
	bh=I5tu3VAwuuEfo9kjIDSiW1w7R7+x3jK8Qxj4WU2zUPU=;
	h=To:Subject:From:Date:From;
	b=nj3o2pLKQGEH6gUIB/SvNgRpGQWK7JDAsHisRrCYunw48YaxibJTOwdNNgiirg96h
	 h/NCPLslbR2KzRDCZ+9RbFDPQITuIVSz0Ke54YRTKKKJjY/d7AgtcNIebWfwgDTEUt
	 P/Q6I9Nf2F8fmJMWTMo+GQnSEx0mkYBtBy/eZ0xd1YaIQ3xY8dB7DLkdSO4K5S7Lhj
	 +YuvgSiGSxfcGYjXoGXa1t1R0chKQ3mvv+q1Z/9IvLosChL6pqpyierxmjwrw9bJgO
	 jqhMU9eocqCV7kil+BfqST67tYvmmgvXokg5Zhv/OqzwRkZKZukOZNXXS3y8mIIe0S
	 rpxaJS1fPtFfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EF6C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 17:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171648680279.10444.3590614758145339366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2119b74bba435be5b7293fa1b96b9802036674d1d1631e03a51e1cf1e529feac
Date: Thu, 23 May 2024 17:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716486802
