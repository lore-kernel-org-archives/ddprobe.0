Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1FE1BDE6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720817363; cv=none; b=I58KeH1LOlxQptsxFRf/OyVOp4OIMbUplQySqVDO7asYrbSx4zNQMK8r7Q2YzlK+/4gTMlqhjfEYu/V4f2XiLgtoXH7uyNrQJzw2o51cWSrBta9LEiL32QJKE6xresvcnw1nP8yVrIM+NqMqoUQ2GL+m7Y89GE6/LWj4yQOsoUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720817363; c=relaxed/simple;
	bh=3FW+7ZWcWIAaKF7oOIyoARGXxzPX5eAqxKPYwJDyXgU=;
	h=To:Subject:From:Message-Id:Date; b=ksvhqmoLWqutt+C0PPgHqQSajV4vYulRG95W2zlvSvDbFEhtrERkGjzENy3j4ZiKc4numKbVZH+kOJl/KB19yv+qxbxtvmbYXTCO/s9bBGjV0hCS7IMfq4T7N1UALp00QndmQHoiJwjvougetZm+NtoT/jzhOlKCl9nYgtjIXVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcqcqIhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcqcqIhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D541EC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720817362;
	bh=3FW+7ZWcWIAaKF7oOIyoARGXxzPX5eAqxKPYwJDyXgU=;
	h=To:Subject:From:Date:From;
	b=gcqcqIhBAXmrOuyrRcIwfkvh7Yey+WFxf6imRneCkAiQybeew+j2MQ/rUKieGygCj
	 t0UgLZjSAao9Dqgu1nGnol+MnyMfsgPZCEpmnrz6nLH8wsAdAfZL4xVgQUBa7t8Gmz
	 sapNABfYiSap7SuWWOJTlVMYu30ltlXWHN8hGKMPiIWfvTbuAuLyiGDe5n3KY8IIfI
	 4hN5tWlqt6I682QB1fj/KCCh4le3hA9DJXVTyt+VYAI30+1XoBv91Me50OStOGLe1+
	 +MbO0/Q5tASwCl4i/RYUmDM7Z/3IFMM6nQC7/iaMrp+ceocqOUesig7c2erJI5AIOs
	 bJAbtLhmwgdGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE132C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081736277.11705.10329331314844853690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5bd4f2cbbb46b7401f212bcc6ffef789f9cc4f1644d02d428485aa66c08f21
Date: Fri, 12 Jul 2024 20:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720817362
