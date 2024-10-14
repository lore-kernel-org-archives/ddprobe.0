Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2768D17F7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728864354; cv=none; b=mUSYgM7f+1gZ3rJYKf8+lQQrLM/Go5LyIk17IT6u2OCXW9g3lV1C4kzsZeEpWNsjB/8x1+AzfReXoNU4Wag62jI9WtRF0ax8DaE8OV6eKrSKL4pZKlLwIGWBbZ+UXi26MlPzbiGrWCc3eIZmnTRHAjIAmEv1qWKGxwArSQsRd4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728864354; c=relaxed/simple;
	bh=Di+SwqjnNSRt/B+3iQkXxsUmR0JM5AIP43vyFRFdXtA=;
	h=To:Subject:From:Message-Id:Date; b=T+Bkr1b32uXyV2fbNmdn60A5j313AbfDYkoP9MQ5GFnY1dWD4B89+4K9E1ZSJVY/cdYJaYGtZp5WX/9p5/6kGi9BwZ8G/wPEBSsCma6hLLafSPASXkY38ViolTF9VnI3bBhx1NM8bf1lft32LHLqdZAEOox5yngdxgis4AwX4UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR6N9avO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR6N9avO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA614C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728864353;
	bh=Di+SwqjnNSRt/B+3iQkXxsUmR0JM5AIP43vyFRFdXtA=;
	h=To:Subject:From:Date:From;
	b=bR6N9avOKArtQQpc6S8JExYJ2x10xhg2qRraCcbKuS8teZxZZi0KhYrZ5k1SsIFZa
	 yPoa8c8DBJMDcJimDF9nxoHuWSNZ6XYyChT6KkcukJUGdhKpKuwY1teDosm58J/n+Q
	 s+snREhwgKfsxYCmm7CQMS1r7NIG6/ikuXfYtnEDWPcxbLncYzsZlMkK+PdfblENtS
	 1s56iEKV4VYTT+mPWbO2NgeYaPwYgJzdYR1cSdufNipK7wlcWeosRFQgIGQi4vSnCx
	 FnhiL2clX1u64lDqbXq6B8wphcEtzEP/tmo6JCMhYpfoZCv928WEOnl0UItntyJKiQ
	 4+pxpSRjI1czA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2DCF2591
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886435359.9899.7076116614919191872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56915c716ceebd15d2c7b7c41465b31d5798eca4bac250a81cc9b5c560df35d
Date: Mon, 14 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728864353
