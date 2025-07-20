Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA9B7261F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753021794; cv=none; b=cCXKgd3bVuL0RsZcrQ1J0yvrcZ/8OQbZcDFExTgzBEh08oKztpYEbqGaAto43dwcag2Z5GGMYMIEJG4to6+SMNuFE0lhrgh01Zhv99Q3zQxTOpiJcXgWljs/tVp1ZN7MeBLPhKc/HzIRJSZgV99HKcMNVChwg8/m8EP7hieJTPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753021794; c=relaxed/simple;
	bh=jDjc2Xbwl9D+APvNr27rHbQozIaevEwzaYeFEpGPgTA=;
	h=To:Subject:From:Message-Id:Date; b=Dpu5ZS03CpIxZEhiYXvm68RFKvosSWFwzEX4jc9jz34cruK9ZnpQ6ECynmKvszI0FVE6PoMSnrcK7crq8LriAZ5q+E5wA+TeEXBibLX7L4BvTO23vBSB+phLhdkso/vuJB+LnrL0J3FMJ5WOey44D8qqEtijgVYSUwMS7EI/glU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftYmC1hF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftYmC1hF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7817C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753021793;
	bh=jDjc2Xbwl9D+APvNr27rHbQozIaevEwzaYeFEpGPgTA=;
	h=To:Subject:From:Date:From;
	b=ftYmC1hFBTjw2NHLF5EM8dw/r1SG2f/CEPeNfvO8a3VDo7QE0hV5EaNQxPuNn7EIx
	 jbJz9OCp3cpQJLi3z170TBtGS3w5lRZRGemnjDaxFv9nAkIYA9xtmF+abitLlxOm9N
	 5b5cEXHcrc8ISNY94kPousZBwYC0Mea3lNnsj42TSzbWe5Iem1oauePFlI9GpH4OZM
	 C5PeSNe6s5cw6XwnPOgC+9rRXv67oYOzh2GoJuhxeBN2wj3AMPzf65GXqbgG8zpv9+
	 8MFyNLoVjlyWqZmUvait9n39ekS8TEsxw7nL2sgt6B+mANRkNHJBxeHPObNN8MhLEf
	 vhoeFtyIzMJWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F2C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302179358.15058.4535337717027653783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74205f9508bc1cf17b607c1180004476a0a58fae72f89d2348f014655db63c3a
Date: Sun, 20 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753021793
