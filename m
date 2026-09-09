Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6947433F58D
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788967234; cv=none; b=qa/wn201IchFejFRe3I6LICTmTJfrFl7WD+qWj6otzXVr24YZC5Rv1MvxNfdFjnUuRXtdHYdLipP86EkEbqy+G7wqitSmRr1Ats+AyZ682GgLV/ieUTQpGs2x4ayNX34bGqpN7NJEweq5c3nvEzLxCmTV/+RcAVFpwnCgPw/WYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788967234; c=relaxed/simple;
	bh=KI9inYWUuJ0XqL2oi9MzoL3ZsjHBqh0LKH2+Ye1rp24=;
	h=To:Subject:From:Message-Id:Date; b=iS1PBrPttc+vLqy63gCWdOT6yeBuWGlpCDrtu514weYSffOsyqn17YmOrR8sz6Ryia0x+0/KOybranSHDC2RulQJKqUkEj4OrSvNfQg3hSu5MUpks/+m9ZQPzeoabhHCMeRcywjqLp4TdC0Hm2k7ErhnaKcRnqCwbIacvVCB7eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESZ/sP9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESZ/sP9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB0EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788967234;
	bh=KI9inYWUuJ0XqL2oi9MzoL3ZsjHBqh0LKH2+Ye1rp24=;
	h=To:Subject:From:Date:From;
	b=ESZ/sP9/ZNrnEwtGjJyJ9teB1EPN/BZlSUNFYkWZHuKfLWiotkiOXkyH2bu5BmN/D
	 PFmmNi+6i8rSaNE9d5U4SCUpeRALudIJ5dE6NlX9Gms0Zq8NUp0649OkmZuamtSxCA
	 HJWmKmm8XY68SncOvPXq2/sXA0KLvfb9I9gsrEn9h7d2Dc1F+63gQxQ0HL5pYn2FR2
	 NrbfRzmjfTByPMmhICF91jbavEq6Gr57JK26b+vKs2s4xeu9AzaShEuaGodTLt4sO7
	 rAqAkX9ObFwGAMQS+gMZ0TSo2ipHvKd970DjSLKb6kUzwUxwpjRPJzkqKjU0PyQF06
	 zpcrUzsl0fLdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C223BC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896723377.23572.2598675470660382715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fefc80305896dfb93d74e4959105f45ccef9b02f8d243df4796781d76af9fc7
Date: Wed, 09 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788967233
