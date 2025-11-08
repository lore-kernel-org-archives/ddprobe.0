Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155FC8BEC
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762619994; cv=none; b=WM6rqklHqI+UlLX0XWCxdvy//q9Sq5gYJN5ZG2zIh174NKmLm1F+qGp/X6Z0JLLyVNTScgRlK3IO8kPe2aFMO/1dv5KR3RJS/WZ+bOTmVBUIe1LRF9hstAZ7JspZfNX/03OUm6wctMLZGZAFuDJv34fZOGK/ypn+larnlbG99GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762619994; c=relaxed/simple;
	bh=ZDBhrhG3+AT1uEFlyhTbUUFsZXvmnA/GcTLLy/FILQ4=;
	h=To:Subject:From:Message-Id:Date; b=bRXEPOKcYkExoKFybBc/GLAi+iLZgWMb8oQJ5Pdx+zVGjEeMFTgw1eSV0MbtgRZuekdsTfRMthp9ozvm9YH9aaNoFl9A4rbmCUF4TZ5UYymcxhA04YTWcgJ38Jp7Ld7Qpr1ahrmafX50wp8RH4LFKgREfoVaEmVUA2KWhorucN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHXnM5r9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHXnM5r9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8B0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762619993;
	bh=ZDBhrhG3+AT1uEFlyhTbUUFsZXvmnA/GcTLLy/FILQ4=;
	h=To:Subject:From:Date:From;
	b=DHXnM5r9Ux50+SryBmCurb2d3IhZzT3puEWvy4kiR1vwFUsjkH3FbA0g+sCw3E28p
	 rmhxr+3cfxTX5NttxbDm18SVaX50D+kVeu/onHqBk8voitpqfhGj/RWDF62StYZwIN
	 k1KYZB2xk0cfGK1qbU9ts7gOlwcTHOjeVSiECzCUwgSM8K96GzX8TWSiz5D1rBJ9zu
	 IyCp5qYRH+qKnpeAYQOJMl9Ssr8uJ+K3LD6EoB4OOF62xOHhAkoGzNGcfoUJ7vGULe
	 PG4e5NH3Ep4PwjkIg9nxJ7ny42nwwGS30Td+HUQhX6J/TgVCS0mOIbXNIB98rqme8J
	 Gk0aVAGwpjwnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DFCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261999357.27762.6464998873787645815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee76fc2d0640b4bf135ea3f47e520f689363bbd99f5a42ccf83aba9464eb652
Date: Sat, 08 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762619993
