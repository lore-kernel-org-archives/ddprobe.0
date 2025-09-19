Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BB429D281
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758265195; cv=none; b=hcdakUX+u58Zat08HOjYTRSnTqrhjVugKRkODj4ps4RwP4Fvf67e5g1Md7gv4r8KKn4FzoxeUSriQB0dGN3lMPpp+izF2s0djaaAqqEIDnMoh/54GYIYV8qoaH12+Bxh2iizo44HkzFrPNgbTil5OglHGreXRJ2JQw3ev5g5LKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758265195; c=relaxed/simple;
	bh=tH0xUmjdeyWJFTdddQN1K/jHdncMlQUQnzy/tKwBZ9E=;
	h=To:Subject:From:Message-Id:Date; b=HVcxyeaNpAhTzl2hDL+FCIiytgb5mU5x428ZQSV169CQURCAjXHfhxcUwpfl7xjGKTzzQqkzigWpz/r8CutA0WhZlpmQsEG/DZvQh7jlqnpQcwI7QfwmFaNINcLAVrwkpFQlXUnhgdy/NqTf+bvuYQnXkfYrGgtM+9QiZgewT0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYZuW9y9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYZuW9y9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758265193;
	bh=tH0xUmjdeyWJFTdddQN1K/jHdncMlQUQnzy/tKwBZ9E=;
	h=To:Subject:From:Date:From;
	b=oYZuW9y9KsjEX4flRgREZsHr+sFW2pDVKgCHLPDnYt5VEMEskUZWVNwZO42OwlZHz
	 y9lNtJNdrlhJEMUwyb8XQKkGV9z0UP/Vjr0LCDpmAgkdokJb8AYFD1jhDQjV7xooQn
	 eHxu6yY4xnBncI/25Zg3dEOo5GtTfPp3Zhrj00Zkd22uGTzEcJVxR3C1k/X8l0C+DF
	 NrxFZabQPcS3sL+5yHpmg5r6/RiKyiSTXczEXG+vPRfwTv++6S8qFdkA3ad9jT6inD
	 46SmHltSiiftovy4QeihVNl1fOIbXOzUPNbuLFHa/PeJEMW1h9TOU24eirbcmW5yZP
	 e4jJpnjVQtFFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6BCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826519359.8740.18059239210457431436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741bf95e6bf8d7b57ef72a7ce8bad6c62d9304da5e2fb5f7f8d6fb44285cb2a3
Date: Fri, 19 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758265193
