Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A143ED12A
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774949694; cv=none; b=cpBfb6WOZ4XpCF64QLPk5WUTK8ipzUsJKE6MkrnEFea7OySSiJAw1KmFANkKtDPyt8Mhge5ioStrfRGu7q+NVhWKmrOar2zSOlOUBvfxrtF6IWTeFWOTjXVDMH/l60UgX0MKBDdtlvq6aAEg6pe9x0QMMbY3Mv70awumO3Z00s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774949694; c=relaxed/simple;
	bh=3FiOxn0HYQEe8tngf3Rh2x/euDV7egfnYJkGXugxaDE=;
	h=To:Subject:From:Message-Id:Date; b=DoqzVpbAFO0E8sqTxQkKokbfXTEiWQaw1RQVBoTv81JAhAIpQj+v7khf1Tm+CE2v45qYEB1fBz/QnTG/f30F8IbbmX/veFEhLNzXLKmobqF4BRHs5WX99JxMUoira2N7H1gAQPQiVQzrg5wkjUtkTA0vYEtw4frN9B5AWEHrne8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEsFtfbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEsFtfbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74E3C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774949693;
	bh=3FiOxn0HYQEe8tngf3Rh2x/euDV7egfnYJkGXugxaDE=;
	h=To:Subject:From:Date:From;
	b=nEsFtfbz1Es6kC9zV1X8uPl01rcfo5+ACvHbztz2leifBwTwW0VuzxZvSX9BM4gKD
	 xgQFyLLvzz710k4iUZzZ2fc/L5hdnOFwWVKRH7iGeiAspM6MxVCuqK2z32dBfb+GzL
	 s7KEygmh5mYv8F2MUeis/8TZ8Uz1luJlMMqynq1Fp0ZWD2lg1tNJoLAsKTvBos08Ox
	 I8kT6I33hNCdftTUt7j+QDHXe7mH33XoGDFiP8FO/gXf1nNPyKaiptHxzYe3zq0nki
	 GDorM3idl5iHxow0mRXSMTOpOIxsIQtmlleiZUwgMa3gjIXZEE/HpCF0zcZRbQdtLN
	 6IuUSyTwMkjKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A1FF60EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494969360.2235.10673097537421456131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1941393f98a953159d43650dde391708a116b6d5b95456c5a41917e4299dbf6b
Date: Tue, 31 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774949693
