Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D14E33BBBD
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791513034; cv=none; b=ueXQ8DkqaOl0zxWJqiHc6uSUUc7xhX6O3p+Xb+cj6WXIYrfpGuRBiqOMP9LVqWWmBcyseEkC8S58Axb0gqytscsWHjuSVBFDwSBe7UajVeofdgH8tmRpnVV2ImmJVDfzQ3ItEbY1S2VLRTRHG/bLN0cFa0tjKcAGazVlwojGoD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791513034; c=relaxed/simple;
	bh=rx5cZ2V+DV48NyQHOYuW/qk6Km3V66ULbrTIbCM56RI=;
	h=To:Subject:From:Message-Id:Date; b=er/N3m4kxM/QlAeApYOgvhVKe9el9uJUry0NRSh8tjvUmUdGtexNuX9cI9uyETCrc1kM6fJ6/nmK1M2JaYhhRZRQGZhWXWUJIK4mkMkn3aaD/STT5OcfDQIW5ez0MD8jfgBInSGSH5eNG0UFrAmQa0NZk50ey/cIpGhFB40Ok0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui8Aa/yY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui8Aa/yY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D621EC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791513033;
	bh=rx5cZ2V+DV48NyQHOYuW/qk6Km3V66ULbrTIbCM56RI=;
	h=To:Subject:From:Date:From;
	b=ui8Aa/yY4u7ozbAVYW8GpHCR0JutvQYDvIfrX+Ko8vuATyqoScHuq99KAq9WjXbWt
	 dTcYd/Hjdx6N1tNCN0wLCq1KdD+IoTQdcqS7lncDvx82hUufl6koAGCRxO/fagfJNB
	 O4TfKasKPwMlrSUCccbnQrCGi5C081sDT1CblkSHkSBrdKEWA9m3NUut8CkaKzHnu2
	 Vd/UiJ9Cy8CJgLqle511iAsZNiUmEWl9F3ccgBsLHNONLXb2lntBdJSghwbWvbAYWp
	 mxnv11SIcri3xyXZS2KjyzldNryeCkgldgV/sSO6EH9PmTLklkBCjO0NBrsXcph7Ib
	 CEyxlCBWzBJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2418CA6017
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151303369.9407.14748748972332891446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e9eeef699fd926cab52871049406269dbc07b54863e3526425ae2ec3bf1ab9
Date: Fri, 09 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791513033
