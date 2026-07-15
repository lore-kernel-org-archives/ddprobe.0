Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF4D362130
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784104114; cv=none; b=OLnkBqPNRNfhEgiUkRLkP6xQ3pFWNxg9bLmNHie0DiyYFi/DmE9aep3OBqHbpzAtBRLzac1ij8GDb1kNUAqBn1ed4iGs+WLfx9a4p6NxoOLWBsznacRKErGXnykyZAV2nug9hzTQsiNOQIvqrFJ3BYGuK9zl41rTE6qNriE5t7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784104114; c=relaxed/simple;
	bh=1RjvCNd311xRkBfpSXScJ1m6l5TbixGHcg6dg+4MfrA=;
	h=To:Subject:From:Message-Id:Date; b=OipkmkHJLn0jyGS//+UPOps88rhNktc5+kcS0YwSkPLdtnLICKmYsFW8YBRI6XYFAjNaGafWopoNxFhjTgpzsSCzuWxJbS41ckU7Svi38qLT9QoZvVJofnkW/wny+3Ml2pQkEFFIDlPYqzNdKxxMdOpVfBPtogb8GJMXmjSNl3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7yzTA5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7yzTA5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D998BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784104113;
	bh=1RjvCNd311xRkBfpSXScJ1m6l5TbixGHcg6dg+4MfrA=;
	h=To:Subject:From:Date:From;
	b=C7yzTA5FkW72JRmUitlDr4g5hgOPpn8i1hxFnldHsx7hbNNdTvM+g4QF7W9CYzSP3
	 Ipb32644S36hTYLqm5kbuvEHZtS97ynyoj7fUC2sbcHgphnlqgQltTDyssdE9TVo7/
	 92y9q6+VezBm12uJJtJIXwiXb8JgdMNWWAQu/PRec17gB0xlYua2xx+DWLAwMFCHvE
	 YQonQi3TRizOJ3DbaUxCFUhhylT4dIF0Bm857ovGLCwoXQJk+KSW6Tlc7Yx0l9Bz6/
	 a+pSfcyA05+NWwRqEbnGC67xojZd+MzENa1KhJP9LNrCvIfOuvexYMB6AbhpA9YI3i
	 O4nW7KNXs9M0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE23C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410411371.15533.9539804177256091239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feaae5756d1cab883058b4b8f74c23a221fa4467306796b2d71577b7f1da5521
Date: Wed, 15 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784104113
