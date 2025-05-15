Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F404B1E42
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747276194; cv=none; b=qN3vcun3oOgewqBDGqdmL+vAJtxiS1Y/X18c/W+mqY/DXmt4XvdYaR9nMX0XCRyT5DEqAy0JQOxug/5VejELZWijKjV7Tuj5g/qns9LlLn+XeoT9DImgJQ1Y6KbgSz//HwsDVd/oiHGXt4OgnRg3EvhhHi7XkQC21N2ztL4FPZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747276194; c=relaxed/simple;
	bh=D27xWdGXM7riilkW7DrEL63cejHvAkjvL+zH/EymnTo=;
	h=To:Subject:From:Message-Id:Date; b=g5Xah/BG2ZkMn9X/fQuzAVcEdmymQ5q3Ygt565pya39G9QLmoJWdzK7pt0RC0rNf8IRisFLl28cQiYbteVMIIZy0zgfSZ+glurScdvkL8q2uOr3PJocFAzGw3afVtH/VvXf6+12/gK5MKIwsA5hHK7funBduNh0E1z1fsI/VLSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWYIadhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWYIadhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE8C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747276193;
	bh=D27xWdGXM7riilkW7DrEL63cejHvAkjvL+zH/EymnTo=;
	h=To:Subject:From:Date:From;
	b=XWYIadhvTq4qDLJl2ImWRjGcXdjZwVfNhtkBh/olNGjDeTX1cWbMUtDK9pZCWxb1K
	 9gH9n1I+jc6xzKw1deLZxYLEQ0oTsqC2kpBgNDklFvpR+MKMoyq0YxiOPeWbAdrzWI
	 1vN+v40FSkIjbGhGD6wCZPtBS+EoKNx2u+o+xBhorcLNSaCObpV252ISpQoKLM5rWC
	 W0N9RWj3Vp4QSBaS38AWJdwDE60zyN2Q+AYem7MGuJwotph6mlCXmqyv3Ul4WTIv+R
	 XjaFh1fChhQ28ZnYrLUxMpZA9TjL4no91+oWdHHw8ZqXXgoAzol1C8suTuZhUCPq7Z
	 7+ehShMLdrosg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E27C3ABDA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727619357.29413.3831738623509010025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb6db8b2f51978569f85b424a5828e9e4671145cabe179fae85ffedf9e5c43e
Date: Thu, 15 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747276193
