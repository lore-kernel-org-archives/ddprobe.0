Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1803127EFEE
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772751894; cv=none; b=ZhpMHtjIrN0OBeLTEZX9YDKrf5M60EVESRI8IYsP9mICA3C6inPGh4EntBEDbXK12Rp77Z6jR2IYZEpkRKwKazntKnzQnBZzqGbj2B6NbHRfCddiARq9CHi0axhT9quWlABwKxWB1pl9yTddsoh7VMZsNfO7uWo5gc4XLqehLM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772751894; c=relaxed/simple;
	bh=V9uFnqdh5WbIWC/zxC0StPkjWa6qAOhxtw61cFPMQec=;
	h=To:Subject:From:Message-Id:Date; b=ED9iyI46z82jMNBHBDmTTcPZXwUWzU2WAKMK4P5zg4Mv4ybYg2Nq++1jHfG4qrykk7gVg3c4C8yI3x0pq/89ejJOH78ETppdyrhZessu6ObgXxGnpNGmYbjtZn8mRpbmhHOzG3Gce88YWmVJSuMX9ahuhoVXbz0jCAFa9uJpwRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkSsI6wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkSsI6wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE0FC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772751893;
	bh=V9uFnqdh5WbIWC/zxC0StPkjWa6qAOhxtw61cFPMQec=;
	h=To:Subject:From:Date:From;
	b=YkSsI6wdfnVCH/TDHjoCBjfms6hk3ihd270KUs0bPsVay7kqMMxZhtkM13DbLPZ/B
	 XdZeorQ0rP6CHJuogh8vJ5gVgpcA5SiWCky3LrZEoEP4RAW0Uw5knT9Gk3gL4XJZ+w
	 hIRR+CeJSsTSQQpP5vhlhoQioKA6qKmsHszcddmStF/Tm2xVIEJjLNlfV2lm54ymbg
	 OgSx+gTcriYRr3n5ejvREvJwD0FG6/B49uedCBoS3rzb+mPNvs7WBc1kkweXE0uo3j
	 IoClZpWUW2+Mk2D2zVJi3XqrqU6WU4R0COM/t2yj/E9wAnbKRWQ3OEMB7nXz3U8IKc
	 xDZl6sGT1kPBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C03F513E7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275189359.32392.1700432438897798676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22731c1a6f1ea1f18eab1a75b2accd7874119fa1efadfdbb88dbcb8ec3da248e
Date: Thu, 05 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772751893
