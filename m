Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7AC6CDAB
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716801263; cv=none; b=RD3dgZXMzIANhlNNCO7SAWrBFX6obIjV6wSUqe9I8Gduy1epmvmC2b9p/6p45JEk8U9coCpJopYxI95EP6Rrnxftt73GwoPSasZ5kS+cuDvFXpIToBNfwXTDMWb7HkZ8muOLcoLRMLQdPnG306S7BnmiWIE5T0z5L49k35oLjgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716801263; c=relaxed/simple;
	bh=jVIyKuRI6PZ/WnhLhhAP3IbIgvOUWUHzlQ1Nrzn2NiA=;
	h=To:Subject:From:Message-Id:Date; b=ikAuSQgKf0ywVckRrQNxZr//GaPycseU+KH328xNNaPNMo8dWB5qzILznAkc/BJU+6kxiYdVts6eXzzJD2m+3dttJ6sFoYma/XmpRbKKYcJsJrWCtlFr1HBAAzFC2USK0SPzVsHvCEjkGMpi5UmNz8y0SyrFD7mENQRrkJhHRdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6XxyvFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6XxyvFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EADD8C32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716801263;
	bh=jVIyKuRI6PZ/WnhLhhAP3IbIgvOUWUHzlQ1Nrzn2NiA=;
	h=To:Subject:From:Date:From;
	b=A6XxyvFKyC9NwpZwvjinkEu5O3g67JBWVt5HHc3S1klZ8Rr2lA4ZEW1gGkNUdqDig
	 aWhcOsWYvuvpbks8+gkkIjGVzyoBDTEHrDZQeAWx5gZ4shXGVfblRG+aV/COTjRMD0
	 FN1ecI2l+bcTY5hAPQlSxcntY1gn2IUlfCzX8kK+VhXI4jaEh9XmprUwjhH6r5JSUu
	 PyiZ8vceX9n3Q4IK9f9nuV0u7su5Nl5u8xX7+mQSjyoKHW6f5JZCikIz/mjTKTrQAn
	 i3uOHvai+ENrDLNvAERkIWnbScU4U4hPYcRzt2aHEOGJRxS61+8Tcta8ti8lxyMasV
	 ZwtyXI9DCq0rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5539C25B7D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680126282.32002.2052512646048192309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5d805f318fb65080511a9efdadc0e5bdce23fd8bf660e7221a65916731f34a
Date: Mon, 27 May 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716801262
