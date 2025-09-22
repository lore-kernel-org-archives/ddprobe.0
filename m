Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8618C031
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758532194; cv=none; b=cSYc8rYd+MC8wIdUN0xdv7tcTmgGvKUTICo3cYQj0E1nZvIE0A1GZq/J2sAkxfYvVU1w8MIJiBKVi81sjBTHwQi7UlHjty7CVOsLN+tewQn1DRQ6sD5giGCrOxbH/WYWJpL2CEWcxztXzdCT0JxvA18vUSf3fTC9pagF/gE30Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758532194; c=relaxed/simple;
	bh=dw8Gvvvd0LdIJsV9ynpzVxxsqWhf0YLd4YN1r0fLRrk=;
	h=To:Subject:From:Message-Id:Date; b=K/A1o/Xa3+Y5dC6KPjA14/ylFCYJWiKe+cF8pUCZ29zH941m91pUGLvMYVgTDliTYICicLRNjugijbeww8+4rL10nuHQvXfXoRuSpG/i8q6x2t8tVyqJ3U/SQd2fKhi2jPfT2rXec1G8nbDDRFclWp21oFrtT278ZIEDSpubUkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFaYvC3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFaYvC3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758532193;
	bh=dw8Gvvvd0LdIJsV9ynpzVxxsqWhf0YLd4YN1r0fLRrk=;
	h=To:Subject:From:Date:From;
	b=SFaYvC3OEmTA7RvemU9zo/QFIYDnaBoXm5af0DePk0XKS+DvaKj58SlsSs4GYUQ2s
	 D0pBjAieBqqC5sASUZIaQbwuSG/Y2k8mib9CZwtwpHbBBXj4iyiRJqgK7Dh2INR9cj
	 9fiN3L4Mbdyfdg2ugkc1m6NBUdxTXOd90aELx9faEdT4r2qazVK20pMId7NdEzVbHp
	 MKQpMDN5iWVjr2AcqKFBwRGjOkbusbeYzvKBKJN97spkRwek1PhT2xn8Aq1gCp8X7u
	 fywg7zPddcUWCACVxgd8nh7BEY/DacOqT6FbFbYuJPvyp/EOb9kk+JVJ2u08NTWeQ2
	 r7TXN7dh3Gifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A9CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853219358.16870.5063947623896548405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3b06dc7bdf27a47db35f091eb555ad47f3ba32df1318e1f6f41a9f3bde0b68
Date: Mon, 22 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758532193
