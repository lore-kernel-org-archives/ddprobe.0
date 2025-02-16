Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398FA9454
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739736534; cv=none; b=j5hy10cCJOEefFnsjRjHGvRuJ8pKDd8aUDA8JaKSNyWs31YkDOjLA003l4FOzAEY2jBSIojoS0Br0crcskcniP+axqUsr8fuvotBC9hBLXchphmt0ot6+zjyYg18VKAflzedal4RxfHppNq3/HWjx14UQrFpxizhScWW1rT5TKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739736534; c=relaxed/simple;
	bh=jFGIDNPk6BtfoT8DHZ3XjKIaW4p3VngUUZVHEYrHrA4=;
	h=To:Subject:From:Message-Id:Date; b=KtplfCURRoK6japjsB5HwNDn9Va7sClQV9zvX+MbRui5XX3Pi58PTAShTLEnB6BtbFH2uAgQeFxelTKZ/4DwT22CPykfVSgWIxbV9qO8eXtimJGcWT7AfctmV603NW6MjK+2IyVqX9rReAzh+gpPbnQv7d4sq9YkCJhCX78zCYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RD2puXVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RD2puXVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C85C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 20:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739736533;
	bh=jFGIDNPk6BtfoT8DHZ3XjKIaW4p3VngUUZVHEYrHrA4=;
	h=To:Subject:From:Date:From;
	b=RD2puXVBPAzUugfFuibMIyqblbYcY05zOLXoDKVYaGzGtMxDkaf/nxhto0PFxRWiX
	 QPLiVgWxAvJIj9Nle/0acJVNb5NdL03unSI8BzIkF7o2K6VRz5mQCWsrrbvH321sg6
	 DndH9yg3EnX6Gq2Wlead8ihQ2TFPpOH4SXg6tuyY5i7QJxzLdxim87y/6R2XVXQ+kH
	 1mW1MHaFm3GsQvU6a3uMZAUqlzw/2RHuDTR33cvC381zMtSG6JmQTXdrcs9IbBl581
	 m8vuWr6eQkClBhxgDe+PVgYiN+h7cMHBTl9LWzEsIq+HAdZE0of4YWriomyT3FYcx9
	 PTY1kZ4+i2pKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028AC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 20:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173973653358.19410.11561912888713867063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b172e0c702902bed26b81d726cad9c3dceaf2113b311e5f9ba41ad402735da
Date: Sun, 16 Feb 2025 20:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739736533
