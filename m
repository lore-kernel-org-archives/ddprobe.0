Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547D11514F9
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717151063; cv=none; b=AXMrYQ4yTUCXktZfk7z1DSqG7r47meZ/7QkGypoBF0UUwMQtSP7/6gLJ3xyzkJuN9hzfEq0BWjTeKT3M3DOSfd+D9CmIXP2ObzFgScNTf2LCmPdNCRA7Se1AfeXssNJFbewe/VwPfxOw9IYzI1jC/3c/NTgmafnsPyLRxtfzxlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717151063; c=relaxed/simple;
	bh=rkiPH8oS9YrAxHigNEgWaXAX56qeZ6wNcyVDY1x7avA=;
	h=To:Subject:From:Message-Id:Date; b=AGuhDKiRKWODzNYRzi06Av/H7eGGGLAFWYj9RRkSmTsAVdAQtPqKY52fRchEnk/J9rhZlTkq0RpD3CX0t5/HLkDeO1SUeQA96EWDhiEl1iU8BqYuoGRWBmhVQzcAneHOfBVJY1oAqJpO6SSFYv0bYvQ9voVS3BxLm0JIZKULdv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMxv8fIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMxv8fIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46BDC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717151062;
	bh=rkiPH8oS9YrAxHigNEgWaXAX56qeZ6wNcyVDY1x7avA=;
	h=To:Subject:From:Date:From;
	b=sMxv8fIraAf6yDU/14CjqBvyXfCtHDqWHZ4gY77YW4xnlqy72fJItVyRMks1evawX
	 1gXzqUdB2WzLxpsQB+DLMTka5Rmg+UChU0urAdH7rAdiuUvvTQF6USILIupTJfcZt6
	 48rdIpaN5Uy1qHftho9HJBHGah1dK8q/PNVZxgIi2VUxa61sZoc4vzNKLv5xDg5gIo
	 7fqrqoxPE83EXmOyhmjvWxLJexXbwM/kiKd1952Ax6gI0xnUpvSG7+tC8VPLC9XHzK
	 SlHuzMDoijoqwK+6KAcmDsfc1c+p5cLXIHeND77elIVC3gPWxaIXx8+Y8aC9fz+wMg
	 TDFHwb1y7K9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECADC27C44
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715106283.5549.16092396305867884692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ecfa45df1f3339453cef4e6c5e427b87156b7ac8c6aa8013cbd916a5c619547
Date: Fri, 31 May 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717151062
