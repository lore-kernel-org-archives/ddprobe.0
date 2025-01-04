Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275EC77F1B
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735988154; cv=none; b=u6BwcIgdHfmNRcxtExDRLBTosZ+LPC5VlvTJPGgpgKQ/RtBbYrfWErR3mB7EkfG0Qb2UeNUHbkybd+7YWx1DxNSAUnQ+BmYqbLwnVOsQB3d1fnEANITmqczv9qRkY83D5g2E0uG+gIULFXhvkXeHO8VG09o1h9FC4ATLD1f+HVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735988154; c=relaxed/simple;
	bh=Fyopxlg4DS+exQT99hE+0a1DcOfeggbhdfLp5X1/Ohk=;
	h=To:Subject:From:Message-Id:Date; b=uX5I/Ou0z4XM6sV9g2B5huQyE8SIccIMYL4Fwu9SGUXWYqQOwQlgE6nc9wtbrShbv2p6yRbgy9nEQAcKUYFuEoaNe5r0xtW4x484lS1R++dqnrN/Uhjw1af5tM1QbrOFzAIFmieL3FucMF8EetGRnSyVvRGywH7NVCOGtkzB4Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kToR1Mes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kToR1Mes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF953C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735988153;
	bh=Fyopxlg4DS+exQT99hE+0a1DcOfeggbhdfLp5X1/Ohk=;
	h=To:Subject:From:Date:From;
	b=kToR1MesiwckOBfhru94EUKYztT6+k889I4tRsQLJyXk1YZZ+qlRiljST2UhQoz54
	 D9o8d234DxQGt9UN5F/dk4BSwIailYGC1l3QPMo6cSksplm1zHEFlXT5UF4UB2CLa4
	 U5JkYXbDvmonAI73j29hOmaLWsn4ucNKGs+ehmohA0jGEabD1ePOSc7aL+WWt8m63p
	 //x+ECJKxmhDKFnvlWH2i+VVVF/gTfvLChDEfVNNZ+I1YhatdvOPs39Al+zryXoFs5
	 QxtyVEVZGfoR/m6Tunqfu9AGKGK0Fxh+3JR+j3vJf+3k/aZotNeqUWNbWJEkqbo9cE
	 SFJUYENlkDHbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1EEE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598815360.6056.7719190940370335899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974d4e93a56847cb479b263ef0648593ab5ddf9df7b70886f2666dbfdeb5c1c6
Date: Sat, 04 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735988153
