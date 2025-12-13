Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E04026299
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765653774; cv=none; b=OBxuPjHFKJq/yU41gjMHiluw44SYZ3ETEYfsY46i8b8VdzOsQlbAJOwmE9wxF3uuEc/zy5vTirTE7D0D1dTygTST1DM8zTFtEXxrCA0C3wZ7I9r8SmFkKc2wtN1LV8RibQBPMbqc9G7mhNnC8JATK3p1YIc9egxlGBfGKDZflT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765653774; c=relaxed/simple;
	bh=jPXtQjjVjC2gVt1noc7GtT5jprXI+y4nfedVqsR8LZo=;
	h=To:Subject:From:Message-Id:Date; b=g5ITPnFEXYlH1rWZOWpsjpEgIKOYjA/JU8Xom7y1oQEevAs0JnJ43ZzyGNPrGgKD03wOZhKWp19HS06cc7VvO9pwqAsnf7sM6BpAplpfgznptDutfAns54u9oA5ttAVyRfyYNH3TfhGeIDI5UoLwTqZmiTgNPmG8WYhBpiUVLao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phJaOAKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phJaOAKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7A9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765653773;
	bh=jPXtQjjVjC2gVt1noc7GtT5jprXI+y4nfedVqsR8LZo=;
	h=To:Subject:From:Date:From;
	b=phJaOAKQikq4ybB2JmPgw3fk2+y1k3JDU0pLHxHQ4Do4kTaI7ppF6YOvQ+oMVWqea
	 4eh8RNtjOZdPFYOL1pnsKPioT9CxcNxhdajOUMp+Wzf8hCChQrHOfYwHuJCVPAr11P
	 MV/cMBEtw++2Vr7M/+vRpcDmUhU3rV2W5iS98teVQd5D5pTRjTKLM92q5vPTxfqTIC
	 ah/M9AvzCf7Pq0lW+hTsaH60Aj9MZCwuCwwSxaHtkVDu2biIdJnQy9JeG+JfwnWnRw
	 hofgljx+1T0u7pqV9eZNona+zXcN4W7RQq91Z1jUkVJS44QuhiD08fE9WJoUoDzfvi
	 m/YPEDkqPfJEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907DDD5B15E
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565377358.4171.11067727830966115638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ab87e346c7f498cbcb1580a8fc24e24f3b27600e20b38c0f8c2666c6808ab1
Date: Sat, 13 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765653773
