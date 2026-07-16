Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E0738F24F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784224114; cv=none; b=R+ssfxvq/3MfjYN6B41MpoCqscUh/eHZ+PwOgn++HNHlRfUNvPfdw80Z2288E3+3rZf+g5/NKWyl5rqx/EnJk4W2CgclsmVE/+lifwWUlg7aJQP+lHXjCkJUhw4oK2X+ubCN36UorJhGgaQmMeja8Wwy3ADGmuY9h0JrE+Q+Ks8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784224114; c=relaxed/simple;
	bh=Mbxa4xntA8Glf62y2teJF/L8yASmmkKz6ZWpuru4E/8=;
	h=To:Subject:From:Message-Id:Date; b=mn3P1p6gU2fNDyHbfEX+iFx11ngVyP9YUm6bbHIrQQ/xzmxzA1iHJHJFXYs3go85Zhjm28l41XtdzQ2KzoIbp2V8fUYLcgAMt3n/ozX59laHLzmTo1fdraNmKzOF6klF/TuPssaZ3fMHXFdEL/zrhrn4VCCZ+SC3lbvxqZXGWuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/32mzOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/32mzOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3397C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784224113;
	bh=Mbxa4xntA8Glf62y2teJF/L8yASmmkKz6ZWpuru4E/8=;
	h=To:Subject:From:Date:From;
	b=n/32mzOAyMN0wLewoLj/BWN5iJaD1744RIexXGaZTcHLQhCLErtvRuqgFEEvinf+/
	 eqWPZvERK0KXajkTocl+e7piNNUzuHAzgZkSxLCvZa7ZZh+71onFlwfOQ88XRr6DSU
	 rRmfTDPvU3MbdiP+gzGqqBr6SWrgloXFs3ISxp4QtJZ3ovQWvuAorjvAOJ5eVZZ6q0
	 LT6T2FlkvQ8vg0t0u3PdyaxBDnw1xByqzAjqK0ofOYTVkCxoL9/2gIuxNwSwwIQNcl
	 N0tMHEjn86SeiG1L79L+6xaatKphA/XIN12vbSHdWp6tOmQxB6mlcurnS0vu4BFrGw
	 jyZC2U/qkhy8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF67DC44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422411369.20547.11969435548120969392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d3e262b62772ed0717b5675531980d3ec4da77a58f71094c8f3e0774bb4e4a
Date: Thu, 16 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784224113
