Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C49713ACC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718846963; cv=none; b=SXys1BQR8mSDWshLXBeZRgC0nmKO0Sc+EbS0O7pvNz01pAbc/osVgk0DTxMP5uAmT+IlNH1xQllIUK9VHe9mdZRgyhlsBoX9BVdl+/CMHllzhaaklkgOkkqhRAEKvRxVE0yYIJ3QA8YOJ5aBv37v6UTGSkC6Y5Ps6HotKmeGZLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718846963; c=relaxed/simple;
	bh=EIKoEKuAzgS2fqdcA3ydqJbM+pqGvaHsPYV2CqHfN3s=;
	h=To:Subject:From:Message-Id:Date; b=faplT7Oyb1f6pSlCstOh2a+S5uKeG8xCJeM66+f+ry2h0mKMCtl1qG7JFmU9OQubxYGL7hcBZeyaA4H1zyRbcR2nr7BdVS4MDlKwRQhB5SqIWbxzMI4EITIkgXgf1cQBMbIapTEidW1N4bj46vqZUHeRCEN9VfyeaG5Vynb9HJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2FXbhtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2FXbhtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6046C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718846962;
	bh=EIKoEKuAzgS2fqdcA3ydqJbM+pqGvaHsPYV2CqHfN3s=;
	h=To:Subject:From:Date:From;
	b=G2FXbhtmNKV2DCEIt652YKxPdwqHiYkVMn35g32cZ77hG98c0eMBlQIxAGL/3UcC8
	 oll5zmI7vknTWC0/KrB+2p34BeB4E7Gs8sk3SEO2GQJ4c26Ieiiz8l+eWGje3YDq/F
	 Ken9G7p4qvkHsthiN/4RFme9F5AfiyOyOpMWQ40tBPw2RLBdkSpN1GwXdyi9SepWEj
	 ieSrrdHk3E9TPGHkPDeBDBWc2n8WPdmgkqn+TFYozqrAv73Oa330kdC0q1K6B2rlTj
	 wVlrGaEVLtnZw5boTNtTJgCSYrYEHlFjjD4gKGh3Q4eIaxux7wJgiExs5tQjLqpa3V
	 yuvXglyWQI9fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C64C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884696286.6347.6964662140595455129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98491f7fbe95d75f45ed4827d804e19223302ea584f773328f288925d6887f3
Date: Thu, 20 Jun 2024 01:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718846962
