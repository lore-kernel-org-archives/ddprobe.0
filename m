Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117211A9F97
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769873034; cv=none; b=vFIiK36PdkwXQ5MQojAhMLHPLRNSH3AV4qT5hA0IsK1d7BFL2tNqZHvpAvQh4jE79czo8IKUkRU59Bu1FByeLNp41Cvh1VYV8BFaLUH66kUvAdnHMr9+zwXlqjr4NWp78rygLONoZ+0TOeB2vycRcLfP97AklPc5oaGzlwh+6ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769873034; c=relaxed/simple;
	bh=2dK6ldUgxjg0jYwcWJTwah0yPG7ZImR7xPB9ifBIMUc=;
	h=To:Subject:From:Message-Id:Date; b=BHkTGqJU/viJ1PqVKUy5dqgTokmwWEws78+LrWGCtGYHrJdzWZPOYnI4TyrbwDGL/wATYLNZX3uguq9rkQU6n3l2w7UcsgsalrA+nM0cmzZVkZRGc/r0gJtb0M1tNyP/3OFdFIrKhMgr7oiOmJ7tar6jZMFg/ozp6qazHDEvPRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAjfUWgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAjfUWgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDDBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769873033;
	bh=2dK6ldUgxjg0jYwcWJTwah0yPG7ZImR7xPB9ifBIMUc=;
	h=To:Subject:From:Date:From;
	b=jAjfUWgYTr/PiLj8gswuu0oqwlPCyqc5iai4rZlB9hI6UuPzdWDc8uH/vn8YDgc3I
	 Q5Gm8dgx+JpJ5OjGfI20l21Z7VyU0oLp2hPfW7N8zIxKxZfqAzykEljEjQt5sk2k2m
	 KsVccq9HsZfOFQOxcRfAKb6Usd79pK5QkVOjnvAWn2YENjea35j8Z3rGzpoMP4PdSO
	 JYHg9muAo1SgwCsp3Ei+69Wx01pK/c3ojsIX95YLbuIL/Jo7BPHTpkxtlbrCQ3mvNV
	 hYLEXMbFDIdrcOamGTModBCdSZbBp0B12RGE7/u42KHKhgl29Epf6jqAQ2Aehoa6Ie
	 yB8xDrAQyrRrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99729D79779
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987303357.21732.6181933488321570742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8aafab475759b7fcf3ec4bd3a105e03f60a9325225cd40f6fec0b3c5ca4e95
Date: Sat, 31 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769873033
