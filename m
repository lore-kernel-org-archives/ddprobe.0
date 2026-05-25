Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F8A2139C9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779727954; cv=none; b=b1yF3PAXujCQbyee41nZp+/YlqSvKlN2bGD4KCaEwRf1o3bGPvD2NC+0o8CZ+T1rPTafF5hO320kutwcETVO7Wg62O+VnFf2JJIHCMX3CgZAH0Z/RsOWWxV9dlQQFKUUiU6QmZbXao6V7hlxEQ1BtlCNtzlbnTsz5SHfsx3MdKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779727954; c=relaxed/simple;
	bh=Ma/q1i0fKDvin8rOjksq90LRNfeI/9f/WVJcZac+de4=;
	h=To:Subject:From:Message-Id:Date; b=iewLZN7XyJO849qH3D/EgNPcf3jjDgFvQMgpQIP0FVaszidjAQ0dcUcBBRN+bb+PCkrBagJGJvSQ8I9fxRRU58t2zXnz8D2JMWVJSR3jQi+i3FJSXecHVaSnQS338B3z6g69H+DfxC+bo+rZUOUCd5nVr5B8sB1s9nyYo6DtSG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbLExAdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbLExAdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53AFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779727953;
	bh=Ma/q1i0fKDvin8rOjksq90LRNfeI/9f/WVJcZac+de4=;
	h=To:Subject:From:Date:From;
	b=QbLExAdBABkSwqnP7fTtLbQDQsspGLLIwL4quIj9uJ0kJUB0blB1qCjsq9lR8B1bd
	 SpxaEs+YpfM834SaKVzCIiwFxjacW2NUVg158NAeQWO8g/sOzDqrVP44FvBHTPNq7i
	 YSjwwMJxtzBcKI7KQklV5sI02KsQSg6w+lXhBD2t6ZTr9e3q+9vQsbbqnTini1KWlw
	 dW/iJOZAzAws/6BXlnDIZI2HBMz5wkl06aB5MutI7iSbmjpgmY/NTPTWFOH0QZdYGg
	 DEvlzo1nifpVfAkWtXvWXvQubxfgWB+EJWRhJWCnzmSW3jlG0ljFs+X65rfBFa7g3w
	 4YIS0ty1/ZwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D36CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972795368.28707.17697200506680795944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1357fcde889e0e5dd015f3b13b3d6af8e0582c36d06b9973d73414524186bb7
Date: Mon, 25 May 2026 16:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779727953
