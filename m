Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199281FB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735266354; cv=none; b=LySuXQaAddfVT9D8VSiclC0f4byQZLxIYBoDSnz4iyxFfNKXnqOm110t0Ht+Jp93T+gFHGJAFxQRkyN1TRx891XXqApmI2DPNkyqvp3GMuQBmDy4PaDAiW2JTb+vQnSAMSVmgGTGM84E5G8BbrYdocbCSAVVWKTby5Uw9xDpBeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735266354; c=relaxed/simple;
	bh=LzAVkPBVEnXCyWvqPDiPmzD6mfCpV/vgxqdGPtHAse0=;
	h=To:Subject:From:Message-Id:Date; b=YHL4tch0Xd8zd0WS+0JOn8XqyaXOXurvij5CTYtggAvnuyZ+vw4wpCaAap6ueVgV/DeI9H5RdRwnrSjCs8oUyAHuGXJlHFWEC3fGPh4I0ti/WvfPp8EBTYcRIvVXSGaPdKbBJBPOuoIWvyep3KCzJ22H3jkJDOjSvE+OyseQgvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JneV8eLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JneV8eLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5540C4CED4
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735266353;
	bh=LzAVkPBVEnXCyWvqPDiPmzD6mfCpV/vgxqdGPtHAse0=;
	h=To:Subject:From:Date:From;
	b=JneV8eLItkJjUV4R8Hl/bpgXyXE/S+M14aua1wJdjVaMWkUFrHowtMkGhBqgD4BE+
	 Mtspz+jC8TBOMaFUom0AwCmrgeyO/3c+W0SLHmwdD4OOd7MSz0c+6xFRx+80BAEJnL
	 DGhmWd7mS6XGwoV5WV2cYZDoA0lreFqLWzKu0ocBAHBtpn/jm2AAI9KiXz1k7UPeTT
	 RYj//2y4HDgyxLgLjqmD2QWK92JVQfwLKGLhY3fmt/jES7AMCDL3umYKht2F2AtvUJ
	 bwBBG7dflDVrLAdB8MQCBqHZUl0ofW8OJwrFWVOjLry1zQa8PRzJX8uBTkVWGqeU6z
	 HqDomefroqcyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE3E7718E
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173526635358.25160.14590118818192089240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dec142eaed59d512abf88af6aff1bc55d0f6c9e0d9d7a1fe415198f1919acb
Date: Fri, 27 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735266353
