Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97CD44237B
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788786036; cv=none; b=sMr/BlyBbWEM6uLxEUkd8WfqRzOCAJmPeQcdf2YmNtiKo/QHhcj7DSF8t7/0a/nb1BGSSGTqMWat46z3gdVQaGLEcPRJGK7LmpiRX5iCYdqOMkQlfBXCQXXcJEOupwPpIxkSMIObDpXdh/A50MqZxgjD+0/7CkUB7aMAP5VByN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788786036; c=relaxed/simple;
	bh=a3BaIHqiLEbRjg9qFD9Stkhq5gF5b7OKPLh5jDKpKbI=;
	h=To:Subject:From:Message-Id:Date; b=UEDAH+IsUKgZN03w9KHu65rLBN6XrC6L4sRTWbYpdrqqGJveFz8LjZLjike95YVMySoNfGX9H3m8x+nbcJ+8fO/JvrDlNMn2bMWrcgrhG6ZNm108e/ig4pfsfmVd5vLcQOGn/z9bpBlhdIHuHaN8Z5oWTCrIpx/KKrgWK11V91w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6ESRgXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6ESRgXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FA8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788786033;
	bh=a3BaIHqiLEbRjg9qFD9Stkhq5gF5b7OKPLh5jDKpKbI=;
	h=To:Subject:From:Date:From;
	b=A6ESRgXuy84tCUK8jIVpS+6Laht4txayfZ+S9Sz1dsvBzej/S13kQrlxNRms8QnRe
	 k7KcHhqtdXDPI0SJiErp4H3qgGfDlj+1s34fUzlYtxSRaaW5emtNqdtIG7wpjuBKxs
	 MPMuzeG/H1feCxXGWUPw0fMhk2NliVaFG1WV5YG3mZTOfId3K4amXyozapcCOTZOv4
	 8aK5u36SQ7EqSRpHOXbeL4r9V+NB+c8JT6Y+6Eg7mNYA9OFK6Uu1Yhx/vtmxwxD4j3
	 nMKPYaDbzYiU5ZEY2LrQOa1u//nqccZEP5EwwXkoy+5Qm96emGGlB1FAI5Gd3jmf/f
	 FplGZaHPmArCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B765CC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878603374.23964.16659838306784106824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0759f851db141d59e66efc140fd4c17b89c2c85f8d14563e8d2cb15a802e0c
Date: Mon, 07 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788786033
