Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E8C1DFE12
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749113995; cv=none; b=MlqboFbwKkoGRvDYhWfscvq8u7kQw7y9NSZKnNKXjsWJe3ih9JTddniTC4mR8pZcPKC9gNEAt6HARjobVTQACXVjhyukokoThg6g5MdxU5TqEc/OOsa3ZV1c3ZeLmw9adW/voRmVyh5LAuGBgLbX3QjYEEjKQpEOR879Rg6GsKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749113995; c=relaxed/simple;
	bh=XqLx3wWY154r8EmOThX14FSzegRtK8eoqePmtUpiKoE=;
	h=To:Subject:From:Message-Id:Date; b=DhWwdspNjych7yapYch8nkBXH0Pkv1LEDEu8N24WKALSyfezj0cLrzFSYdLAUplIfQkkzlDn9+KUjILa6XmL/rqSCog4qydjFJwWk7YeXCodXY0w5Om+2UfBQ+vad1yt5wVimf7ti5gglb9Mz1PU4cB0dPLO3UipDdo54R7ZlVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zgencgt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zgencgt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38B6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749113993;
	bh=XqLx3wWY154r8EmOThX14FSzegRtK8eoqePmtUpiKoE=;
	h=To:Subject:From:Date:From;
	b=Zgencgt74hWX/cGTAMsc2YdohTQXJ3eMO95YGcvmL4fVZFe+kd6Iei8RWPN9KTD4J
	 B/SJ4R4GriA050ezjSEwumtFZtgR8BLSc9NTjDng5Gj6mRluNQorSG7XEag/eCIGiM
	 zaAAM4jst54SF8rmUqSGiwPTMz1yctbpf3tKjFC56ER5uA7olunThgiIqEk7Wff4hV
	 4kW6KVNtnCnaXsWcISowpOlXJ2ds1z+jWh/X+Rxn1tasKkJr19VkcgycKhR5IWjwO6
	 hHidYP6sd5Ipc7NDQDsi78ChB5X6qrGXe3JMwD9XwW68URohNc4DJyXCYmIDqWlVan
	 1pbTHrd8vSboQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD23C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911399362.7363.15769987583846157464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd10dd8d5e6cfc3fe5ca73eed656d91438e33243893938daeaa679b17bb9520a
Date: Thu, 05 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749113993
