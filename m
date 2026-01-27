Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B71419CD03
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769474034; cv=none; b=tHVX23BRT1vrVXIS3FzPlz8sCuQANhUZYfG4+We1pO6ht18OusNBK8QceaqY36qPy1scbL7TVVopLf941l5JyMp6wDPlHG1QJF1yVO2BI/MlLDaYBGzSHIQp/yz2X9rdGOD4z3c0DArZCO/90dOLQB0vUrgugSUaZKsLQWkYitE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769474034; c=relaxed/simple;
	bh=W433/RcfXpF5+NPOnMdOFLKA6UkWoQOXUWoG2wmexdQ=;
	h=To:Subject:From:Message-Id:Date; b=kxbZridbfsE9EH8b/ePR3uwu5Q9xQjR1nXtQELhoam3TTBmGICVz80kdrWBzZu1yo4YGW+gac3NRFR9ASQtV6m6P7jMkMcCXI87IAyF0sd5wisflb1dwumMftOE0cs1fahnZEVuN2OdejEywKg3ziAo88ElqVlIAKdA9AAGf75E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcGtVdwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcGtVdwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B25C19425
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769474033;
	bh=W433/RcfXpF5+NPOnMdOFLKA6UkWoQOXUWoG2wmexdQ=;
	h=To:Subject:From:Date:From;
	b=TcGtVdwlT7QdpPKAKD9Sjy5Ironwjyooh+jFH1F3sdavYuXvPOgirJHpHYGY7p87o
	 bD6qysjB0/FKAuxU+ZBA6QP+foT3EGdScK8B+0846M06qu5y87Sd/NXPH8pZ/cMXRM
	 e9IUYdSjZaIFXWLfBReqQ6LlcN2teMqlBItxZBcHMtkV+CjfH1kvpkmuwZCO1FjwXF
	 MPPPGWU/9fWlmiML9Hzc6MIyHaEuxX67dOsSu0VsG0v+/7pyNkBHsiRsw8lYP5ClkC
	 eKCuHqy8A/EDmonKsJs4zniVe8BX2uwtjKPSxa2ashqhxN8j2kMZRHRUNi6pFcB7vE
	 mD5eAg4n9e58A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92469D19512
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947403357.14198.3496245756157734010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa4429f033e893d5adedbf8caf3fdf17a937fcf64ef9239b51abb50347cadc8
Date: Tue, 27 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769474033
