Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6870A1CCB4B
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744277994; cv=none; b=Iuir/Tk3HW+7QbUIogaUBuRkWs9x1kM6oWphCoImQBgAAdbitYbeU5DXjwUQbniO9L6yMjIRWbyLKdfwq/qlXlRsL30YP58FBmBSlFudL2BDeneifncKEP5Ltp5jJZb71KWXfaD/xkdZWtPYIVCM1rcfyYF/1opMcgFltxxLtnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744277994; c=relaxed/simple;
	bh=URLWKedYILb4eHi6nUEcWW0+MUT1mEYmzAH8YYxVw1s=;
	h=To:Subject:From:Message-Id:Date; b=AbC76kFAdS6vWFaDEVd3a7+RbyoZxMlPhZWg5bVkCJHIU19ouibDFWo19g6g6xtC0Byt95KPofqurTR8WEunug68zmIJSlHELja8tP82f8y+3/oxnGoJ0gEJAZD3cSIoGP3oMXBhzYHA9UGRij7zhjHe2Vwf/sDdR3r4HtUjFrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djujlUmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djujlUmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EBEC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744277993;
	bh=URLWKedYILb4eHi6nUEcWW0+MUT1mEYmzAH8YYxVw1s=;
	h=To:Subject:From:Date:From;
	b=djujlUmDoD8fl+75a9Z+yuBwnaVM32JbL/dRAd0I/hqgPc+NVUBehixvUidoKojlX
	 3QgVpe8Teq302xgt4Irv9tACYfea+e+5FhAIbuQ7fmqroSYFToJEYiFsUam178Ltk7
	 22yvAuBLz4Z2dr/XFpMmA6Nvm+pzM9Qx+YgYOcH/tcTwA3jhnBmGLa5gJpREkz51qi
	 ysnVQXKkZ0JBht+Kv32syy5ysZdtswXHmyP94Nwz+oVDCx78SiRpZpuBsRaiVLxsAY
	 xNxCx8wClnzJhNa3zigIAsAAtTQy7/6Fze+6TVRSWz4kJZCSn+xfHfdYljVSylgHDk
	 9pT2rmcJoYldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB777C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427799367.13540.14666187257533614200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5d5c5d73a72a3188598bf4014b65d2385e85309992d041f5a7d532d6a18d5c
Date: Thu, 10 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744277993
