Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422B121ABB4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747359594; cv=none; b=eCtP0MP0KzIwr06hy1EisrCNlbTZaPgDb+3XebgeByQaH8jbPlGgxFl7/nx6jIBKcK4tHIu1123qqVyQ7grOpWoounTbMtqvrhI4WnmuYueyfnqtkSyPtQGi3UMQe7NRm4lTeJUdTqFnN0QIFvaia61M+8TeZI9qIlNAWrsysgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747359594; c=relaxed/simple;
	bh=upXPn07xRP54tqIhyHi83cx7XtPkMhmGZkA+FWYOo/k=;
	h=To:Subject:From:Message-Id:Date; b=R41tiFwX6XzpV0C8SNaMDup5Av/ga9y8KzAE1YMYWGRAlIQRXJjotEyMLCW7RF0ZGZjtZuBJr6QEgAmB4ouvb5P5jYEqHE+TTLKbVQmlZwTt1lJnz8vS1MEJsRJUUaj8iyxJk5SYcTpf1LmT4aAJpbpFh1IemSw2axLcaXoMaMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIJB6soF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIJB6soF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD46CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747359593;
	bh=upXPn07xRP54tqIhyHi83cx7XtPkMhmGZkA+FWYOo/k=;
	h=To:Subject:From:Date:From;
	b=XIJB6soFv6hL5YbYrSkQpPut2KPUzFS2VUP/CAv+Ki75VY55Qv2HDb2UqZ/Xj0kLf
	 FEva3uJjggIIz4mQqPSAJJIT5cmiyPsLbKCKKLrc2xoLyngs7d0tnbl56YNMdjfcDL
	 +6rn5GYk3mU3PE9l7gtM8Bm7QQMrOYn05ttIoGYtAdRwxnRXn64F3MwemRHvnZiSqJ
	 5ble7lXNCF7yTViYHL5fye3RWLO679ghA2iPDZ6RtYWVFEZ3m+nvrQ0NsDkZKBThrW
	 7mVO96Wb1uwc4oEfrDDtNlz2wjRHCR35PNFkceI3SeZMVaF1X1Q1qXZDAlURbyi45X
	 BYP84IdHEc7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979C9C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735959359.25659.10409425351934514843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dffeaced9a4c0cbb85f15f140ee313238eefec993248648f08b247a25704b01
Date: Fri, 16 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747359593
