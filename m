Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17245747F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751196594; cv=none; b=DsBYrrEKH7Kdy5pq5F43R3zTDpCnaC5n/jUW1CY5z98R0A6v1RRP2EoMqAy1Uk4ZdV/aDS7seEtn+LmRHCvD96TGZqjNFGA8pyCDqbxFTyTkisMgrwOg/S9wybNyhXySt23YjuZRo2pwqP90RqsYdSKdsFeAMyQRtT0cGM79ZC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751196594; c=relaxed/simple;
	bh=2evruH0hHkdAYdAocPhauPoTbiQOs6+bJQ1T2hKR/Rc=;
	h=To:Subject:From:Message-Id:Date; b=R1WPG99fvdf1uJUzbAltDrg8IvV6Bd6ReuPyQi7H7v2uPeFfVs8ZuhRyc+eLQ+JZYENDjr29zG1YZ37y1yKixD2klVThwO8DRaFfaUhz5eSMd4LgShyBcS9+P3w9iKUxrPJw2ESn3/oMRHt8BM3kwFHhsrlKdEFRiOqKWO0BBgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLWAGYWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLWAGYWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1605C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751196593;
	bh=2evruH0hHkdAYdAocPhauPoTbiQOs6+bJQ1T2hKR/Rc=;
	h=To:Subject:From:Date:From;
	b=pLWAGYWl/J/FDWn+FqPf800nqhO6gPaYuRo0FPjh5geW0rNUNGWkhVaytEOlsBgJq
	 WgWsMOn//jPtrNx/lVZKanNPBLhiwx0WSc8sbPyM83p0rb/uuD9m8dtwTeis676jy3
	 IGNGRdNxTeW4++3OfyBAEVlhnH25TqviURiqaSnyJyPFtsTa56mavanrwTuepDCUl5
	 FfHz1cIkQyy54Uaew/yk6c3O2AITdkZCkYrGs639pXHwiWbZNqTyhSFRYsm3itGBRg
	 qDHSSFHb2lUjeeLjy9eUQkGhHjBSJSKWIv1d7Bhh42oluFWTAZZ9cNIlqpYUJBUu+8
	 iqbPr9J77Gsyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ABBC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119659358.13926.6671542098385958577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4d99d1332435195058505ffef317a89073cc418d41240593f7d58b3942f592
Date: Sun, 29 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751196593
