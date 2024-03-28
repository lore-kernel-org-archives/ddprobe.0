Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1748F139595
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711669697; cv=none; b=XuSwuOKUIQ90O1/eqQuc7Q5R6jHa6TeKlxEhaXM9YYKvj67ozjKbWAwit/gpV/HUpPOsc6KgT/dwl0geAxxxsFPV0PoyDciqhbFcrU3mTurR9Lz/GIxHPbfNh/9Tzb+F0rczkFn0SpinFp/f5tzwhOLdIkxGGSinTj7w3GXyw5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711669697; c=relaxed/simple;
	bh=/iguKZ8Koih2OkwevbzFe8+0YAyDWZfCz+RKUrcjoIA=;
	h=To:Subject:From:Message-Id:Date; b=jKnRBWvZWIy9BE6WcCUFbO1lkR0yBOWqOH5VH4BtGJex5Q8xYh1NdLvih3y4NAzh+kspMEV9IaH85uTN1muPsQYQpqfWVFryyFYlOVPWlRzzfjFpmWCHfUDH5IRLx4/7bTApLCDYpBSwZg4oYHvi+MbiBFBbIa39DdDHrx7mb+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCZFtn3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCZFtn3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 888E4C43390
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711669696;
	bh=/iguKZ8Koih2OkwevbzFe8+0YAyDWZfCz+RKUrcjoIA=;
	h=To:Subject:From:Date:From;
	b=DCZFtn3gCKQcVFnabmgFoe5kospDa2sBsKn+Jsa6b6aK8fWFf8vlLqz3tneUM1ap6
	 Fkve0WbOGhOz/TkhyFQ+Pz0SrlMBNTFz4AokiZcqrw8sFnFPWYoxVtiKNCV9b8YFra
	 T9iL+Ma1cyICqddJmTevFPtWbi0/E0nJzVq9Aqashe8S+6QqZxCFa59khaIuGtFDsW
	 0Dh7Sg0Pb7ikV4HTw0xA4dBszjeLm1SnEP7SMdNXByjymhwh5LhrA/ta+c2lgnVqTW
	 nA4ttmOk7o4GsIw0FZAzZcOhrJcmeXckfq4Z4GrHrF4Xc9jsc5HQQkuHUVIVPhTLy7
	 rlniuruiOAniA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 718C4CD128A
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171166969642.32415.7286228735927534756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67b93d2436ecb5b266a491571d11d684384ba7b5503f28481604ab4f203d586
Date: Thu, 28 Mar 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711669696
