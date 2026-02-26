Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7493126C2
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772090094; cv=none; b=sxtD3lZK40yvEZrjKxJmRHJZeD2YhJmoNA6RV3WHunwoG2uDHMYmeVqOJI3LVxRXp+nvxVgGnDYoPJopFVQdpTf1bdSQ30PVRV1lIGE9YevdvLgqEgQZdjNPVWTbH/NFBnVTdoqDHvCrS2mbuwuRhvrVBCTy+82P3OOrgkTZ56I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772090094; c=relaxed/simple;
	bh=u/ssyQ/v4e5evVdUBjpMGl7DdZiDPGNyTHUAN9fb4NE=;
	h=To:Subject:From:Message-Id:Date; b=kcI4DcjGeaI1SwrEMDeo/CaM9tE9wZ5VZ/iC91eQthimNw8ONlu4WHUw9UCdO4DRNNqJ7VN3bowZ7GgYJKjM4rLE6j1Z3Ro7CbHj9cI4MTw8y4kIbjb41T6zIvXtMzwogrCbG0g3lhIRMDf1ROY8mFOSF9LPhnBVFngxufEC8ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qW7z8ksk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qW7z8ksk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE6AC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772090093;
	bh=u/ssyQ/v4e5evVdUBjpMGl7DdZiDPGNyTHUAN9fb4NE=;
	h=To:Subject:From:Date:From;
	b=qW7z8ksk0nvv5lqJljiikxDaWYNqx811hzYevohEkhqBU84CuomCOP1ieep94c01N
	 u+v9kGcnbw/IS9sLVVnSFnJ6EmXpytCRSaKo6vPVkt06seIZfLEYIMjc++V91a38Nb
	 ASZdNoo6I7sMf94pamASeJbTtQcN3XTKHkvuVK2r16R9WCjj0UKMdlpuIq2cjsAuZG
	 F2HiQP3gMQklwo5bjhD6X1TcwOTmBru6kJvrfKMP2DS78uthiqpshcChfJObl7MWQr
	 rBMWksYuYnvswS4bXssfgVbhxrUL8UETzbhCs11gQW0DB3LUX2o7yCAULUj1J5oui/
	 5GdD5be1MZ1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A108FC5904
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209009358.12980.14965384459893263686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35b9632b97a1933f055d8e6d360e140578e0ac1fcc74b7b7e1038ac6cd8d642
Date: Thu, 26 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772090093
