Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8A02C3247
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758441594; cv=none; b=QdQJayidilnNPq8GqGwXjy6DOq6XOr9eEzpDF956FKVuou8LDtVhDrxyO80445uswk5bvkMcUwnfqCtxhmrM2VlyBEfk9BW//Q2oWGXy9d1Oz9H5+EwMJhQfDubftmkMOyJmL7CoL/eCoNFSubTfJJDIHY402t5eE5qPrCSsJQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758441594; c=relaxed/simple;
	bh=Czv7BXTLYYufonIQRu4EWbRLEc+/Hi35QqTpxdwaw+U=;
	h=To:Subject:From:Message-Id:Date; b=DCH4y+Q3rUqnu2ZIWHgqydZ1BY2a892zqu2mtpiclB9DpItEhAQjlQLx/e4LESSYAAII9WO36PcPMLGlWmjcjwGDNC0NiZAeNUKpel9kvub7YH+Lx6Ba8aXbliimwh0B+4fOIthvR6zW6PV6ApXw2p3WSogdL4j4Kg0p0iCg2Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMuxOyLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMuxOyLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6020C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758441593;
	bh=Czv7BXTLYYufonIQRu4EWbRLEc+/Hi35QqTpxdwaw+U=;
	h=To:Subject:From:Date:From;
	b=JMuxOyLJrl2QGsA7jdCrpJlUwGS8EklvYVMLqu/WgSH6sZgbMxG2kkYQYzXpq1FQM
	 AjedfD6mnDk6S6rRZdZPHTd7Tyte/QsABJ1EPHuOga4NMwXMqAouVjklkiw8vSTnEW
	 EaAjsHc2YjGCVtUwoC1pMrkhhjxta9tXXliLxRgL0cWddkJ6dNRMZWyZb/PN6Q/E2C
	 pZZF7YljojXCkLVnj180OuygRbrs+hwoOprku37UHSmTS3RjVFoRZnddDgRWa9sJcM
	 te11mDfwB0xkm+g/09YTIhtqy5WuIQ3cdEoS3IjX5VqZ3gfl3ht/R0Kgab7KJousc/
	 7RYOhx4BqKBZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4FCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844159357.30866.3586322517293271386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83639a26f35a1fcf1207b528564726b623883a49fce71885c63bebdc64e24194
Date: Sun, 21 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758441593
