Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435072765DF
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775516134; cv=none; b=Lekx8GT8PHjjOG2ZbvS8dPpgxBl3WGC4x/QvpCLgkqybS3ofT3F/kRnhzaSRx2CDrhMYPPpf3ErXnHb6P//PGNUvjAs34qS0hTbme7jySP9bdi+RvfW61h+h04huE4Q81oy3dcp88hXxqsyC+cljMYeTy4KB/RvtRRlNWitm0z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775516134; c=relaxed/simple;
	bh=L81FnT2g1viuEfSKsC0YxwXs0ElzlpjmbNQykrknhYo=;
	h=To:Subject:From:Message-Id:Date; b=Rt33ZbzW4/GRxCzY+lNMVczwTOG6CUkhZoBbZTvaQhYqAXaKg+HFVCO3Y6IayeMi9GhwrXcR1mnEM+LVu0uS9N/0YquYcttHL7GxqBkzayWvaI8vVCoTC2eB35grF963ar6S4TEJfnEeFDbOnOnwlxv2JySecGWL2OCkBlHxsHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nkw94Tt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nkw94Tt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DADC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775516133;
	bh=L81FnT2g1viuEfSKsC0YxwXs0ElzlpjmbNQykrknhYo=;
	h=To:Subject:From:Date:From;
	b=Nkw94Tt+Owjp6QuihSo7NxwNjbCbc8QjLvjDn7kqecF6hSonAWLWuzRhTEDDmJ8Mp
	 LoJkkcFtnU1gt4JqJWFS90hjDOhR55zFEIW1Uv/k5yLDntiKfl7ulFOgtJr8Gd/qfc
	 SP6lfxzkl9ebzBRO5YRts1oIRhPvot1ADNTxunko4gnJv8uLayURPS5JPETGBHqV9k
	 cMdA5Xm/Ysg72OZL2VuGS9F23N1oyewWS/tWTexaPmEZ3+tZxIuKe1RQX1HrHnX8xk
	 8qAfCa9/GdFAUNpkl7l0jGnqJxq2UTzLajGozMrJH2iEXt8i58eKx7gTd5Tjwa/23Z
	 uIKaIRI753zeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB84DFB5175
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551613369.18815.15588060248320533751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dcd817164084567af6aba11ed0469112f48adb54e4847377ac53285c2e6391
Date: Mon, 06 Apr 2026 22:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775516133
