Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D351C2308
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719942923; cv=none; b=lbOesGAlBOVQVmH5Pf/RsqzCpBpMrcBwUnkUqksNYIX3q1Q3BlG9s8VynY2vlm2AhjjTmK3ke8ADOia/FhyPSKAO1Tv5fvk3sawX63huVmVBl6P6/oAChxlagZo/9VrXZnl/x105mOzncZZd1riNkoNf8BWY5TE+Ib2zO2UHMeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719942923; c=relaxed/simple;
	bh=D5nbNtyr2B9U4+xZ14vculGMGGDX+qkQ0Z+QKifFu/o=;
	h=To:Subject:From:Message-Id:Date; b=n3yoHMZ1P81ZakSMdbLChcSyK1TQhKdoB9eXI9zGb8GQiR4rHp/Z8Gov4h2yXXPfZdzXbnOC0XlXoFtcUG46KUmbnjJHgQ6FePdjGTBpPzrgOUIu/XHRC3Vg3l34CUzHBUQT493BZpYmB17k+xOt1np9LjK92le5d8WrcRWdrJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sx9EP7eA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sx9EP7eA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF68BC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719942923;
	bh=D5nbNtyr2B9U4+xZ14vculGMGGDX+qkQ0Z+QKifFu/o=;
	h=To:Subject:From:Date:From;
	b=Sx9EP7eArs3/l0zj84xqdaItHbmzPY4dKZbvTobctw9C4HuPLlxG/9nPENYYzhisT
	 4/oniOlxACOR4RZ/2zVKs3FbP2gMP/hxXV1Fs8QWRBBJKegUdBSFSAtdra4MkQtngg
	 /BX0t2H7x9wyb2FB92G/Z7iB6GdQFmOVoIIeFOYjsV9enRo0uGX6TJRbjzzspI0IW8
	 thT8f7SccE+LA0nIsSScPHuCxBDT+3nAJyebmvygHDEgrQr+XDVnJXYbpiLTd/t3SG
	 PY1+IUEtYpBl5ddNnGx/kL20PdGuApNKbwpFbRWj2fRa1XN4hdW1GnLI1XPemtg9SH
	 29yzIFZL9LGTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D647FC3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994292284.11556.16812440605066600545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5356661d82261ea1aee8e88c55995ee9f75f6869eae95fe0e085548623a022d7
Date: Tue, 02 Jul 2024 17:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719942922
