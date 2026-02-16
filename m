Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278D412CD8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771213494; cv=none; b=Z6FOeozfQ5OxZMd7ASALaLR8UdmDbU/cp+FHRJmts0SiooSRuesSfJHtT5I9lr+M3fOPdsBl4Fsv+iRCmqaWNyg5fz1ikh7+t6w/qwhxD/Y8egIXSt6fylLt+SLAvAtb/t3YY0ot9VbuPYNj5fCm5GLuWmIZJi7mUhvteFpn9eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771213494; c=relaxed/simple;
	bh=Iem4syv3V5YVYaCHQPgp9Lk/oM0e5JC1GQdfjEBl0mE=;
	h=To:Subject:From:Message-Id:Date; b=j+LT+nAt1caJyhThT/2p/FgYke62SH6l9M4qOSE7RSzKSV337PPVD+qiKyESQNGkuCTXYfRHV73HoVK6Y9EeEfHXQeHm77OpoWjkc3RaUDba3rkr8SGTsDk/T65c9ftyP0TL+C+XkozN664KwYXf+JbB8E+QL4Gp9jOUWR7BVO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMXp5eCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMXp5eCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70D6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771213493;
	bh=Iem4syv3V5YVYaCHQPgp9Lk/oM0e5JC1GQdfjEBl0mE=;
	h=To:Subject:From:Date:From;
	b=NMXp5eCRoyKpq8iaDJ/ND3+JjI3W7Pcydi+8qiDDRjs3jd3RmXskn07hZgOAQ3xKD
	 AU/Qo8InflcBeqpuXVTd1OH3NLGaKX1MbZiwbq5HDJNFjkkqdEDevg+AxM6dpyyW8L
	 93m8vIWu6BXEorw92Lwb2fAZyn3Ao8H+6ZtOq/xqqSAc2qT2XbCyJQf0V2K2P0aGW6
	 0gCgULLkCnwnVrpm+mMp3DF45mJjIw7KWu6brTJte9YpPduZIglIDZ/XSPsImi7pki
	 58QVF5WpWAUEyJCskBdUDww98gprc2Ao234yfheOhSYYQ1itlArK1FMRu5H/KOPr5d
	 0vVPPDjwdBmOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6EBE63F2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121349360.21713.2107944821145799718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59efed59fb450afd1ee6f5d1e032e21d8026782f2445bc3ea81a59ca791ba4e5
Date: Mon, 16 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771213493
