Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E641863E
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743860394; cv=none; b=lor6KcRvjBvw1PtoqcMxtxFfXST2zn+wG9vXWf6G04eCsgCTm98kcPYurzQyVVaeLnYHCgJY255OAGQo76VMYiqoIBIHNlOicswgpfrnyo+AH6es55c4E5iNkd5cqTlysC/E7XbRvaGA+EfZOoxSfdt1pKsmtAmj65g9K1P5HSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743860394; c=relaxed/simple;
	bh=dOLS6fWargRuGekK+kZMMEdUlsqV6kQDebJnl2dmOao=;
	h=To:Subject:From:Message-Id:Date; b=L442mTBS2KCGufYwT5UMtjRSXWIwbbCsmM57s1t+IK/YUcK8OsxyrV5GnqH7ujPl1/DsyMjF59pMVUvgbmdEjzjqKxDMSeJQsWi+5ouA19zZ22Vdw4a0R9hsZ5d8fQi+S30QBkIX/M1ybvKdLEc2d6mNxkbn6x/S+jbu0kNbYfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUWom7RU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUWom7RU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFC2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743860393;
	bh=dOLS6fWargRuGekK+kZMMEdUlsqV6kQDebJnl2dmOao=;
	h=To:Subject:From:Date:From;
	b=IUWom7RUmYKW8TP7o2M8q+TNFACxrCeMHw3548/nc/H8ERSZmqUA0N2BcmgIrxiBx
	 H+VSqUQpBuWqv/bp9VuprMoG7LmgBMTLwbCdls/W0uyqCH20xdNeROFOUE40e5O/zw
	 Cbd5baU49s9dgIMQB309I0p+1fTfl+NKCT2uOjDFXoqUk3+bdTqTnc9n3/Ewl0QaUh
	 jFMBUC7btcp+O4wCQ0FVwrSJSej984QuKgl9ZPBDzUdO9op+FlH+djnDUyfJ15yyi9
	 qqe/yh5prX2pvBEv7waZ2/GHs+k2M98s6SIdYtnWjCnrqZgRmpA9tVorLyNJsyNPpY
	 PvhO1UDfe22JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76ADC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386039363.23694.12558400615000750517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b700139fa712b46fdf6c24f68329c82fb3188f7b19d1536e10cfc5b37489e2f7
Date: Sat, 05 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743860393
