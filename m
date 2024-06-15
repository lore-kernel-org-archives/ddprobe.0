Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBBD3F9CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718477903; cv=none; b=qOgMQ18hv1WDVWar1wlUrCZbpvoAm/4mDR7SJ216G2dtYBQWIfXTNHHkYFNfA70/qBaHUiJobElxwX9iuX3xl0Zfl9JXI1DfPSq/XPTNOp7FoJeXyfeHZR1ksnq0Qn28HPYzQxH9n3QtZ570D7AIbDixQNkYg3Hq4gcG/4tJYD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718477903; c=relaxed/simple;
	bh=wMi4P4bI4NAHxYSUxJ+wleepoAqRtwASNlTN6M8wXBs=;
	h=To:Subject:From:Message-Id:Date; b=cXLdkWZkvM6N7kP5UcanuVVDGDIT+WrcnidYTIk37jqSxbabXfrLZGIZQ5oQ+Xzu7+WE3MfujfDx/ikRBQ5H0KoTyNmoJePBcsy3qQLN32NurroRTQP8Ji08wDNGiAa5RJqx10ic3hUXhjusgNGyMKLabwcV35ZhILJgKRggP8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9uCmtOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9uCmtOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4608C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718477902;
	bh=wMi4P4bI4NAHxYSUxJ+wleepoAqRtwASNlTN6M8wXBs=;
	h=To:Subject:From:Date:From;
	b=D9uCmtOcnyYfDsBkoHX86Vny2v6rWiMns7JHzz/hTcyPsZuq0bAhzTq+56Prlky8l
	 t3sxli2Q3L3WtyrxeReNWPaoCrchmIzkM/jLBpkqtbBzRZwkINBQo4Qc0jRdANFLGY
	 nhMzTV8oh1mOU+MuLGI3H4P0weTD/sxFLaalXm+emd1laMEpNw1FMtgk31q1hbyvEQ
	 K6R4Rs5vzwtmlfuu8iCZ0v7F+4D7AC7HtQqV0WTsaOfSn58Po14CYchHw9UNSRipnL
	 WinIt3lq3zRn/f9+QVnPWGup+LhHsLdHHOzUw/LanhTNlgFL1ATHOIj47Uba4sn65q
	 ZZiEzfGqogONw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29DEC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847790277.14966.154141232260792243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e378caaf253663d546200edad06eaa69b3c31d959709bc269c27f7cf5c2597
Date: Sat, 15 Jun 2024 18:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718477902
