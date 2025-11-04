Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC3734677F
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762292994; cv=none; b=nQ7TbuDlKYO12VgIa40XDq0T6K9I+/3j4LrTwD3tMfjzs2vD+pEDPV3DhrZ1XYhw3QYATI83BBbdFz9wgfZqFVrBgJC5TDhPVeVYOzxmCPIYpkUleLs8HKHt0XDrlPBrYXF8m1W4PsO4KpfE1X1YEi29v0FP4OpPsxnJnoRkbk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762292994; c=relaxed/simple;
	bh=t6txl19UiAfVr475JTyKgHWlqY/aee+dk/oBNeTzud4=;
	h=To:Subject:From:Message-Id:Date; b=vD7fo603NnZ8ilMZu2+UKQMp5h60vwqYnZoaN546DDRzaL84Fnj6PR+lUcZOd1F/h8OUGkYLiNBfmwDgHusxGYNxDTgl4IY9SxSYuNmvgO7mJeIxOicrAGGfNEp5gQ5aSKi6ZQduVujDRP/zxwfzUEcAGfZ9Mds1TxAxYmbZlp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aS9iaZyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aS9iaZyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B91FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762292993;
	bh=t6txl19UiAfVr475JTyKgHWlqY/aee+dk/oBNeTzud4=;
	h=To:Subject:From:Date:From;
	b=aS9iaZyzlM2+i+cJtOrsOridwl14g8I8tknNeBOTHbiC4+XgOyr94fRz5hHvsrowu
	 bc3FtiL7TFa2ACAruZkpnw0RAyQjVAY7W3TV+S4ndSLshVsKgVKEOGatatbBS7KBX/
	 egWJtddF4y8tbg3k30skwgOZO4SGBzaTcmUFEGaryXYwvZjVq+2rW6GQHmdd7lARgA
	 6qWWOjNd0Lj0IOzL+3w5hajRGZ5aMJSDMkpD4SHB/cLYzQtssn7UTYPP0T2mrWFMjI
	 BRZrnK+4kg7DsiiUBINIZx076oLeRcumk4GMGq8MtI3dI+3TVzIL5onaSLB0qBy42T
	 sNG/W0BBo0WjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F342CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229299357.22848.2924794237658763909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f34c0fb2d6934ec3404aea1ababe2a8c1a03e1de8dea39621e2bd125c7127e
Date: Tue, 04 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762292993
