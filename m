Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E13D4A35
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755574194; cv=none; b=eQRFI0hxjphreIEYPSqrdmBuKlJ2I0poGjN7f7EK4Z9LpGT8Q8GQSM3VZwMUm4O4kC+Fw9hDpPm7jGYePPB9enFlGLfUML3fOfpgY7OIWN5tlNggiUYeh9gbxOKfLNDGT/k80rAAtcH5klUfegtykfrcNSQdhhtCu1VKemtbBFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755574194; c=relaxed/simple;
	bh=tlnPLwqAkzNrmu5tCXv0Rk/Fa0M1uGLOM+WdZ9asTcw=;
	h=To:Subject:From:Message-Id:Date; b=ddxYOvcB2bJ0JdNKzTIAKhFLWvmNmQO6dkkiQQYQzYmTIEBQNz8CSeY15ZaIMI4wubN443831/7k9kU3dPV4o42TqeszcXHHcLATNDS+LGNdJVXhOFFNPC8DIU0wwOXF1zNsogNaVymrZpl2FjsnAiSmfN9GCcD29Kwtp7CpVLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR8z+lfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR8z+lfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D8C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755574193;
	bh=tlnPLwqAkzNrmu5tCXv0Rk/Fa0M1uGLOM+WdZ9asTcw=;
	h=To:Subject:From:Date:From;
	b=FR8z+lfsjrtHbg+XEIuoYRqYS/FPaiA+b5cZzB84JanZdiNszOYW3WoNcbHVIj2fn
	 9heBUSl5NeIt9ocAJuoa/f+J3ZXKZTHJHmlK2Qe0XhqDy4NkE1AXChbFN4LkCI0Llk
	 avfxsQojMMTsZdyxETLaEu24kwvdfrQguDJWiYi+1idC1MCKouPl6ZaxfWK349ZYhU
	 OgteExHatj0BlDgasnhPaQG0BP6jpfkLZtedPJ2GGEhH8wC/ov+JNb8SQ364zFWZ+N
	 eSZAvbKx27QkompRWcTnl5oQ6oqq0XAuvAcyakuzuQlvEFSuhAsgxpW9SvojwLi7wy
	 GeEq3lN0VfCJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC55CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557419357.17553.4110924652840691101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9432fbd2f1ab56fe66e821890e9cb6634c93c6a98456029318ad6bd726c7abc
Date: Tue, 19 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755574193
