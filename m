Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F241F19A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723136154; cv=none; b=fcg5l8SOztcyp0fEqT8dyPs76n4qLWkZGNL6cwE6IwDqnKAT3k92XSn4BYa7Z2r/4+fRjDV8zmdc2wAUlnWTSeNcEIf3mkuIBr9Az4W0/LHKV5bJIWVfsghaJ3B2fftO/wF4Ib8rAhZSbc/7prW376E88jnEah6AYEHavIZ9fis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723136154; c=relaxed/simple;
	bh=eT/Sl/xaIk54Vqn6CKkzssN23tgNqPmxLPtiuG0+TQ0=;
	h=To:Subject:From:Message-Id:Date; b=CRImPV21lJ2pzQRFij4cnEhkIbyzL7TPy0MPrfLVgacveFZQibHfImk+sEE1mlppunflp/+fcXwSIjGJT81d6fgrLo9f/rnY39acY7/Prsidh6jgM7yZnDveEj6RNeRKdk2Q+OFKJjFBAWRp8L+h6z8/rGOfcRpT15yAmy0xUko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LefV2Du7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LefV2Du7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2674C32786
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723136153;
	bh=eT/Sl/xaIk54Vqn6CKkzssN23tgNqPmxLPtiuG0+TQ0=;
	h=To:Subject:From:Date:From;
	b=LefV2Du71OY10j/lrve5SD/gaBCduzHTHuz38wIu+/lbEo67pKugr4+IIRGqJvsv6
	 8VFFu2DstJX3mX5lgp8eZhmwqyAIRZs5f7+X0MMb5qWiTGLokp2b4MPN+t9MvXGwx2
	 l6AQflJVNDWklHbclbilthAw+Bdj/8dkol2ye08E8ppaianZYN16b2mdbznHoh8JgX
	 D1Dk2mvz25Wk0cHNN5ei34gjfmNuK+CRSR6FZCRNO/VMF9TR0AkU8FUNcaxuW0WV1h
	 BS2+cd6G5y1YNuVIqlAgw3JIcuZZ3J4vr2wyv0GbZkzeL0Hw1HkEYP5dTiXAKEkHpJ
	 W8ChRNUQ2JBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09AAC52D7B
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172313615361.19367.6489210299212719075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2711974e97fe1a9faa52291dde4b7cc57cfff3e0d4227c27f90cb54af0879c
Date: Thu, 08 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723136153
