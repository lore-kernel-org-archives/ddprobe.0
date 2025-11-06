Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A012E7F2C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762448393; cv=none; b=hxxWt5bpTj0BpPRzSgnBU6Wnvmy+qMH1AzmeQbgRg4ePznkGwcBXydgnIJBOT/KYQq70oD6Z0h2YYNi5Jsx8tFMUz1s9AM+EmTXVAcJrfYGDOsCcTxHou/0Vj5ngRuAnJwH7OMlNhTHqjyu7RiX3+JsDgK8fpL9XnNyq1MbUeM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762448393; c=relaxed/simple;
	bh=b8QcFEeSpiyX9hiJsdKbUg+cb6bESQ3qiW5OKFeGxec=;
	h=To:Subject:From:Message-Id:Date; b=unsROp+Cv5RA8TBmPJVxrKQaZkcicw6GNTO0EWbriJlNVY7lP2nNbKEdCVP1rVo+CKoFWXZyoZLLlTaVYPZmRsfZqWgfErjdrg1vGIRuHRG+7ncwL3kU2Ka9to2SzkgdixNbjvsOiRq4DsPuqM+VSWNLQMIOHosuqw/SuInyEJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCs4HTyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCs4HTyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA63C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762448393;
	bh=b8QcFEeSpiyX9hiJsdKbUg+cb6bESQ3qiW5OKFeGxec=;
	h=To:Subject:From:Date:From;
	b=mCs4HTyc7CJNOlzw+R3rQ4NrDMDu/BYYWElsKocNJPl1mht76fd/UW0MS84szeKOF
	 uduhnbRTUgCrmwHutKKcSccP+0WRcQJkzP5Uz+Gx/szvg+hk7TgyE3/TU1Zcns0qQ5
	 SrPa15S4gKWZy3xzDaa2Myu5SAPssRBd0VtAX+sikO5L9nwdnTow2LpVltM4+YACDe
	 LUHd5DJUlIf1MLYg7StYBPgQu3TGJbf23zLNiUY9qf6FCSnWRLlXuocytIqFdyAh8h
	 siN4kb9P99VKlOVLXpf2zcsV/H2k+2+EsIDKk0NYysg2TCXSFoPvMqkxaJ7yVmV7a+
	 sr9WOnJFj8v5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B91CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244839358.16319.6155278218492393402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d21867d098bd276a1d8357b1c83b8feb1bd10920b3330501b572fc5cb32adb
Date: Thu, 06 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762448393
