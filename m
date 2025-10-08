Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274AD242D69
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759919994; cv=none; b=iZJqzCpNfVfDqwWtgknPis3k0uzwUvHB+l8mW7EAbzwcy+I0G6979jv/Fawj3Ope70LHvCtuHtrI+vE7w3OKkjnlSE3AJnBPn6IC4iqaxMyzNz0jqEJLfHhlk+oHPbVaGRhNS2C9XWoEwUAi7/zL8kMvFEBik80CISeRFx1Zpak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759919994; c=relaxed/simple;
	bh=vUQRqXFEc38jGZXjUR98QsREajLAgVCw2GGjJy7Pjpg=;
	h=To:Subject:From:Message-Id:Date; b=uO7zUxG4uFneOSUC8CyNmcvWucunemQ7aogy0bizXoI+QugwcVi4yaICOkeq9jklwEYuLtZ5VDEXxWqw3XrVFo7CTImpjryupV1g0A25YufPGs4atam6DDTUQDJ66gHvBgSS3p+IBmiFWeXwTxcRr46PwuT9OIvKiwCbfvIhGnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7WCYQnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7WCYQnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E102C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759919993;
	bh=vUQRqXFEc38jGZXjUR98QsREajLAgVCw2GGjJy7Pjpg=;
	h=To:Subject:From:Date:From;
	b=T7WCYQnWqPZoTe0qRn9gDl8txPYSTe6zVfdkX3Im7dHAEerXAtsG8DUtxxAtmYTin
	 PMkiK0LJzeQeyTfzsWxuXEpE4GAg7g6sOSgmXKcFKDw2ybRNSlzo72k43lzTZGUFoT
	 9dH/wm58j20z45tjiScZzUM4d2xCs+2lwvcqSQFuXKRXrdaHEym/mt3M2CD/sGQgqn
	 kflS8298pS9ZurkSB4bmXea/B+N27Hzc7TRL0xWKbd1ZOsZrgMx6bzxBlfpKS/9FGm
	 UXkCYAInYMuQ3pEd+t4ilfNq8LZYduKpJ09CnIuInPdQeVQukDjIXJ0rg9l9QhVptp
	 xQIEji7HQySlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFBACCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991999357.30790.1346317992842031861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b5fb711dfa047be2f5192cdd3dd60533ce87d7991f20f43fad78e06944e41c
Date: Wed, 08 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759919993
