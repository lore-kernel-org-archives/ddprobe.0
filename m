Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731EE54763
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786163434; cv=none; b=aq04HUZkY31S9ofvlnOEJ8yQRyx9ji0PbyaM4z36tbzDaBIgodXzqvBLfNSbFfFSzk6PMNaV5ujiK6bKKUamZ2WOE8TriCDlwg33Vw8TtPLApgRQSNYiSQbtm8ldLdqgOzV3iebwVLMvZBcYkV0WgytorR6OW1LiDtQduHwhv94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786163434; c=relaxed/simple;
	bh=8TXqpA3dN7PRWJD8yqyuY1RGz6MajvJnDqheGw9mA/E=;
	h=To:Subject:From:Message-Id:Date; b=i/xcooWXihM8hRFQnX1SPh/tCg2vTNeJVW5FEAle9Z2li1S3ZPzLNZNL8sf1pouuCLD7fNwifdWDuLhIJqYR7M3Zw7ChGJhDsjAlnv1gKyTlI2toQEtfgIybXAbcblorG+28ZxcsKRnj+P3RMz3nM6D0EgcAvVBPZ1JLfwK3rrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqYWtg50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqYWtg50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3111C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786163433;
	bh=8TXqpA3dN7PRWJD8yqyuY1RGz6MajvJnDqheGw9mA/E=;
	h=To:Subject:From:Date:From;
	b=GqYWtg50HbZ+JUNBca1jkN44b4jAW931mPp3NCfLYAdhXHJEoly67h2Z7NPXP6UW1
	 A3cBEqk85xmJOSk6HE0TsSLiwAtLCrsUwvX7X4VisZIC3zTqnI7VvBxNgQyk6VYa4Y
	 EGg2eEzFDBkviiWUKJUBT0LUDR9Lks21Hr2orjV8Ca1rFq6RtQKSorX95IRjOn0oo+
	 T2CTVRNPP+xXt6bAKptle1SH7DZu+yc9zXrWaCIiFkseDlIR5gWMVRrZp8SXdVYeTt
	 8cPZGeCL42X5iNYDFW3me/AiFspxU8k7nd/E/73z+JDHMFm3KBkMUSXfCKFLss+Ngw
	 udp8ejMvGHxBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF235C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616343374.4446.2031885298835469690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ad461309fb97049464209eb9c81c303b34a7cd7ea1555b779ac1d79bb222e5
Date: Sat, 08 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786163433
