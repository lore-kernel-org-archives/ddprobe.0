Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4130B369D70
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781069134; cv=none; b=k27djurOd32S9iaVWp6k95741BFL8q6yQPy9jD8IaY6E9vl+LXARSR91jq66Saq1eblBOLufjPC4B+nXOUduAkJ3pLEFXvC1T5mrKIgH4z1rJaq2R29bMD+4D+My6QH/qxRW4im4ISYPMmUMnOo0/k1A+XZINjGFXvAFpjLyPYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781069134; c=relaxed/simple;
	bh=i3RtKAalnHSE+RyFNZR5r+VFoUjLMfngtA23J8G8nDk=;
	h=To:Subject:From:Message-Id:Date; b=bDS1pQ09ATALxz01A/pE1tOfyOJCO09+KJxS8QGr13UtNQxMSBtsh2hBY2JO+BhHHF3yIuX0ljy7efWyMEBKeIwQ1c5lRdplnnS+19dAuDpdoQKqjwpH2VD/styB4KE8Zgg3FKe7UlgKmSc66UDVGoB8xeMda7i2wP9pCkqE0pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ddhz3pYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ddhz3pYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C8BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781069133;
	bh=i3RtKAalnHSE+RyFNZR5r+VFoUjLMfngtA23J8G8nDk=;
	h=To:Subject:From:Date:From;
	b=Ddhz3pYzrfcAGEEvJVYCvc15+o2gXhlaUkbdAsKUZBZ8vVAEiQwxbSmLLCklv4zWE
	 BwUm/CZDvtczIhGE+X6dQM+W15IHS6swGn3qdkxvlg1V8ekdcKI/ymv/eYYN2SRL8A
	 4gIo+1dxKSQnbIHcWU83wPki+7Ch4MJjUZwED/uwaW6zwPhMoyvxkGFKoeKcB845sq
	 Ft0/GNHFIuzH+rTGakc6v59ihRP/vF38e1ycfzVhyR4JZ8oUuMdna6Cpg72UVgkIeA
	 i6LhTHoKUITbe6zm7scVRRI/V7gF+7luqA9p8vduTX4TJx6OlyJ3NCf6hK1SwzpZwy
	 Dzpw38SK7dvpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB7ACD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106913368.16506.9105422964357828978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def327c755153715d6c7d95200e9980216ffd1c229d383b8340b2ced88621c7c
Date: Wed, 10 Jun 2026 05:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781069133
