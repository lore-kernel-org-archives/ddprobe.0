Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F313240611
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790287234; cv=none; b=MUB3a/g0NbmaKexD0sodPTUxSR/Y2banT5gJ9K1DKGpTxLCWJ9tK/zs7fs7AJohAhcBplGgRrhkVUKmz2Mq4Yf8qzfeslq88uMvQr/74BiD65Pdvdn7m3OBNsgEWfhCl3YLJcIzynFpfEpegodEmLu2S+KsKsgzXVWxJkeSvMJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790287234; c=relaxed/simple;
	bh=/cm/6KvYxgw53gerD6/GW+IlGF2B62AwVlkXkfsvAlU=;
	h=To:Subject:From:Message-Id:Date; b=Qey0upYOPO0sHiHh+7CliF9rmLmiqG9j3E38vWsCYT+6YsZ3da5USmKonfNAKDOr/Lc06khI+ZjlK/l4MwqHfk41fv6HhvCk3xmmH1lli2GchBa3KKOzy++MtKSmf8UyfmMH8DkpI7rYt0+8rc3ahcSdI4zl/HvmPKUC5jIUO+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQGnlhLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQGnlhLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2F8C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790287233;
	bh=/cm/6KvYxgw53gerD6/GW+IlGF2B62AwVlkXkfsvAlU=;
	h=To:Subject:From:Date:From;
	b=tQGnlhLtt4qunzR1B0J1NByf6HSNKDbKH4DwOu//nQ6zpRleQ3H5osKZdtuPx5MaY
	 qVpElVIg4cSHGdiyfjxTJEAHm4W4/waHPMhTCjlvkLF6SKHsBhSFJ8Cw7TzPyCbRs/
	 NJKblCemewSVkJuGAzrZowkF+FSN7PylEw5gIHziX86wo53b2z0DlUMtw8qw4Yec2B
	 cT7Y+e5QK8ONG5J+dRruuJ37gW3+Qe0aAc/eUg48FdeejSR1X4jaIRxYQL+Tfxt8mE
	 euMK7+fYiI+nsbP/L5uZr3IrdeNeak9VKmxouXuISuIG7yLD6QxucX7bBE1GKdLVOp
	 e0tDMNwFsl5/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40E4C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028723372.6010.14589507683288608936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0652e70412ae7da86e942005ff50a6cbf6a1a2dc209e04cbfb8a2d0d65179a9a
Date: Thu, 24 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790287233
