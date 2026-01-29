Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9FD315D31
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769714634; cv=none; b=q9N/eOakqkaygHKKIb/ShOAbw181nUuOvzvqzocn6GD0M+7WqJfQaf5nuZn9lYXxsX4hEktbLvtII4qpFBem4fSTa/rSUj2FLZxmlgEDBvptMmUjGvRHzHmKZVhGr6FujqLBJDQG/HH2k5VlIJd+aaeW/LnS66uUx45RsqZRx9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769714634; c=relaxed/simple;
	bh=g+MsAa1BX/pXyUpJ1R6SlQm2YGmE0A4l8371sEkNxL4=;
	h=To:Subject:From:Message-Id:Date; b=hKpHfMKCf3dmTErAsT1tsEEyOFnetiZ00tnP+JuWvN9gegRPal5ZXDqH6NGp7LNvQR7iWXEl8mzXfdHwQgPRv+RLuajYgzM54g2msilNW2hqS3jW/w/5h57aFZ5KAKt1Is41zVnslLofeJlh4IRSNivY4hiH+0xapQPmbDaAQmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeXNj26F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeXNj26F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B33C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769714633;
	bh=g+MsAa1BX/pXyUpJ1R6SlQm2YGmE0A4l8371sEkNxL4=;
	h=To:Subject:From:Date:From;
	b=TeXNj26FKISYBE6RNlLEQx7hsLP+bYOzakWZY+HqN3xIbOZpElKLTOre6fHD4Ccaa
	 bVIy9VVfAFoqCgdXir5EcCqpb3l4X3qU+iC5kkey+tCdr+autgNxbzXOhedFLCndCR
	 B7Og/vdUkeo+oKSxe71Zx8ZqBz/V+hMVWJxgLplBoGkyP44Vh6+PfB518zgWb9R8rt
	 GiAEuP+tJp1S3bc4mxmooYtYiancna6Uu6GDP6lI0rqYzbo4nIU7etQhxJfM3DZ/6v
	 e1aBSBxYY8Nmd1DngFwMjJDwiim7xmo/iEkRw/wAisUyn1pxtVsjaQfN2y3r/lQd3y
	 FbGFT+pfOlBgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986BAD73E84
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971463360.20169.12251031503995614699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55afb6c48e5bb34cb81e5329d463f2f26e6fd59e2ab82f7594b97d7e86ba202a
Date: Thu, 29 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769714633
