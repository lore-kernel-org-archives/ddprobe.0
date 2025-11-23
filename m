Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8941096F
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763914914; cv=none; b=fYBkoeVgmpUYKmJW6WMhHD3Odtzgt+qfkBl863qRbauxnIoXKNifIwtWGj3AMKXfXqnHJZwcUAihtJg+K40ARLMMg9ADFXsgMSPJPoPuOJLZinz1i5C4l6oZG62HKsEP+bW8uee9YZy+PQQilFcJiU0NRnj5ignQQGsiqTaxeJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763914914; c=relaxed/simple;
	bh=vfVJIKB3e41cilp57CjRx30V9N4muIdFtJOcyYm9r1w=;
	h=To:Subject:From:Message-Id:Date; b=p2zZ1947o/v912xKF1VRvSfnALOcTPx23pLcvZFwoWQDiR3to4HbEyP3RrCQt21AzHUTSPfLDhDHAzLEhfLPhepRc7kVx+WkWJC7nX9/0tiY7kQoDcxwMWoyXaIH+6vsgEh5cPCr42Y+2CDpRyv63EIPr92ViKicz+zlESeoUsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJyYBn0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJyYBn0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB13DC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763914913;
	bh=vfVJIKB3e41cilp57CjRx30V9N4muIdFtJOcyYm9r1w=;
	h=To:Subject:From:Date:From;
	b=hJyYBn0BNzVbYJ5X27pyUkYMw8Y/kHIp7q7jr//SdTzYGA/UtMWV0jz+6bkHaNZPj
	 Y5LTCFB5ZfFi+I6frDIbeyzVvCcePcz31t+Ws3509YCQxJWSHkQG57B/X+0BfF3r/7
	 DgRTiPBeyAYT9Kq030y58v/awd1ZtxuxBlmO84SgZNQEKq12oMYbYvPiODzmZ8+vrk
	 XCd8u0rcPLTss91UXmm1cW6Az7KztwE0M5CR+PPJob3WqDmXcVq8rzysX7/QAeEWow
	 MLx+OBlrvt4NYEIASwXG6kNEtXw0r2L1b3R3L86V4xRMbMk2/FzsLJmmJasyLbZQEm
	 0ILGmI4s2xAjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99227CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391491358.7975.5026472515608989365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3416c0179896f4c033ab3a6029bdee420d19e615ff421bac622c1de35c6b34c6
Date: Sun, 23 Nov 2025 16:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763914913
