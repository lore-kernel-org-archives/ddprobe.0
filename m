Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE5630DED4
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765794174; cv=none; b=Z8zadHUhpIxvf1ty2TGY3IROvYklOLfqMwc/lgDUSmsUJLDA9WurylrVQtTf2Tkt7FMr4NWzQSQf/MTT+NGLMlHxbc2dCyaIQnVha+T5Qs/c8PPN3yc8qWdPlXXRLmE85l36y3HeBM6gLEnbvNkN93yz40wtSt84+nEH0WJt8iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765794174; c=relaxed/simple;
	bh=D0Lg+PP0yWB1zgfDev061tMUaK6zQt579UWpxAz5Igk=;
	h=To:Subject:From:Message-Id:Date; b=jkY671X/srrB28QtCM4VOlsIy4oTyjGcXiKrIo1xootq1nm/bdZ6H3UGydYOm58NAw2KDQfkaS40/utj0dVpiN+NvfppdSVDEYIDE+o/9XU06Luq5LIMLh/nwwjU5On0BnoGiivVsRDSinFvcrH9Vt7TbzEQ8fuEPk4d+hGZouw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb9Rnonu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb9Rnonu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD4C19421
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765794173;
	bh=D0Lg+PP0yWB1zgfDev061tMUaK6zQt579UWpxAz5Igk=;
	h=To:Subject:From:Date:From;
	b=Pb9Rnonu5zrwU4nS1sp8RXNJnQaudYREJNtrnGykYdsPMkmud1IBfH9Dih18tD39i
	 J0wDX/pnC3cAjKPDhthp8sZG2qOKwzK7f2KVfWZnIMlXQzORENH18YjnWZrlLO+2ba
	 nHsiDKTnUsPNWc6lL5gMKWpFQ4B+j/R5lD4ZjypB9org1W1kLGFeneC0vs1d+iAKkN
	 WP3HpjCG0oK35jT1ub1M/QlZJDJGSoSvmLfxdjnXTC+eBbQtS9AAQRq7sGcbOUujqR
	 1exMNT92pJy9qB7DPB6ly6Ihz/pEvmB2Cb2v6NAzbGMwm+wI8rHl0M2dusYydZSd8o
	 XQrrAfhsv3kqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B1D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579417358.17954.2166091075125732924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b1fc2670c00411b37954800c67c181c3010b6a0607c032e55c7e50eec4b955
Date: Mon, 15 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765794173
