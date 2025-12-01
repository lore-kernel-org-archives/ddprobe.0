Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFCD79CF
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764624774; cv=none; b=DKb+VduTtUqRpQb9AQiAeCiQgtu/Skc4NJf2K9LJIOnMeCUQF5T0iepbdrewd6U+q6PFeaEeJFbNXRmnSS1XxZ5GJxhMOm73UMeVGbUY49wu58kP87FqxrLROdlXhZvuh0ViAdB7VgNQbznvc1SGnV03RVgz9YROzUG9AOsZ8QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764624774; c=relaxed/simple;
	bh=KwGolGEDtazXDKIobX80kYn/37yIrgnmJMMmq8Q2I2k=;
	h=To:Subject:From:Message-Id:Date; b=O5nKppmCO+s/caQfOXyg2fVGtiaX9oGyziM8rwC5+QIoOkXNca2WMCs7N0rLHv91cg9ucrn7DYuu9rif6zqTCTYIeb7pTnrC0oiD/xiHdyBrrHOzjMzjYr7coz5pKyK9gUiUjSrFnZeaao3CrzTD1VDfZm74fSGTzG7gkDmJ3Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9AtCJWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9AtCJWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB523C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764624773;
	bh=KwGolGEDtazXDKIobX80kYn/37yIrgnmJMMmq8Q2I2k=;
	h=To:Subject:From:Date:From;
	b=G9AtCJWaw7wAS2z7zd6SYfnLz5RBlXTqJMj6BDv0D1Xqvq4vy+NJVQIQrHRHInN/Z
	 TwZ0ewZ2vK0mfltrbDL+C/EctnNEqhvop7Syr/XStn0yxT5u3JcpFi04N7OJeZBCOB
	 OXsuNTbh3fFURflWVI+KsjdL2QMRY0p4RJI62KOl/bJGy2rjZrZnqXQ8wniA9fcn0C
	 wff0msF1j2foCWg57jokstox/4eVDybPjZjWIUZHNsK6aUdHAdCvU6ztKlUaXxfOvc
	 394c9va3jvZNv27ehaltxXHfCvaL1i8O6ltv6+Ws/0NwizhjKsgRH1VSOP6q5ZKMiE
	 iRzXwoge8oiPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99905D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462477359.17161.6289496884080286780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5db5b8da73e70b52f2df9f4784fb9a63b971e580cb58c0603a8a57b3ddbf6d3
Date: Mon, 01 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764624773
