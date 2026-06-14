Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AA5263C8F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781463994; cv=none; b=av4tJg58X+HOUsEFz73W2MU6Rno2GtVnt3Xkt70ov6oWGHrSpLG0CIt4MxCyu1TGRjDa9E5wK/l7/E/wPqabORKPOkrs9qcwl4MQwkD3WKxnWLrWlkAsDt6+weIAYgBYhmSLgy/CczSRquwSNGtBIscpIdwT9iYj1eAPrpvRciM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781463994; c=relaxed/simple;
	bh=6s+OXGXJI6O6AM2DHEgo2VVZw7fF6jEX+q8GsdqIU+g=;
	h=To:Subject:From:Message-Id:Date; b=O0XMzjOcSTof66+KtvxneqlFziMgKr0ze74GZhp3ZAZSzoJxTyxkiTwq1bvaPPTeVs0ArdApRbn4wq0jIBqVDqgNwosexD2Tv5lmszUPuAyL4Jh8INjN8a7vS5S1lAprfu5e531AXT/dXwtC7zOvEL3Bwr4SZKxWq2E7o22NSs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EC2PKQgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EC2PKQgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF812C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781463993;
	bh=6s+OXGXJI6O6AM2DHEgo2VVZw7fF6jEX+q8GsdqIU+g=;
	h=To:Subject:From:Date:From;
	b=EC2PKQgzIkn6Xx/vrm7bo9GQYbmTCguopsRtDCiTaRzHNYaOyOoIzDO0xv0KLxbZ7
	 EEZyPNKHnkjjVIyDfCy5RMm17pA6JduXmF4VH9+DqfBoTqI5mj4KuWn0v0VTkEURO3
	 ynyYMKaLS6uoNQQ9e4dVL3UZhPm5vMInSNxWeCfm3E9JKfdoK4IZmKWc0kc1t9z46q
	 aHjoDKpK6GMErkA0Y/NS9FIqMBVTw7+jPDqiqJ/4aWbgvT8uYp3952c6EWVp6JyY8G
	 6qL1jnXkKhn28dHDVrG8aNlohHlM51noSE9nHucDiCkcuQ8DgFebIPYDhMIMoD7JYQ
	 McnNfHFAdwkdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BBACD98D6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146399372.28382.1539020034644997077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa8186f37c1261f4655736629b4ca16bcaf61f011bb43687d8a074a96ba4c6a
Date: Sun, 14 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781463993
