Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADB83A9015
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768428234; cv=none; b=pCGajnCALje6Jl2QGrvLAoA+yeKutpzXvJlAVW/rJ15YSg7Or076mUaugGwgGpyc9LR1cW+/lhGpsVDKhPYZMWRnCIn/KzYFEjvgsN+jM4apn94UBBd6bhqpiq2Czoo79qtdlFK3ITEXkXHsJ1qbAPy1fQyDHVDaa5uFU6Eq6IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768428234; c=relaxed/simple;
	bh=CfI6cDtTH64RDXeT/KN79b6PSShFOBcreZUBmulLdSU=;
	h=To:Subject:From:Message-Id:Date; b=CEQJpTqoHcDiHpGkMgwK7P4fxzErwSbZ2BsFw5MuSxPzSWWiCK/d4/vfUCcVhoPdm2ThglPu7IyNMwt6lBkd+VmtQcj4JDeDRt77NVY1/haWN9fpuQaWQJ+atNI5SjYsEkM+S4hqsj6n1UJ6S5WjHR3f68EL5FMolS8WxSy05xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjdxuHpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjdxuHpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF88FC19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768428233;
	bh=CfI6cDtTH64RDXeT/KN79b6PSShFOBcreZUBmulLdSU=;
	h=To:Subject:From:Date:From;
	b=ZjdxuHpu2wvQV7Tfhf6FA8w/sg/kcZR3PXb8HRK+bvd+bGyco2LBjgENZETbBJELu
	 KA1MtYcJpvIBX+g24C7eXT9SUlIZyOqtm0NEueXR5dwF9fnQ6hkLdrbxlFlcRd4jf8
	 KhgwWCax3Pj/Q7r8DbC1H5rtzJ4OuLIQMbu0wpOTvE0OCWPrMz3p2ruZzrQvjWhE4D
	 qvfk4NqPHu97WsrUxsH+xWJ55/tuAlpWbQ5RnGNQ4TWpkfUNZ+dcrcAjFESHaL+/l6
	 5Ym8f2aAKpK7I61ngBWmIdgvQVBeWLZI8b7xZv56zOMvdYDboXMEYy29k0N0Y0lO8M
	 K569x+deldC8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA02D3CC80
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842823362.2408.7775358992212188636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8c64532a19d65bbf0cd0dbe7d3a17a27694624b693b86f0330f22914e98433
Date: Wed, 14 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768428233
