Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A714B672
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767326634; cv=none; b=OUWjFXo7+hVrlBa6OxR0d2mpahUkn0SB0y5t++6wEudzZyoqZkQjqdqVWY3bi1YC2pkPnIn90MgtPmSplnTykJY9oOsL/LfItXAkpac59dSHZyEmGh1JtmSsqInTP5Yo3SaeuYLBPLbQlC5aDwNc1jxRPy733aaZVpOzc4bkrts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767326634; c=relaxed/simple;
	bh=t7Ha3LDQnHlgF/X9h7cQdRIIux1if+QTZ8Ys9EHZyZU=;
	h=To:Subject:From:Message-Id:Date; b=cyvm7WL8U/9Pv48oMJz95gYzeAulaeoxVxgwIUR97P66ZZq9XMHbd5nzeQrwifEARkukAvxBNkT/e9VDuCF6REnfi6EugyJuBU28A6p+W1sQzxOQlXL+6pmKCzEmY5AdcxM6g4BJF6H5KMe6zajmj5/4Rqsm4ZX2MVdiA+VU7Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=He7x1y8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="He7x1y8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7043C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767326633;
	bh=t7Ha3LDQnHlgF/X9h7cQdRIIux1if+QTZ8Ys9EHZyZU=;
	h=To:Subject:From:Date:From;
	b=He7x1y8rWjViZ/oiCwFfUhRVd1+LnalFjgjCp2Wk4y7utBkHkEdWJeX4J+ag9Ty8S
	 Z5sO+YvQ3vwDxQCcHV1+byhcP4DcpyvX/1cNkJrOq3UWaoc0QucQOj7xhzAYtxMhu7
	 jEhsbBFT10rgDrRxBEqjT/YXzj9UmMFcB2k21ZLah13MmMil/lHXlIpAtK8xfO2d7+
	 m/Qpo1Yt6IHoMoVu/WmRWQb38TUYVE/8UiJFrKt+HQLg5LgrVJ+8WjaEdeHEGRWe7l
	 8BFiRX2M7k4rcQVsCAdcUYy+fNVsMjxNhDA+kyQSaAv/euO1crCi3H0IA9rXiyUide
	 XRK8cFhf3mrZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D12EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732663358.18290.972764246807942286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1ac91caab25080d0be4e994afcde344b4d0e9110347a5c42aed7b8610249e0
Date: Fri, 02 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767326633
