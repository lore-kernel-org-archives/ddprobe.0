Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C65D3C4176
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790082634; cv=none; b=lIpD0fg1tMELNtl1qMOhe5WRvHfCgKjL+MpHNl3Ul5Yyqtr7cxZAaMSZC7eTw9mhmdklsAPr0sRVnsWydT2nvOMoIQmmMR3GibIW2G54YzMg5fj3sE6PooK1cXW21T9VxoFrhQon+v1AmjUSc1RLcD2zSbMG46gOov7FBJSwWGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790082634; c=relaxed/simple;
	bh=lLwnBcxXSEuUtiNmFqHxu0eN99Q9mzCTy82+UrQF1SY=;
	h=To:Subject:From:Message-Id:Date; b=j+gZCqrX0h9xbdX6tg29/N2nYkhWJykl36B+PJLLvahnPE+9MmngcLIfGijfqw25pethfnrYrcbqyonnkP/ZbuTsK41IdzaApZx3Dkz/rqdIMb+atAjnoF6pwSlFSwCfWH5ZWKJYoxbTIuS93HfRkjfp1wxeYc/fXvfwBu2ItkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2YNKU5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2YNKU5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6287C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790082633;
	bh=lLwnBcxXSEuUtiNmFqHxu0eN99Q9mzCTy82+UrQF1SY=;
	h=To:Subject:From:Date:From;
	b=G2YNKU5AOIGPpCGd2p/t8f8aaFs0qbQhyJOYwcBprkuRu8eUnAQzCT7s6/kJThkev
	 +utWwjLbG+ehFRLs5lLe/xTvdaknMzwQKSP0t+38XUrg0agpkD93TEgWoqwnYMBxUI
	 7sqY8UHs1r05vNvuRuQH9UzXQH9uCK31G5zzZkOL7y8sfgQdRj6LLec2EeHWkmvMxe
	 mN0ebC7Mv4fPTPoPNDnCtYPLh/h0dmw5MDjh5QarW5Xy4h8RekWti57913dizd9E7V
	 eZDMM+PMn/gOTKMCw/sXjxO1TEz2O+qvBaB7SCf8Efq9dVoSqQThpPMidGVoGov1ta
	 Oe67XtaZRk9Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF421C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008263370.2761.7938043817506732082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7120fb783632e8d87e99de830b12cfe4d14496c3b7dc719e925006262dda96c
Date: Tue, 22 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790082633
