Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295862BE644
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765902834; cv=none; b=SaHLHJDRj+nDfXILjsRB5b7AwqqC6Sn5qHAqKNjIR5vwZ3fwUDoaXB2nogS27wDwmmKAqcIn8bNU0CbDHjZc2bmp6XH34LcjjLHN5MBQUlT7lH6b7QSYs9xI1hi1cmXdf5Z3+AzQnX++ragMFTMqrvzlG1SbmW84oemByaEjF2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765902834; c=relaxed/simple;
	bh=KyB8tnWIl3oqYxIx6Uppwy6oQ2yg3OWPzCsaehnjb/o=;
	h=To:Subject:From:Message-Id:Date; b=W/T+e5ARsL5Z/LIaM98Wf3RPTGoEz8MK9wLUaD7RZNiE+ykrI2ewVkzx3oA9gimoXVTiBFnr1tPdxd8HnI/chDveCT+c14TbK1axVdn4+pI38COmIwyM96aHd9XYQw3P0yMcOkQlVQzGs3rge/eMP2dfcg8an0wzJSCaUQ1uk8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7giRhmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7giRhmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CFCC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765902833;
	bh=KyB8tnWIl3oqYxIx6Uppwy6oQ2yg3OWPzCsaehnjb/o=;
	h=To:Subject:From:Date:From;
	b=G7giRhmq03jZfVmmhuPLkcYnsLxskGvj8DRjlHxpAnU04TdMkxsFDCw6QR6cRkPB+
	 kbVnVdLj4ql9Jk5P9nS7p6AUW7Ream8qXm9aQsQfG2ysXe6me2Kj09wr33vQa10OxX
	 vOqsEWs7J9Ef8FeZlFmLhgj7PX7IJWa0k2Zu64wKGnmwBcE/Zpq7EoYU5WO8tBBcSk
	 /Ck7/UyjC8caiRydPViXUfYl1A3kwCvsgUkCm9iN9SL73XtskLa5WzbJugtz+g2g1I
	 GU0A0h3/By4WGnbAI1ZlPkBSYCytH02O9TtbwL2zZPXQXmhuHPnUgd4yLk3P4GlcC5
	 5qhJybUw/hYFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA4D609BB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590283358.24202.17349510109933509358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18901ed98cb6a207d67b5e4c208d3b0cd525e5999a5c017cc5123cee39cf6ee3
Date: Tue, 16 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765902833
