Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E5F17E
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715559143; cv=none; b=Qtq2chCFOk9lIEu202Ai+Ybhr8RCtzRVjZnRyD4SPAdnlDpkpAJkIh9KS5ao9LM5IIsr6YLqcejv3kNsuioCqVlNkDKR3AzONz0wBc0PfV/Fc91iv02W8+GE7ne6OULcDcVJr4SZf+tm93qgCsgq4MJ1ZW/Gpj2rxLlRRUVS4VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715559143; c=relaxed/simple;
	bh=A/1/k8lsTkZqOnwhugpv1N/16Nqm9WudRpmpwQ6t88I=;
	h=To:Subject:From:Message-Id:Date; b=FHPanP4RcFXNNASVlmZHv/GQdesVNF6t0CQEdM21Sd9f++gq8gTqxTt+UQBeO/ySJcOXRaihYYsexXVB00wPVKP4UD9WiJWKsAaEBPD2dHVQWu7G4cRK1XzIb0TIX8AYsRFkiartG/UWeElcws5PUmMRA3sIl/k/EMnbEX0pEiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp7S+fN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp7S+fN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDAFBC116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715559143;
	bh=A/1/k8lsTkZqOnwhugpv1N/16Nqm9WudRpmpwQ6t88I=;
	h=To:Subject:From:Date:From;
	b=Kp7S+fN3yqAQ8cg4tLnC8s5LfNLlkL3qYL04Pij9wsApIHsvsjKel5UJi3yDCFHhY
	 t/AdhMZ/zQgWbYuGdla7dg/9D0vkdWKeLr8LudRbVPB9n9jtrcxrumaZ5HiIFZD8N+
	 eawHQHcAJ3UM7p5hgk9zBgZ6RiZLYRUWmkJ3PMd82mCDOUQ9T1TF2fU9kzUjhgxW1V
	 1ppTFeucWVhjxnZtNFmKj617cCYRCuN6m6v4h44z+I7jtgtDEJFfmsFNYUmilC8Gdl
	 karJITNOGk4iHzora5KwldKEQA0Pmk/vXknRb+ymaWP5F3ga3yTz/vtqmsBXFvTdmh
	 tOo6IJ/dehqyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC922C25B4F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555914280.9168.1730031211529238045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f30e563715c5d257006a7731111fdfcfd3b87d83e141970e3656505bf3abc0a
Date: Mon, 13 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715559142
