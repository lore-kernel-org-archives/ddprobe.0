Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F272AD03
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779232834; cv=none; b=pAkM/ge/v6C/qRkm1BV6cI1vsucryQriZfGYomt/zkXmu3hZhnP+E2mftQsa0ZBp0c+cDfuFKjh6KRQqYQKQr917Ag1Agqu/x+vnA0J4IbhD/ki5OnqJQjYhFfyRGB+OsX009+yN+ofPaD8I+Ak9EqoLtK6QJDpMdF/zvtK1wfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779232834; c=relaxed/simple;
	bh=wr7JEQK5zu6JjCZFSOdySGXFj6MtmsEdy8pRQpPFW/8=;
	h=To:Subject:From:Message-Id:Date; b=ow7U2aKePxExNLD7GsqlA7uEE/YBBxRPHeiplPNk4dgjHngGwFfYLsjJ4Cmv4l4P1cx22krWkFaeEbFEYOAYA1D6m8zDHom1HfNJAmJwn707fJl0tqyzqP7shthK6Gb9VDSWSvGVJc7gAAflcGsZoRERbv68U4ZN3YyMVMmDGns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZefxxxQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZefxxxQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97D0C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779232833;
	bh=wr7JEQK5zu6JjCZFSOdySGXFj6MtmsEdy8pRQpPFW/8=;
	h=To:Subject:From:Date:From;
	b=ZefxxxQ6PJPsk+sqA8jjpWvpF6xMgXJMqJiz3xj3HWcFpWHu3OmjbUR/W8Vckc0jf
	 l9Pg/IkPgjZe2K9cNFUO4EjLaj0WX77xjSBtpMMI7FkRgD5VeM2oEUqsm99wAEjVmR
	 m0LEMGGg8r+M0FmnJZk5lDtFXqiQIsbuRVptpC1oGcMJZmbHeD4Ma3yra+dxH+RrGF
	 3/vNshb495Y3OBgnsvwrJNB7SsFEXBXKQDDwWkxes6RueIrYGZjmc7nFN1qt0A2uEt
	 XQppVibf+qK62WKXdnxPt4YGy337REPwpc688ZOaETzs56zcZT0wC0XtwMV7bayiGq
	 FNqgq7FZrKKpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD965CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923283368.30234.3395464022113341870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6af73d914647c6c3a804bdebe79638e962ecf27a59ef18d34601cc6557c6ff
Date: Tue, 19 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779232833
