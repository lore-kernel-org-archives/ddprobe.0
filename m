Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1863A239E9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765251174; cv=none; b=uzgMuvtDDGDNWZOmFJzHCLDIJ5d1UFcILAGYVCAtNP0qZo2gkakbU3tWdFwfGDTCP5Vam9kSA/nkJevbuFlAfEmtHYdqNMd7jj3oyhU31fdult1SVUC0+EkaCWyelyLaBb5RtstIEDIFj4SjwcRv1C+siNF4aZHg3f5E48vT8oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765251174; c=relaxed/simple;
	bh=+ejdh05ZuaIqw5Cx7yuUQcYUWQhkOCg1QXUsEhUcZ/w=;
	h=To:Subject:From:Message-Id:Date; b=X0zm37thQew1Qtu0zxQAxs0IBWfFV2UBzrsg3XfP5XXa5aNGjl4PNhT0FUQCqU4ETTqQj/k+xF8oinenIWnJEIVsr4W61pHy/bLlepNDjzHURAK9zUT/u42GIoq9RorWLxBnb9Ptn85Iv0aaKIn62FwOwXazMSxTwSgQOJ2ZUkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THTKEdZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THTKEdZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54CCC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765251173;
	bh=+ejdh05ZuaIqw5Cx7yuUQcYUWQhkOCg1QXUsEhUcZ/w=;
	h=To:Subject:From:Date:From;
	b=THTKEdZvUPKp5+HlII8ag/TCkJKEt1LoDy0DgG3esxEgCIgtmFAstKT6+4OToyyYO
	 IcqgT7Uu+LEtFuCFtm3xh/68EDmyvIrcnLlbKtCJT5bHKfFQtXdDx/RonkPvccwkOd
	 XviBcQ40+Mc5hb6QwtI8tE8/W77JtaMFmib5GnfDPmmlfDzAIBMplAX1Va9BFL19Bb
	 9tMRiwvZDF/Xhtyh3cjp/Gm7mYhquY6wjesJdlK8beNapTZYvCKPmjJFH2BZZGG4yg
	 EQ6qDCZ+iCJO0lp/b6o5bgKKvdc95BJQpEbPnkzduxkl884urBhxgeAqWCTm0xMX/m
	 YDLu1SOFwZvmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE6D3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525117360.15132.15840165957062861876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1308126fb2d10204205e7fac7b494702440be627342fd537f0b058f18767f8
Date: Tue, 09 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765251173
