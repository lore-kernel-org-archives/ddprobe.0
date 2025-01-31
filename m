Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5E52AD20
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738361755; cv=none; b=hiwYfehavKun/3eDq/MSQtqpJJkJSJ70VfX3aE8/Zado7kAOHuJp961oOWog4QRG9DvUEbM/zARWwAu3aHxkuqACXcxfOPur/RcY+opBLteEfLH6yWqqegoJrv2Bg2aUGaq42W9qPUDgK77FuzuWEAZYTECsD6QE1t+5mH2CQCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738361755; c=relaxed/simple;
	bh=tJfBtiQ4X5ZBKET9wYitwBsv9lF9Q1m1U3YPhD4+ioU=;
	h=To:Subject:From:Message-Id:Date; b=hfu2VbVpsEGs8x6i+5/unsdvSlPsrswxbr3q/JHCagO7Edhc06FtGE8Nd/00cRe7/z5gfxOpU9mfK8bYWPbXVllH0Qn2t4JiPqfsXC27y62Hj0BfT8vBZrgjzfqdQVxQc28OdfZ1xyEID/MqkvNBdFEVXbI4eG9DL2KacUTBC68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDkkSxl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDkkSxl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52B9C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738361753;
	bh=tJfBtiQ4X5ZBKET9wYitwBsv9lF9Q1m1U3YPhD4+ioU=;
	h=To:Subject:From:Date:From;
	b=IDkkSxl5Ci4zoJTnKc1tKlOL67CL9EorZd8KBGxWk9/VMFQ8uvqmoG1tsR99lhGQl
	 lnktIbVpfMThSNrzIsu94xrfb9PgjrwBlAqWZ55yYmZ+5GVVU1qGZHXyx3sYuXErle
	 TQmHQSAfMQh3QRs6VAmNVHT16Nm6h0O8P/EV/08VgomoHc7yX1oDrK8plMlYuY5oII
	 grO8GVcBoa8zmEYpswFadmD84UT9p7Jogis94V+/PauIkpK3eKQy3Z82ODKd3BkOqp
	 /wk2esxAXoMmFYgX3IbNzMyNhfr1MxVEdMy34PLWv0nztckJ1OUioJofM1mZLvsEu2
	 4knFqaWnTCDVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F392C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173836175360.15185.8686076482375582509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0593e958397365d651629d9c73e7281ce47be2559c096a94d5faebb6c0e8ca4c
Date: Fri, 31 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738361753
