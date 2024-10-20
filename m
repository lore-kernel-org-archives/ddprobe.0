Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22938184
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729382754; cv=none; b=TsBBsuEYbUD9L9wz4Xl0GpW1s4NTnO58AicZSWIJQWenFvPOJ40OnxY9GDTdSSnqczFUjPdvdhX5f/6caOTiFjAHPJDA9T0O1VWc3QYbYHoLOjuA8O3wNlbIJrrip6Kl+Tc7dAcc8ZLBzrJ8zYnrwj+X1K5kKf1K8D9KZgKi9Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729382754; c=relaxed/simple;
	bh=diDUvvEq6/GYTwNdltnQ1Re7yQ+bjbi1yx931boZhR0=;
	h=To:Subject:From:Message-Id:Date; b=qB8ej5IDnDSetRVchK6Li8juH1ChqF/Ez8UfCe0GrIYQsXdIR/ft48ZIoPF9TWluwvvAn2/0qWCMbaF+1KbLpygmsnZ28B7f4FI9eTe+QblkgornsG804uWuJqexEzw35iv5w6hcH7LQSo1bCkFNx9PpX2E19C4HYKo0/ECVONU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYwcalh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYwcalh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8AAC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729382753;
	bh=diDUvvEq6/GYTwNdltnQ1Re7yQ+bjbi1yx931boZhR0=;
	h=To:Subject:From:Date:From;
	b=iYwcalh/AjWKvjIPAzPCHdjiegZeO589VG2C7GAEhDiURpgnWTOSnK+fpK1wki427
	 A8w5Tkmcx4Kg/NzOPu15WQrqIbKv5JUJQLnR5ZpcUwI4THOJSiGOkfnwZYkcvnNsk/
	 oPd02t3fxqdfO1qLw7PmaL8uPiBvz4mq1cELzB9j5sWWv46MC+5r6NFDbzT2v/yYyJ
	 hC/UQUUhJ8KMHVUXb9Ljyvy3T39flKLUxL2ngzRaAN5PhQxRXx4v57/+9r8EnlHHfS
	 OznIDw4UqA5BbwpFaAIGWjE2igsX6uz9+ze620m8q4oy4jGUTLB4r+h+T/gc4IWRKb
	 GcEwm+cgttA8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9642CD3C92E
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172938275359.11321.17894687871179148703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a757bdc5a58ca0178c39b99cb428a81c8777ab0cd374df3f873403415c7378
Date: Sun, 20 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729382753
