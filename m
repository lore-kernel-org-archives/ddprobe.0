Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B89B145355
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751783994; cv=none; b=iaM6iRwBXMoaISf3PX7+rbapzher7nxXZgPrR7RYj5/d+/K44kS6qykbKbQFVHszMy4qLZHgeKCXaVavlDJvxX4j5o5l9T//nT6MbD66p7tzZo2iYz0LexNxa7MaxiLWwe4CBtLrg/kPftMFHQu8aKesxY4ODSCVqq5gSqC+IYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751783994; c=relaxed/simple;
	bh=O/MKKlJefe7ByuOw+eDeTjHMjc0rojCpGKdvteAFrbo=;
	h=To:Subject:From:Message-Id:Date; b=RgzS9h/lBb5xp4j5ynn6mO/5o0xHIeDnZXiTjNKvAtaijJLVLTfiXHOjLo6cGe+z4zVqi4nuWzGGSlfFGtVoJJ1HMB05+ZH6OYAhiMwY1+umVgAtPF64FRIcvPHkPzjPZfRgK0FkUMQASTv7Axg5ZONU/7iBbnNRf1ACCTE69e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arxo1C1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arxo1C1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3653C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751783993;
	bh=O/MKKlJefe7ByuOw+eDeTjHMjc0rojCpGKdvteAFrbo=;
	h=To:Subject:From:Date:From;
	b=arxo1C1JQbSN2+SZZABqT9OcTVxQvrOK++9alLwMD1NliZRxg93CD09tkfCuz3Qzz
	 WoFIdNIwwNhoPsOoCCeqjYZO9WNVKw99nPvZ3whT0AhyxAMGdcVOukhynbirIFi+24
	 SlEQ1JCbIWW10q1vhh6Q0/LDe6KpsIZhc3/QjjBhS6le6pUlPVCIF63J2nFSQUMLuH
	 5wbxgM7g7f4XWwSQlEIPqoupdQ6gsBoovBvEqA0n90PxkSl4gqgubKDnkVIx07DLWj
	 KNU2JeBhIg7JUKzYE1O32wr2JRYXaD4ZWdFCH046OCXqUorQ7fXjxmAnpktdGbwvvu
	 EAQnV+1f9iDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92491C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178399357.27949.4080186672413327832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041f7d0c0c15cc61878c80cbea9e26432534104f0a439c282166c12f547def6f
Date: Sun, 06 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751783993
