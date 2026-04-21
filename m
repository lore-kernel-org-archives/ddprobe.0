Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAA735979
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776757654; cv=none; b=AjlCF2y0PFT6qIRVP8jurD1l8M17YgxJUclR+RDCkatj02I8PyL+Ts9OEx7pxMJFj3hp0hjQfqiHlQKKas9M8H1PAo0HuYvRxNc4jjOfq5sU61OrEjcgcUOva0/VwYEaQHOV/RjZI4bnJVvQO5ScWvFQVlvMwGhU0PIm9cA/6t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776757654; c=relaxed/simple;
	bh=GUwoLe1cA8beOqHZGnujGaScwMfpscuNoX0DZGhp7qc=;
	h=To:Subject:From:Message-Id:Date; b=sbkOa+VFdBz2SLX+eIwIfWV26/UTHMx6jK7wXyD/tZHok96Ml8cB1C9KlORZPvapeCUHvtaGYKV6YWerGPGQUbzbOOk6PZJ3T2cOW0FOsOuBT5dwBlOpkcr4V/bNDHbA4PC54wk1tOXTEq6N42QF3/cIaNOhaWA2DjeNoGCpqgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFzRKixW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFzRKixW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF91EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776757653;
	bh=GUwoLe1cA8beOqHZGnujGaScwMfpscuNoX0DZGhp7qc=;
	h=To:Subject:From:Date:From;
	b=qFzRKixWm+ooK6Oa9Epq5iS1AS22bvYWQZ2bmg7wWIoNqR1s7yThHHkBBnTuqKefw
	 40+JMH/qmvjmbUdEAiM8Nl1Fh8SllOTtWR5triK0LLR2Umqvu9VZwMzaJvlPmtKLIh
	 EGSoteSWwLanF2ZaBSzFI+PBkBRk8xxxoxw8wnkf4isiQDHVEZbc7LrdfDnZ0dTeUz
	 K0UrbENClH6IR7bg7dAfKHFPKsNoAIE0t1oVxADDMLfYq2gudnP/Gwqn4cUXoWZ5rH
	 YlpW6pYubTcRBvMvqHTSs6QYArJLiTVSVVBEG5hnmFNJMCWGatV1fJhmTXTcs/M/lv
	 a22QIip//YylA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFA6F327BC
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675765368.23689.14175368236902284120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52262068e7649ec327162ed877a6af0b74008cae4e6c08f864bab0ac8c374b18
Date: Tue, 21 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776757653
