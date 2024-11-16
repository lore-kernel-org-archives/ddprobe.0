Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4498F4A33
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731738354; cv=none; b=WQsIaxbo7OPN23N1Lcp7141mENBPhkieDazz+I+NOtcdZyptT2ez1ejp3su5zcCHeuNPpTAY8KUzY/zNJsnCX48mNRT59+zApYbOzAKwFywZtj7c2yWGIKEY4hNqweX7KfekyszcrH842kZG1lMbN1qJHTlcpySg8E4GHGwbbws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731738354; c=relaxed/simple;
	bh=DqmvWuy5adFQa8JyKJowco4GbV8gBaKEJDFE3z/OfhA=;
	h=To:Subject:From:Message-Id:Date; b=gn8r9wm+O8+Gkc9MAEAz/mKFMwZDBVBPfHT1rWOUXnRkNzcptC46tsnIaX8/HO+L1YqwQLVtSanrWzY5e4p4He2ihGZWdEowwPAE5cXH0XDWNxXiMtqnHZ+iZBfgvSAWZlGBxyIMJouHeX506VqFsdQGlfYEq2pCg1piXkBX5cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjwpruCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjwpruCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C519CC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731738353;
	bh=DqmvWuy5adFQa8JyKJowco4GbV8gBaKEJDFE3z/OfhA=;
	h=To:Subject:From:Date:From;
	b=qjwpruCZdbrF44v699wAoVzjSMPbnIJcEqadNiokKv9uGB8LxUtH/3um2gnpRB8kD
	 AdkSI3hXOLfxN3Q1a47WAE5u6Y1/5a59c4CVHKAkacuWm083rXKRr8daUJ9FcwpyVA
	 Yplf0KP/sTKauH4LfHJHStrDCa1T1pB/QBFSh3dBijzSORwqddrZfzTBYdlKqVVBGU
	 KxV0twwJP2g+uCmDjUmzieM2UoMmLxorCDF6M5FCK+wgZIxL7H1KlZvNoXsB40oMj8
	 adKWLbheT8RUevwrwts8M8LrXjRCtKHeN998v+U9g/68h+CeMBGsk1wcWDso4HYw81
	 NBQPNEgZkEa+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13ECD68BE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173173835363.23577.14038710801241319651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1e90eb89b5e2556c262983e0a9f3e5ecc656b7e7407d5de950e3787f8c177a
Date: Sat, 16 Nov 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731738353
