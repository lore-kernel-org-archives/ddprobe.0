Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC131EEE9
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738418754; cv=none; b=YxP830X3poPBbqv8+G8gbGRc0Cl4wMytrPOPFxXqQ4MiEFJlY+AIBo54ay2KuTJU2RO7k352a6QqLT6/OV/Hfqyk+rBu4mt0M0cdbs69UlgcVA2iiO2jW41m5dYSBkoOYVrarVq4y0gvJfOU0F86CCqNBd+JPbeO7JoJXOaYPV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738418754; c=relaxed/simple;
	bh=XIeH8fbL1CCDUmP96IgKuLP7U3/cvH8NEdcbX4SZ31Y=;
	h=To:Subject:From:Message-Id:Date; b=tXn5Zok0iVS0xFcC8Ax5b92HYd2nAoWH/5Ms7izcTnanVe8gGH7maVYY7KChyAwnf8rh4APazXc3CuHdsQDAUPX5SEPJQumLHfKRdOEapYn2oaovxrx0a+hezCR+Ysb6ghspzrJWWai9j22ATY4F1Lr2nsPvtl3BMs7FxmnOB80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSMcA8fw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSMcA8fw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2366C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738418753;
	bh=XIeH8fbL1CCDUmP96IgKuLP7U3/cvH8NEdcbX4SZ31Y=;
	h=To:Subject:From:Date:From;
	b=ZSMcA8fwx04e227SFrnJ5A6iDmvq292/bq3ceO0IqWAVCQiCxCAUHHUyO0CAY7JTF
	 9HAAFgYYOQQSAdw4EU0jutWqMd5ioJ/QQB9mrjLS9jNgFbYtPH+08cRd0N8kgfvZFR
	 HcTubBLcWEQST5v9qbshRvl0pAGg+2IEcYpttCHi5DkFP5uCo26k8BNN1pev6XTOGC
	 Lyrrts0AimVpttEDibXnUg08Bi+Oazf17DUfbDKAVM1Q+3jOgSZFino+5xD4V8VVB0
	 MRr8p3Jen1xn0/Kv0lAd/6D60jyd84siO4oandKufxhjFfDzSxuflmtH0SH5dY9r+A
	 dS0E5nzhVe49g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19AFC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841875364.22438.11544192572079522934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c4b89d8e90f0fc8d9d608eda699bbb20d37deba7bf6df05cd94228c084fcea
Date: Sat, 01 Feb 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738418753
