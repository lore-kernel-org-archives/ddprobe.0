Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0CF54791
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758444595; cv=none; b=NhYj+xG1Vu9Jg+8paxoH3meSAHsYtVSad84jtYp4QnJTDYTll+W8DXMfZyoLXefF/uSCxcFbjGJTB2siLYOjlfpgzoE2uQpqjYDB0ULeVe9wbBUHZSlcaPS8stDBzumGPQJQQtd1kb35ahtlg99cSQpBYAjtcsW5z3i9w+8xPYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758444595; c=relaxed/simple;
	bh=W0K1w0hPm5v9IwWhJOp2HpkSUh/7NtOcyYIAAYLf2vs=;
	h=To:Subject:From:Message-Id:Date; b=CBV4r7I6zDCSWz0HYQxQIaLvbiQG9fUdihWeWvpJAx9GDvoOqK8dEzzf/wCv9H1+YI3zXSCTF0neAOHjAoUquty5cOgSvdhO0VPev/tWmqyV/yJN6ba0Q7x+NLdyTlJ8WfqztNpdLdPl2dhnS0GJ3Kz3RqJR2RrfJN8D2hsElUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqcUNDo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqcUNDo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A992DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758444593;
	bh=W0K1w0hPm5v9IwWhJOp2HpkSUh/7NtOcyYIAAYLf2vs=;
	h=To:Subject:From:Date:From;
	b=fqcUNDo7H9zhtKjxO/HICyyIj2v8yBJ7fhWjMlm0RYSR/umaghjwI1SVQPKTpOjD8
	 w6KsC1xLZH4iohmQ1nBTWlHuT1eOiUM4WYLa7aOtVZY/hHb5v0azYA4alua6NI90tb
	 Itbz//rgp5JrPl3SAB9/p/FIGhUYyFd9tY5qfwiOtLHbdt9QjMg6PFKLR4Gf6IyTiK
	 967yazdjqglc3uY99/L1sHG0pT3KB/3PC8INHhr7x0XkEg9/bqDe9BuVI1jGcLHD+S
	 1fkpfL7uBv9rHqcrhIbjlQqp+fxwgKdMuLku7YIJ7a+gfjXSn7dbPLlrWy8aMcZJu7
	 lEbdHTR0p3aQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC8CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844459358.14674.1577315304922672673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19380019173b819205ee3a3f681a8f6adb670b47e293d6916277fb13360f3b4
Date: Sun, 21 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758444593
