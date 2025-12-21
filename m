Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A895137C52
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766335434; cv=none; b=sWMvT1G91cxXd4mddPVAOKhaaS99epaeq58JD+kqphb7h7Wr3b05DjerFAneV3Xvnqpf5d9zjRscodoD1/QABo97MhqQez6o+dBKbGX9AkvZc3eJlpTS7FN/9JZUIn4oP+H4Ui5gxqTMuIlJcleuUUgMdALk5jk/QH8zNlmKYEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766335434; c=relaxed/simple;
	bh=tw7CEfXZvMOAkYpeoje+tdtKU2Eqtf28uFp05G1QtyA=;
	h=To:Subject:From:Message-Id:Date; b=k77gE8lnLAgT5puoltV57a1WCUQsTyXtPDGxiQkUu1TqOdD4aVTVBni1r247h2z6+tjd9lcBSjFDpRqWZAdO35CdUm8Ykrq39vMjrMdosrUCJiNicfPJavvR3LDJgv7VIz1mpKLQ4UNRGVw9+5ksgWXigidb9XhNl1FFb7og/4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLmH3iza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLmH3iza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DDBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766335433;
	bh=tw7CEfXZvMOAkYpeoje+tdtKU2Eqtf28uFp05G1QtyA=;
	h=To:Subject:From:Date:From;
	b=oLmH3izakd/AbddHn7adxxzJvUO1kt0IhRC8ofXBesVLqX8M2Py9qZYqSDEuzTiaz
	 T8xPPnUDndm3Rhr8796TgoS4M2mK8eiFPkfG0uCNc/QUIvB+hsO0C3OUUBPAZDz3GC
	 4XAym0y2cYq0wuO0mvjAUdmT7JRF78N9Uty3WCSmwjvdmrolSe5W5QCQmr9LfA4TAa
	 IexOBVhnbPCOOSHK+H8NT8+9vuNmD33IayT/v/4TctfBDDPAlopgcHAlXZrDB2f2nc
	 48XIbBEKP9Do+e1SH/TP8kBfFu9aMiKTbYZ2Wkt83fc7ByF0E7dmfgp5VasI283H01
	 aWmHhIv0PvuYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95786E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633543357.15771.6219378074786850569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ab78f228a5118167760694b7f94c10223de6f127593b6c804ba6e075ce587a
Date: Sun, 21 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766335433
