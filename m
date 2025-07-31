Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C218F5E
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753930194; cv=none; b=meh9OYFzDDC8VZTk2uHsRoLM+G4ktb2XywGJXXs+uXSmu4xsoy8qeQ2A/LWdQ+LjKxTUHB5jltsXjVg4Zh0qSkzzORJfQLZ8bhIGr3y7eg1tNCxlF+enZcDiij7Khgwyk2HB26yDuLqW8gRhm0CWseqZ/uriJ8DMuTZr5hPLgiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753930194; c=relaxed/simple;
	bh=UAheWC8cQlvF4YuckzsOYzb/3DIov2wFlu74qI91d5w=;
	h=To:Subject:From:Message-Id:Date; b=jvaUs6tMpjYhy5yHouBCmUJi7FbJ9XGKalmWnpUNXVlO09XuICtHU5jeVo+aOkNGnTRzZvbkzpOHj92b62WN/IWYG4aX06ZihimhZaEU4EzZra901xCcCH3AxIsyaeb2G5tGbjlI/JMTcPgnHEBzNrIuYUAiVsxFQcYH0Bi1LYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFNTs6Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFNTs6Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54FDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753930193;
	bh=UAheWC8cQlvF4YuckzsOYzb/3DIov2wFlu74qI91d5w=;
	h=To:Subject:From:Date:From;
	b=fFNTs6CrD1qWS9lbOW2BL0Pd5xwnehIILFQrpSXzs2MAXzQnft2sUiEpacaAq+8UQ
	 mHU2JQJVFmikptTEj4gx+9vU78awmTD52jls36VnkJF1PrTqq4jVoCdFSetDpI+K0E
	 aQDX2GSWrmVgCN87Uixkan9oWsPYHV23T+BOAZBgLQBDK9t9RL62AiRlGa9Zb03NGc
	 UFNtbDFAwau3MibPfazZhJlJOGedsQlFKqYmy18yfiqXOx/khbUhMHaziHu3r4GJ0p
	 +SYXI8CxMWliTR92jtmK5L/u966zIfLlBaV6b9sXYFmVBaHkql9UbNH4wMwQblX3QE
	 u7txMSPH/nWzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F6C87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393019359.7066.10654089648943515163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229c12d25dd2e3873ebc27e282ee6163752e076c3cb1ccdc27dcc670fb54fca8
Date: Thu, 31 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753930193
