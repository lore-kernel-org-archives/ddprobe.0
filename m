Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A85A1DBB0C
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733934354; cv=none; b=NbhZZ7fCx8fn//MyKoE0VNHACFIN9eup45k4Bq/iLZtiLAvskeBsDCSpQEsshgMhswtxGzYK4Vxt5Ew3Kvh/3b2arm5xPIN5Ql1nYts6fmClLMIq5fkipAQpeecW6oPabYSQj5w7c9Ap139NzLOETzoXJMeGfhk4F9N9srEab/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733934354; c=relaxed/simple;
	bh=cQ+qFyi14zHtj+yS7F1WKXXAO7/6zI+OGROOF73TTfY=;
	h=To:Subject:From:Message-Id:Date; b=UeebWsluZsy2ZICabw+qcCcY7ZRRlgEvqyvS37lhCxwEwlio8H3bV5sDEQJptfEWpLnDKRkQJ3Zh5BX+NxduaFobTCCjfiMYQR75q0ZcFPQYnUsXgAuQvLnGY4CLJEY+VBIqDIPPQwKTK2zVQjGcEq9aW2Uai9wKJyXe8crtKKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbdT6R9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbdT6R9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB430C4CED7
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733934353;
	bh=cQ+qFyi14zHtj+yS7F1WKXXAO7/6zI+OGROOF73TTfY=;
	h=To:Subject:From:Date:From;
	b=VbdT6R9jjGzFZTgRlKcWj2YOcyq/8K9ie4bjQoMEl4MZPBJLdFo4GU82YZkE/PIhI
	 NsvX3miOse0WabJZpDAwgMTQYanRqhIuHYX0dm9iDvePP5EJDpwdflfjVx9exHNOVb
	 MopBYjZRs2E46kHvRP84xgnU4RXlPBir750mRuBZ5CD7tbSjbfrO96msUV2bdTzVwq
	 hA5nJD1oIJ8pCLkcMTWjSsU8HrKuYSOm7mAUcPQV/3MLcr/gge3fH0lTR7Opg50yaM
	 Mf1Er6iO3o/WMg04kTmZe1ah/qb67EWquXlzPE8NiEotqBt9uKx/NRLDpIWZc8LegW
	 5QjzWCNOeQQbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F77E77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173393435365.4071.3273204722712488638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbfc31111216993e3bf1687d1767f6552d1074d80bb96d13b6e0a0498ce19ac
Date: Wed, 11 Dec 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733934353
