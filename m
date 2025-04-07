Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366DA1CB51F
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744054794; cv=none; b=N/JQX82tcDeHX7mX8tvaE1RuTvYVCWLTNOXOfRvV8hskym7G+KaWk7bQPyVF/Q0kVnhWm/01ouftsoNikhtNY7bu2KncBjSMKdMkLdMpEFW1AYJozSm4Jv+CDatTz+HcV0aZdTaVI6U/nomQg1ypgS0l2pi6/+qgeuVqGGgxGdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744054794; c=relaxed/simple;
	bh=3lVzIUG+cLVV0KjA7eWmhUzyKiuPu8xOyzZtlqQhX5Q=;
	h=To:Subject:From:Message-Id:Date; b=gFiS0JyaFBZmDqBf7ZIXI57nAyq0oJrvPJiNWnPwC95m0IJcciX4tZliFeOUlsQpbiT+P73JCYKPwjdgqG593OfHvrB9Dy6MTuOXRB6KDWoaOSJTA9W4V9i5N3xnJbFzwZbSX6qmS4tpllKxo/WFDHOVX2QnCq6mibb166HwrYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVZWirtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVZWirtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EF6C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744054793;
	bh=3lVzIUG+cLVV0KjA7eWmhUzyKiuPu8xOyzZtlqQhX5Q=;
	h=To:Subject:From:Date:From;
	b=oVZWirtSBnvSZpOFte2GQLycLk8/uCbSSGT/FKf4oOvN1JHNRwqHhT//HIlWr/1c2
	 vyIL9dKwJmCsrMsO7ry5k3QkCdGHrsR0vlHxPg3mWmiSzWNNyLeTn2mWek6j1QXHTJ
	 2rogbs67BFex9k+E01hoTImL84QQMRLvnit3EXdZGW8YGEETISmSZpFzWM9SBdSYcl
	 te6KSaMTNaxKc5GPlCj17DrVjnGTnwLdhTErt6Pqe6Xb47k2FsDV3DEjFQzTGmDCL/
	 f1c1rx4RnQ+sgRx7H41uSt3mdvCDYF807MInUxrXwTKWmlgLQTW4d/QW6o9KIeh8bX
	 0QTKfYRUSDZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E42C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405479359.24562.9405756358449902874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc0faa5107d268cb1505f96ce57ff46e88a9739588e07b91b0c474eaa69ee86
Date: Mon, 07 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744054793
