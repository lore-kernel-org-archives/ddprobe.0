Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC9320409F
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743520794; cv=none; b=htzyMrYf+L7vcHPBDyPmUrRIkserOP+ccz3HhaOiPP4kE148iBPRCBQdz/qk2SHBAH4ZGAlT4k4viyydzYPg2tGSLTwSqMA0ivAv8KBISioPA/oVlhSC5TBCPWSc324yAubHQUQ2WYEDgUs2miFvb84g9TK0Vdr2jGhJJmxYKbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743520794; c=relaxed/simple;
	bh=00MOJltIsjULSYdtYioMJVyXL9g4TaUA3a+5nDb6ayM=;
	h=To:Subject:From:Message-Id:Date; b=PyN1jX/5y7R/z3tqLTZnRjO67hXLkbwrtmjpKjD5n6DHzxVyJ3fPGNmhCyS8p22Cv6IsiVhFr+skwG0x6Hsp810iDtZE0TjMoMFPZcGN8BXt7T6OecOuuVe0kMRpi+UoAOniQChObFWLHI/5CpQgUjIbl9Rb1wlFOpxyOK9fJj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SArNxJD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SArNxJD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3F0C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743520793;
	bh=00MOJltIsjULSYdtYioMJVyXL9g4TaUA3a+5nDb6ayM=;
	h=To:Subject:From:Date:From;
	b=SArNxJD1BpRxLDdUPdwNN2M8uTiBs7eTqxbVFWlpAM4afH5yoV5QA70nSVkqxVIkq
	 DEOaNF+djsvzjHKiEa2HO/IvzfVfAT/dZbzdN7qT/9R1lO0Dt3vQxX13jUXjd/Clj9
	 u2PsEJCHOvakDCVrIXRhTFUU0MKRi06LiK7UM/3R2wD3w6n80FKuV+sZ3Va3jsgpuu
	 0uBCKdoIPKMwn5Ze3yHPT2tuwJtQizD5nHVwqRC+B4JMn/QzQeSrfxIp1RRCmhMi4U
	 atP03jq3KxhbzMk0YzOepzC7jLHYDOtQDR+l0fLTust5oTOuKzY70QFcp1qhBpaqkW
	 Kj1t/QdXVogVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F19C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352079361.10356.734214010804676880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f4483f40682c19977e5a83758bb12a315576db97e3ec8195d3b97c3b8f8e4c
Date: Tue, 01 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743520793
