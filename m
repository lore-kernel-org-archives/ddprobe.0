Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1293F4DD9
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787289034; cv=none; b=PNL2Sh3tXD59FZ2DLKLkxbBcgLN1DDxjR9BYLq6vtfAXwgdzPNf9BpCNAx45SOWO3kmrWnvBCjReyfuFTMbARcHKOiUGUAQ5ERmmhx2kj6QAnP3TX5ARjw1fxIz9zhzJUvJKxMLy/kBFVl4pxlabFlipq838WQqymtWACRpmN6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787289034; c=relaxed/simple;
	bh=rI0bkt5JPFFBn7Y2Aa3I9cZKy3RlW5XmwsKoU8XHelI=;
	h=To:Subject:From:Message-Id:Date; b=Uf5nYDvUhtjk5Fuw3aUbK0W1EvOwmIzqcA+deEmWHZVF2v499cGLDYaQO6cY6mwo1ZAQQphdywO8u23bj0IN82UB/zm2eafv3K2ti+4hY5wmXkiDJbwbNxnxESTmSQD6PaWyC25jQv4Vsp50SGAWKs/xx8BT8w3sCZi5ze11zcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R++jtOVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R++jtOVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4A7C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787289033;
	bh=rI0bkt5JPFFBn7Y2Aa3I9cZKy3RlW5XmwsKoU8XHelI=;
	h=To:Subject:From:Date:From;
	b=R++jtOVuq/kcmPct0JwEjReLub5i4z/+K2Gnw8wPanral+yknWB/5EOCMJoPa7API
	 Yg6ZqIXR8+LhA5nae2aQqWXQAK53jToaMYSMcM9RuhYomu9cSEvXr5q8qewxNTd43G
	 Du11Ym6WcXFgcnTbemDlr/5Vp43birb2iVJ5WUkDeifO/7BPwUuoOtjr3RoY2q5a/M
	 ciDuuGrHZpoOe/eTk/yagYcx1u5X08KofTbytUNfizyW1dSuagDtZhoRLN1rfE1xxT
	 ZusvXWHQQtsw+XmDVssaYxMwQ/WT92GkTkaAIQCt+eUfrMmyGyu3wS6nabirPwEcSv
	 butWitAiYi10Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76D8C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728903373.8960.2633446028114808553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189fc286bed5683df68c719c2bbf70682650904c82713726ebe14f730c5fdd34
Date: Fri, 21 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787289033
