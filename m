Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D343BD25C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773749693; cv=none; b=emyVXtliw1nF88I9b1r/1YpaVtxhoWXdBru8h2OJ+9gAc1CQ3Jqek0NDED8LkOUQOmrm7FnemaEKLVOkQlY3mlCKbuDZrihrMOFWQBgwyyjAc6LGWQLK+UlGcXHRsQ9U+sga6102389xpUMu9g0tifit4nBi3FcXHIEnRxtDf9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773749693; c=relaxed/simple;
	bh=8kphE5/WkYO1eelt2GKTOytUu4qEBguZWNoliQGVq9U=;
	h=To:Subject:From:Message-Id:Date; b=WLUCXA19EDaz9FSlHVKkBwdGbU9xb8K8zyBMSDN/XO2aBQa5n2y9o5jc630CFAIEwyrppN8RLm5ifuvyuCKClM6q2iD9xWnFMS/QF86f3Q6bT6t/zTG+z8QVwyypN7lo1FQyc27EY3RfDT/2h1lOj7jFP4YMaT+gzg/VETEG1o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1ni/sHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1ni/sHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8E3C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773749693;
	bh=8kphE5/WkYO1eelt2GKTOytUu4qEBguZWNoliQGVq9U=;
	h=To:Subject:From:Date:From;
	b=D1ni/sHjKYK+r2mBwcV8TZPBflgEXySTMG8477W914ILwe1GsrqMDZHu7Oxcarrph
	 gOEsyDXCeb+K//3YLO/1mjajiAGGQSKtYcvrGrI3Yxdp2WWKAzgvixfMFfrpRf2ppq
	 k7GEKn06+rfhyVJke4J2U2CKmgtoHfo/NrsDlFCGJAQTeEkqtf8gASc3L+HFQ0JBrp
	 fQ3YlTHBUTwirrrZoDRbWcnoVJWmotsKOxefAvpKyDqQdpkwtiFthKCoFezK6XHGTI
	 qlseaedAb1vKzDLYQQu7TUGRt0cxFSXXmE0zvxyhQxseFw6MQRhpn/YaCvrrRMzvCp
	 DrhVg9C+TvmiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA1FD8752
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374969357.6882.9781111438723440961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8dfb32d4c6bb4f52dbc3ee738ddc14db9804945b4555b975ee31cf644bfb57
Date: Tue, 17 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773749693
