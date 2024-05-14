Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E6D4A19
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715644943; cv=none; b=KnQN9QCxQJmtFSuoRse7YcE5nebdhMBVQAANfnnt3fWhgHauPGdPMnJ5AO6lMnuVQYFlMXZWNQnwCQEILlj3FAlFr/48pSGroko1/BQB6q8T+97ZOPzvK7nLY0XQ4qse3HImefqGAkucdGDrCyzLw3mostn2+NTDYrQI95yGx1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715644943; c=relaxed/simple;
	bh=Tic2WxG5316YwRK8yq47BqmuqqJgJ4GyKJaAgH7JPyk=;
	h=To:Subject:From:Message-Id:Date; b=Q/KuFd1jcxHC9td0S1XhqkNiT0dyKehXok45Q6RtlQiSoeUPMkb5eOOZkWBVnC/iomxznpcA40+ffy8qS9jYE5dW4tkUEgJxtBYD5zkz32ROWTruqrMghFzjbNakNe/Vu+msQ339H7dem37AQj1IX/USxPs+T7dNccq0KcWgqGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvTpu/SJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvTpu/SJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB881C113CC
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715644942;
	bh=Tic2WxG5316YwRK8yq47BqmuqqJgJ4GyKJaAgH7JPyk=;
	h=To:Subject:From:Date:From;
	b=kvTpu/SJex2OTz7oaeqsPc6L30gqDxtOSImLfhci9gr9X3lEUih6MZwLPhlT+BM94
	 zSgNLgI92ek4coW5wB6jks3Fer71FY4YWi6X/9hCCO9Tj6XzPtOBpBg7jUTpfy72zZ
	 01eQb8pqVuiUms/w7+46cXiqrE8XsdZ4U9hnvGEOgbZBSW5UlfS1qUXwnbQ6SXvqMU
	 ZPwG0Qfn1NqppeuvenmjfvZDE5ReB3TCmQiMTBnbGEMtTdHDJdLxwt41Tip1Xf9P5Q
	 LNQc8u1HzFyQb7aY1eLb1IwENrBWSGkJ8vYY3cnyUV9m5EbGng6nHgZeAXsxPoQy8q
	 0OA5BWxSBjmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FB6C25B78
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564494281.25860.6513790337728659775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de5f8af549d291a215f7034a77a3dbe68d2f27ba3a8fbc8f0a798bb71618d14
Date: Tue, 14 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715644942
