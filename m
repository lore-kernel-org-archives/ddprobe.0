Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26043286D72
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770606234; cv=none; b=NAp5l7DDOfLwfsigznH7Xr557p1Y4x/zGktpSNhl2Unk41cBX2D33TJY5wYm73nfvRLPfOXAEraXaIfjXHaH4ogvRkvenqIsIXu+2J1kfhDg4Xx7T+YfvYt5uSA37GA+Vkkhi30VD2+ijg7+/OHs9uNQvM1KMhPu7o21pZbrDxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770606234; c=relaxed/simple;
	bh=qh3S9W+KA/oZvgFTJNAcVOrgpvXeGgqDpDIg3VKgYsg=;
	h=To:Subject:From:Message-Id:Date; b=HB4C68nQnb3sdvlNKdY7R97U7j2J5JEMWHQ54cnK6KN/iJT9+A+tcuIpzpxpe01D4ith5SGesSR8BQoZyaz5ebmZ58kVU16s6GfsQQ3WzHNd08p+qN/Fo8FjqjtO+uRr6e9v/HN/dnCcssHdbqeRvbuS5HIsKF69xUHfg6FW8P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYyojmhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYyojmhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B174BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770606233;
	bh=qh3S9W+KA/oZvgFTJNAcVOrgpvXeGgqDpDIg3VKgYsg=;
	h=To:Subject:From:Date:From;
	b=fYyojmhBtwEzARGrG4tRvblxGzsYPlduB9tEax6E4E9PdVro1Kcql/6mhra9hbjyX
	 VoUdgtz0AjJGBiHxt4KbqkOhQLZ/Uj8wMMoDodjoGgOWOZzgLzVk56BaLcI4xyi3AY
	 RQirN3ygOdgg/srhYvw47HPQ94yrppA6t4AFmQhxreRs3SwqM9kl5hdUaexo2qCOIU
	 7yrj3nRNiXs4QisDEnRIV+GYqnIe0OI+7QeuQ+xaD3qI4YW+Mb++d788NsShxRvaRk
	 THgCFBOFPc6wv/VIjm6hetD6/DYrJNlEvz6vbqywi3T3zsrUHgFHNbzXCh/oKrGk2x
	 GsueTxOjuF1Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A161EF06EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060623361.7730.16055230707466724362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8d8f0e71ef9dbc29cfd0fdc3830be24843e39744872ac0490a16038d337ae6
Date: Mon, 09 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770606233
