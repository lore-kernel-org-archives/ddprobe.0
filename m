Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1009C33CA
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736240154; cv=none; b=BzhHGzc8owEtgYkPp8RucDVnpFanmDEg0+bXwdmEn7PAtMY+hlz0SQcOxeWsF0JlafUEOBvGWC76/wOdWCLWPcTd3C70goqhgaLomh615udtY9n3ZRHpG90Z0oBuItFnM5tQG2+1+Xo/GG3uqaJ+uSvs6msFLObW01fNkQTPgGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736240154; c=relaxed/simple;
	bh=jfRDDpe37BPefdV50GceNDO55NM4+3G0ef27lurni0g=;
	h=To:Subject:From:Message-Id:Date; b=pZ4PACM4Ww6E3ztsQJnBi9L+H+qlLHIwEPfBxBSuRy/Aj5sCfJWDxhiYTRuQCiYhvUUeRZTASHu38R6P8Lk8sejrVuUc3wndJ/WwPh2c74Q4Chq18eRGLHsUVgyqOPNql0K/Nm4U6kJxaAj0zidVReD58Thg4S9dR7nTdyWytug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqXhNAQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqXhNAQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E45C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736240153;
	bh=jfRDDpe37BPefdV50GceNDO55NM4+3G0ef27lurni0g=;
	h=To:Subject:From:Date:From;
	b=SqXhNAQ94fI5ftnLHjfMhZS+daC85Aj9tkReVSCJ2XPS/IFccbpBQ6nvgeX6zKRva
	 20I5zw3cNozMl1ReWH2KmTtw9x4Nr3f+qyh2vECPD0BtG6jOHAwHbA6V1gaZ0Mz8nW
	 2EqV0vQAQXdP8uLkAqc1RKM0WPJ/pjIDRSW3RjnXBm559mlEL5Y3CbSIlp9JxKgVBy
	 o/5RKOcla81YuKUUN/iMejIbF57PLobFZUvo/QaUOBVFaMcogdi9269KBEcH9r+fzw
	 65I9bLk3pAPCmth4GJoXTZ5JMKdmEtnbCom4GtraBp04Mtr2ynUi05HixMBwsmLrfg
	 A9CYRn2BEV35g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934D1E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624015359.26716.11429838569447882735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8237887246c37dbc14ea890490a57375b6f449cbbd542ad35ce2fd85100fb5
Date: Tue, 07 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736240153
