Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3194B1B652E
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786720234; cv=none; b=RwLP7EiOAJMszRQSfmPsBWsz5RUn+k6jv/yFyKmoOlbeGrHyK7hvOkRU7Jbpa0bs8zpA5K+7oiQfcfC8vc5pXM3oNxsHLNuqnwJIMEJZfS/52gXb7I/bbY+xN2S5p8+s8Fpvs3M60umkV8I9Mr/sasUa4Xp8uNl517YLIoiNXt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786720234; c=relaxed/simple;
	bh=zrl2j8nfyNnVZqpw8NfARx7NV6jXmdTXa3TQOjZgOV8=;
	h=To:Subject:From:Message-Id:Date; b=KtoXUn69LzKYOAGGoX99was3L73+SoYhXovS5m2IsU80j+6Nv53HhrhWsjyAU5p41WzcNzeeItuDu6oNE6nWx7oIWoiP6DqZMIxrKNE/e7WCSwJeMQNLDq1Q5+STBvt29Dh+XSZRxNHW/6jUy9Jtq53c5kCwS5ghYOM1xhUKjMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL/eBU8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL/eBU8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94D0C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786720233;
	bh=zrl2j8nfyNnVZqpw8NfARx7NV6jXmdTXa3TQOjZgOV8=;
	h=To:Subject:From:Date:From;
	b=hL/eBU8CIS78vib3huMpsurfxmOlj0AzmeVFvrJ1x4mOC28BKf6QA7fRQKcQhxHme
	 k7Q6GWw0+k2yfeM6ADkQcaEwDh9PnGCzrJeuxhRmI3AilnmG5XZiRs0oRM4jmPYpu1
	 1ivpyFy9nVp6HKXpmHCZLM7NQadJo1OkfHh70BVB57X4P0CAXF1JNm9yH/hUUa8aqZ
	 zwSkHFGxY6MGb/OiH4c86yWk8RdzIYB6hMmtJJqw992EQzCj32elARRjRyyBLFilwn
	 sRJZoyld1aMeo5TM18G3ToFSV4Qu4P2qQASfbiGhUGfMuS7kQ/Af+Gx+Wlbkg62msc
	 rs4y9bLtIEwiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86EFC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672023368.14491.15372128476668035581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59708eb37acdeb799185345319564b8833bb87de5076688a3cc25f7c332a2171
Date: Fri, 14 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786720233
