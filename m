Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779B517BDC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719618863; cv=none; b=HXN05XjcKA3+wZHJAL1OoXDNBD8DrKG9F0t8YZOeSoeB8s72CvxyphwtJCA8lzAimbB+bF85Dio9lzkRWpOPFta5OFscc8+dQsLYuH11iXvjsYxNTad+Bz36pmxgn5QncmbdA6IvV51GNhz1KRcyxNe/Y7H1DLg4PmoXL5oTThE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719618863; c=relaxed/simple;
	bh=paTG0Ln0weg1ThbRCLOkZXN0SaRVgW2UGsyisMTF2E4=;
	h=To:Subject:From:Message-Id:Date; b=k96M8PAXGoWg9cJX98dkAErznuYrDZvxPALeIrc5ruWDKi98nrBdRkTEoIZfh3FYvyMnRtnGSb3cbMD64zKL0MfsJS+pTT/0d/nfkphIOcamR3K7SoaYh2rBu2ksmvZcKWciMUu9n/nf8HSjkvsUDFet/p7f4GVzinatnz0XHOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp4bglAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp4bglAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86D8C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719618862;
	bh=paTG0Ln0weg1ThbRCLOkZXN0SaRVgW2UGsyisMTF2E4=;
	h=To:Subject:From:Date:From;
	b=Rp4bglAin/ln/760v0kB36TbuGIxybeMq1PRyMwJ/2AOcpTEV0ARWwZsnQDF5gkC/
	 mdwFvChZU0tH3ojtjdmd4TmldSSJl9gELHK8+guwQNgEilIG+k3Cb3h1i70sq6HcCI
	 nUHKE8SQQmYH6JEMvMAPNWlfq5gozU+AL1dw4w13la7cDDVomM9W3kLfsrkMdnz8r4
	 pzaYuw7XEgWrvBqpjiqjQrgc3+WMV7EG0xCbqTAA+u4UirUsqHh2Vm7OVZjMai9X72
	 GdpM/H/dCptw9ikam3JN92GnMTJF05iddu5q3UwjVKlTRNKbARaXB7S4JDkXwCqtIj
	 rEncMQMENmdFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E43C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961886281.13436.9117309774955710390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb434c9bafbe97760d242bcd4d305057a8ca08cdc61ecdff327650639dc7654
Date: Fri, 28 Jun 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719618862
