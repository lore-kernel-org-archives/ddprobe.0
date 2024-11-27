Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489241B6D15
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732708554; cv=none; b=RFsjQb8Gsi3Eu4/Kt/ZxKEqJyqhTYthAn63hkNYjMOH8DiveVSXPSr/Mx5pGjFiyM7jGqtAnTZLDWRQOv7d4si0HkcBHeWsKR1fx62Ik4/eS2rOajxlmrrMMpRVgPwfvgdA3bkFkzQSTgaNnm24Yyhgcn6bzo9zcjWk5h9cSd8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732708554; c=relaxed/simple;
	bh=hdyK4B7uSvMcOHXq72ORxP5kxk2Ripa7tJkBlrs964w=;
	h=To:Subject:From:Message-Id:Date; b=Zv8FxcfiETttrI3XT5WeitMKF7mFNg62wsKo6HGegS9nLyu7F2r9Z9NsMY8/4qfFhi7zGnPrFSYqdulq+gk6jA9oPYxZ//awkVQp2H0AA9FPsLJyQPrUTHj6Ag/PRJCRpcnX7uRgjkbllQWuARyahQnLXTeI70POeOzkI3tKKbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEpCbUfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEpCbUfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43A3C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732708553;
	bh=hdyK4B7uSvMcOHXq72ORxP5kxk2Ripa7tJkBlrs964w=;
	h=To:Subject:From:Date:From;
	b=EEpCbUfgfbli/2Q18ybq6n0ZjWixigp4s9PgopL0TQw439ggItItv3eL9RxmlQtss
	 kc7p3ZIKDaCEkkcBEdPgjoS6Fi5vFINyhgls7xqZ68p55OiVMGTk3qXtdrcpsRgVKK
	 igh1y8clJKUr//ETl1Y4BesZ+zil0nMGqDdQA1+7L5HMVudvqCgo9JIn2+gvJGosfc
	 4xT52OyOKzlYznP6ULgFXBVbhj1k5iv/dK6hLAI+LTaxbs6LWapKwyexoumjo8iwId
	 aF8xWP4Ho2FOH9cVIWBHGI+iYz61Y58oLMRWsX6gKeOBhj0oTRw0LOI8VN2ZUxvhgE
	 iT2/istr3HcoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1881D6ACC3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270855364.24813.1645870554167353337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79646611d0a23fe6e85102ee42d7f6ecc524b3f508a2009c43e1f28b6c3701cf
Date: Wed, 27 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732708553
