Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68995433CA
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718141903; cv=none; b=CBuOcor2dL0YKft2vXGdxGyLQ6VnSLW4j5LpLBLtrlATJyc06GCxoqyBPRzEQua9VDpKvMRBiJjMr5tXMt6ahiU7bs97I2ftzLSkwBWM1v/F4UGn/V6qQI6tDiFlb6ir0lDsD4Gxrjtq7+P71rjTRC0Of0IbkLqZfUGG8LEBTlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718141903; c=relaxed/simple;
	bh=UEnjz79AeLVCanTb4seLwgiReSg7Is3b6/Xt26s9KBE=;
	h=To:Subject:From:Message-Id:Date; b=We6cEsy/HImpzpp30E2AHCkkfLxRX5SkDGyp+u5pEg472nJWiaF4ck0/EUwJtcfu6YbyfSNqp6qUeglCOVxfTyOsTLAGAEhU47hRl4y7BrOj3HslNQqWztY1jd1sxQ6d4Jlu1BfWbz/YiMrQpF2zpHENlY4+HZUxY7FUT10TrZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brgUiGkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brgUiGkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EAEC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718141902;
	bh=UEnjz79AeLVCanTb4seLwgiReSg7Is3b6/Xt26s9KBE=;
	h=To:Subject:From:Date:From;
	b=brgUiGkQ2Pf/fa1iFpLSWswpuzTcMTEs3GlgDRUPY4uZM3vr2UsWC0fP3+g/UhYxW
	 xUhg5hZW5uETdZ3aVcDI/OyLMbpbKXofBjjDS/JPeBDbIzYOzcQp9Qrpt8ZLexY+Wp
	 04zr/WJF36yeZI/QfUf6RmEdVaGKG7NKlDSXMCLssHP1MLk9OfrsqtW+9P4nf7oWvg
	 Yp7oOqYnlQK50lkVWhUpc3RhLpLEb51VvFwgHxKh7+F4ZTfGprNCK/advBf2sbOhpb
	 rtPP+L0LkcQ15AO3wrbLdO2EB6Ju/eNkM/0XCNyO5LwVwkax9Kr3mHRQQz4iGFaZZh
	 yieETuf1ZKbBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56E7C27C75
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814190278.18309.9766829962954271552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61c9b9937672c978a38b69019bfe70ee53069e75ad35af2a98fe97373cc4217
Date: Tue, 11 Jun 2024 21:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718141902
