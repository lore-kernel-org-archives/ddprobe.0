Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C711990A8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718652503; cv=none; b=P058SqKJ4U9befuoi7n8WJtDDfHPNEAXm6XaUwGzyOCoVh6LHD0u+XSu5KYkiFoFGnequZ/Xf4eJb4Bp+EofNnnQfkkx7/PN71jNl5aJPZ9h0c1PU1Lbrt3/eML8atLtW+k4c8pU8AXfHyrxJLSynHqmg/f0Dbsd6DAeQN0tEQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718652503; c=relaxed/simple;
	bh=s8YYZwoZXxdUw67VFVu9IIilf7vkdUgJLPLOJWLAELQ=;
	h=To:Subject:From:Message-Id:Date; b=k1U8aM1ijSb8mQys9Ayodm8IeyHYrZEwtXMvtWxdv0LCjNDovuoIBtYwe+/osdnI9o6h17LvAKelPoJiApyGB4sllf02QQRSOmKA6GWvI49EqMIIWjHFoPOiTINDXizdi5Smd/hqfohZfpcKwQWqk50U83ljiB6VIM5vfj/1wYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkUThWDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkUThWDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE847C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718652503;
	bh=s8YYZwoZXxdUw67VFVu9IIilf7vkdUgJLPLOJWLAELQ=;
	h=To:Subject:From:Date:From;
	b=IkUThWDDbZROEygPLP6FBMbleKwCAFNimBurHHAQr3cgOXiGOG+RdKy/0LZE3di9l
	 MFVnBW/Ky9D6opdC7P9108jqDpT3ZnpnGNYlkiVQZ3kpV9jRiXUcRN4tnSdJiBDhj+
	 lKC/sQunA8lv/yIOSY1U6KVE9hXKnAETsqpd8JXzMUh9j5pKXQEwo38dTJGFF81nkc
	 ZpDIf+xTTu6hJbJHFJ2209sYn4KCEqWpZ+S/rU07I/T0FVowkhzs2TlmCnCsf6qcFy
	 J6e07re38sLAqNSxeuIOAPPRfkj0AlpAZrwDIaDAuq1CguJhDq+RMlTMduc0XkGVJ4
	 ePaBIJ++uWGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCB0DC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865250283.19893.1274046567340656493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8915b13a03cab15fcec0addc01bbd5f8c6eb806f00871ef458f4955509e6762f
Date: Mon, 17 Jun 2024 19:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718652502
