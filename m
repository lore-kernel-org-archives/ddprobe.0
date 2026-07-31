Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595732BCF4C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785472834; cv=none; b=EHmaMiSzwzy3lJgP06iqS3nFNz1LONTstzhso1iM7FWK+06RMzbL9mgF1cDS74Bxloq7JuQaKYs+o/P3k+u4VFJSBp4u0SwXWk/5tiuVR+a8h+S/HexFWlmY9PrwdSUNiVjPw8xgSoiuiJ9HTO1SYLcX1nMXUNaldjg7LO5rQlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785472834; c=relaxed/simple;
	bh=hkkDMQtOO2eJVH4uKyl1kW1nzeLbmq/ttXdsob6oGmo=;
	h=To:Subject:From:Message-Id:Date; b=UNWJfFWR+Pwsx5ECX0oSQmDfe/V4zjRLHrVjkbM3YpzILeEOQiZhxX5r0HkGQMj0pKeh0eR1TYxw6Do64/LM9P39tCgrluou24cz4Ebs4K+vToABRQnVW3Lzx6Spdq23CufoPtRVVPrs3yvpJGmEyYSAa2SYg2ILtVlDqs7VL+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Av3ecjJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Av3ecjJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB94C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785472833;
	bh=hkkDMQtOO2eJVH4uKyl1kW1nzeLbmq/ttXdsob6oGmo=;
	h=To:Subject:From:Date:From;
	b=Av3ecjJ+wB28izAa+8JgGwYh63ICwAQwlbfMv4ErhT3EXUXuYB/5E+lVEve5dOw0f
	 KZlqZfHkuYrLxlU/BZ4tplI/uUtrp+etysGY3Umi8H/nom0fZc8fuPaq9WdS2HAj9a
	 BWkKEuyAG8nHOYMnPTpM2efm2YNoVteNqDpJfBA1DF/UzPPIc2t9rXM9mHdU+w5TAR
	 +d4k9xWa2lPP+v9SfbTDOFw03rw2hsN/eA8aqCqCGtBvFjRvFqZXOgy2WWLvVIffo1
	 AJUwHJHqFLbZBXFy+5bh+SeKohTW4fDtwZe8rBRphqiA2jtMpQzxX78Qvhh3GrEGwR
	 dcmRKR8DqxWEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9326C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547283368.24154.3237805261131492883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33bc990f44f2c563b0b2aa7263816ea525a653d3ba0de3f1666d9c0bb1924e5b
Date: Fri, 31 Jul 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785472833
