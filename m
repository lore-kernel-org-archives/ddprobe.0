Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4965D3B2A2
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718865564; cv=none; b=um/Ly+ZPF5WTtkmrQ6SFaJayKgwrBtuCg5rr3EOFqxI2SIbMryyp3IYmkrUv11Y9bs6M3FKKW0T0zsgVdq9GogKfGHJ7y2J/NwRPRwUEiX9ew4LdgYZxtQBdbhXwimlaBV68pL+d9yserHsjeFTBHXHvQYnrYF+R/Q1ps31fWzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718865564; c=relaxed/simple;
	bh=Wx8g84u4D1sFY4Bq04ccCOKrRp/7d4kiUP6DMsBNcP8=;
	h=To:Subject:From:Message-Id:Date; b=VtveUk7ZLr+64cgWJOrYfAYYopPC6LjgMKeKB7Idf0k1b9beVYESm1cYfgRt9HxhHVCiunqpfkfGCWu1c1oSHOztZOELUp/JM5eEQVQmCOkTnuYtOjGatmqfGiFsM/lUO03dPvonDc6bZOmn90Z9qlw+Y66MkzqfsKbAhsxE0Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7lPfDq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7lPfDq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1872C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718865562;
	bh=Wx8g84u4D1sFY4Bq04ccCOKrRp/7d4kiUP6DMsBNcP8=;
	h=To:Subject:From:Date:From;
	b=k7lPfDq8rHMFngp34pj3pLZoQQsy6FxPVUnAtnLXe3EnEur+UWQ9UmTfaY5U/M4oW
	 Ex/jW0mboSZVyzlfI6yvOwmSosN72zzuj2934LxK+n2HpsuAnEY0hdcWfIUcUfX/ZI
	 RFmGXpVbIxXWauLA4MxrPJi90mYCtZPdnnkAlCL2tuYrIel6LkNJ+sXNIk1CRjSau3
	 OvdVjkIncsS87hqcE2YE9RT6WmAh0sUXXQGE6I+vSQxf1kx4oXupUNJH59rJjWfYCt
	 50U+Gg3nAJSUJ3BvfXdpvhKwe1X7uFxQiMQOwgJ2iwQzbmlqznXu8MkUWsYW8rhP3W
	 eE0HRcxvaTK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5B5C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886556276.10797.8892299362333083734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17200d0b7b7632a10d13371d9d3bcac34cf08cae4f2eae9d0f621e702b5a4f6
Date: Thu, 20 Jun 2024 06:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718865562
