Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114D01547D2
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754335194; cv=none; b=KKpOuSS5xG5UIZKmKmovf4hSwcdtedP+G80C3oB+5y5Zd6BPGvDNfA01OICALaUMZQfyGatRvLEowE6Lu491r3gkaeDxgMCALUl94pO2p3kNvHiI0uUefKCm1TGEayvvRKXkQmaFwSeoZhLXgrE/pCsFu70JRdXeynlLGt+2RQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754335194; c=relaxed/simple;
	bh=9+rwNTgX88hniQ5Puatd0sB6K10QrdR6GYhhPw3PcKs=;
	h=To:Subject:From:Message-Id:Date; b=p9jZKqKZ+OK0gN6H1070mjxJ9d1X7F0pemJ7qh62uu5KkUfymU+fiLBwKe7gwRG++qO6PgCLxjtg4PnJ1rWWlm8ZDEXckOoIQihumISj3Pqp54MkBA+tN/ORIZ7uTVEJ4ZloiA24dSkivz5uNH4fHU7SnLhCKhrZIa8jEgQjK9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G61gwH+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G61gwH+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0ACC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754335193;
	bh=9+rwNTgX88hniQ5Puatd0sB6K10QrdR6GYhhPw3PcKs=;
	h=To:Subject:From:Date:From;
	b=G61gwH+yZlR1f/JNxW/W9kiD6GbiQsMR+xEISb7DL0KV1pvDc+pSBot7KfHdpIyUE
	 9gjcRpdHtwFmaj02oh/VIkZh95eQlX5QSM8q8GOvnDvWvhDV/ymqh+uZ28qBFhC45l
	 xM0zk/SGGrkXVWHcq/47vJN8czNdrdkDpkGxhsEmT+/LdQa/urzjwuFo16GF4xtw6d
	 QQutOGk4yqC5/0UmrryO4cDX84lu0XivHqG2p53NApnzqIzULvcit507dgOK8kykM4
	 GojIx0QalPIw1Ud5WlqsnhLNQDwyF8+B9L684nd8bVkwbiPNDwwFPwVSlfeB9IfroW
	 Rvjb++IMsTKsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB1FC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433519357.18231.7599728366461576747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ff3bf916c26b49b4a0e064bb22e587a3a984ef973b3134b6c664ec33b162f6
Date: Mon, 04 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754335193
