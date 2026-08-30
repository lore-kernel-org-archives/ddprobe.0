Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7606B21255A
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788129634; cv=none; b=rUnMZWVfAAI2iu6eqkwqixQgyfXN/bGitJDY7Lg9qdXeHl7P1qYgExn85pkZHFJWUUGgjS8WpH/WF9t0lm6nO2Eymqxebn6u8Fs7m1bYkLD8MyNjSiGhtC5fDPYlExDjVSmUdc3+2hSXzVbMP87WvzrhzG6DInqZ6VVIccOcLLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788129634; c=relaxed/simple;
	bh=x9rL9V27y1GBnQXINm6fyNLCn+UUEmjgncMUHYvlckQ=;
	h=To:Subject:From:Message-Id:Date; b=a4m5R+hXiEvTKv+S55P6JsyKiNcdKsmBFSr/NDZKzrplbmL4kOP30b3mHwrt9eovhOHNTE+KWFzsfwTKN/YhVZnUi3/JJjlhkKyvnyUEXEIuP8DCGw4czTOYCAAczNcuE4S9jJbZIDGkb1qnx+aZWT/8wBQQJ4cRbDIvTfi9qfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouXE9Ba/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouXE9Ba/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5CDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788129633;
	bh=x9rL9V27y1GBnQXINm6fyNLCn+UUEmjgncMUHYvlckQ=;
	h=To:Subject:From:Date:From;
	b=ouXE9Ba/ACUugkghQHHJHpIcXGrzY3Sk4zWUqabnk380L11ik0IwEjDlylUteTC17
	 JuORKDqeoCbLummH/90hVBS0FZhggnuUNzVgPg4FqKjPYONIG1+5OEK467nwc+67rX
	 a3XlKxxDXhuWJHl12WIzY4LzXEUyLELaSToFFexjAkAerjJvVMPhW4eikTCAW1qOU7
	 iLJzHbcUirLqyOEDR1r+X3Bh/s1CAfjkKQWjwHRmkouHKXplK4FTQvOliewQbgNd+I
	 kLZEORlZrx7F3/FvrUi+ulaoMYjhpC2px6OAXoeaGNJvA/pw3VjSYPExBJDenpHtep
	 OtN6Ayue7b3oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE39DC61DE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812963368.19475.12061205880043997834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ec932493b0582087a2b65ea6deff77c41cbbd94cb85de49676d3d45ede81ef
Date: Sun, 30 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788129633
