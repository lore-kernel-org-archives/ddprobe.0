Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E5E12C46B
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715349143; cv=none; b=BBUrGlFqAttKK7kopDCvk2oh6XgakEUNBhfsVx253plgKf/TfOTDNi4wfa8SAO6/+FtE8IFeXqeSLRv5Rnt/2br+po8gD2TxNJt17BoZGWXt2IMzPPic44JlKotca5XF0KQzQe4PfMJUAM9lgpnOuO4nul0zFlu1vh+QmZSaDV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715349143; c=relaxed/simple;
	bh=yAasHXkoPpx2wYnRZFqdoY71G9AaOp37/ig1VFjIVqk=;
	h=To:Subject:From:Message-Id:Date; b=C8YPCpcv+UgoAHd8/lZ4UOGodPWOlUu3obEFztT4+VUAz9xoCSkn6L30sb2Qqjap/x2rN2ysA2z1VFRL1lhc1r9/Z8JyxpUnvb8YziBwwgh/bXf2oxcG7ZIT9Xk3+eyetUxKY26hgw04cuMnP9huZKN3uoHXo4afViq2iXerrEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+w5DlEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+w5DlEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5959C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715349142;
	bh=yAasHXkoPpx2wYnRZFqdoY71G9AaOp37/ig1VFjIVqk=;
	h=To:Subject:From:Date:From;
	b=B+w5DlEE5IaIS1iy+Owyokgt47fMWhjnwv0damhehf1LOhGFP0yj8zz9y6KRte272
	 GBL6TkErok2gb0fLoe/fsfK9UGtCjt3bGX37B5+6AiLWAczSbWgjPtD+sOgJSIB/Ab
	 QKF9MGpSxtIpeqFO6xSU8Ucjj+iI5tncxqJYNPIouhdswRVXEDvYUiyFk9zbWRtvhZ
	 AQaeTXz/Yb5vw4nyk050Qv0AOVYsNa2gt1NMgAjH3swH7nGmf/3s1Ycj81hAKVLFcO
	 jZdFQ+Dbv/3aMP3ErwntA/bHkddwYixAfQVdsoKTSQkiY7VHeSUlsngdrgVxwnW/Y6
	 W253FbwTexKjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C616EC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534914280.6691.7567827563309256965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b5db6d9a4784592598fa15471d63d27a13515c43c656b21b0464acf857fed4
Date: Fri, 10 May 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715349142
