Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63ABF762FF
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716398003; cv=none; b=DEytPC4fFXKmt0Fcqd69RgWy/zHaUhivqlyprywZEMwSmI8k3R9pZ7v/r2cokhRDJET6aG7n+RjtZoSLrCmjSi0yceMEtItVotpVqaXhRwXijhHp61P8T3Pq981JC05zIhzK6y+oEf7ovC35GqMtIIYBLpxT6gQfeNKbq7OQIEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716398003; c=relaxed/simple;
	bh=xgdjP2WTBI8Ss+I/8CH9aZUvZIG6/PftzJs6XMDxnvM=;
	h=To:Subject:From:Message-Id:Date; b=fCGb0VzrdCV8vXc6wopogkISakaW0uKC3wMYuw8NPzBq22iTX7NZ6/Iqi9QPSKbzzM+B1ALLXlPnLNOm9gMr/w58ce08K21+AkcuZv5jRR32tkyorcXIZjSmwq5SYJRKHIRX9ykR12sMu4/4u9Wc/zL4ysv7xdHj23zA2hy457M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHDL+qwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHDL+qwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EF4C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716398002;
	bh=xgdjP2WTBI8Ss+I/8CH9aZUvZIG6/PftzJs6XMDxnvM=;
	h=To:Subject:From:Date:From;
	b=BHDL+qwg3R2Y9XadPiBUhxmT01/+LwFa/buaDCRRvQGI4Fjw4S4w0nJNOMfv3E5R+
	 xZOSIMjthpLM/UzhkQzn2A7J7fe4pxdNbaD8rWNV4EMx7goUwvGrQ645NJHEK8iMJD
	 llWov/DtYwXkXorvsRxvANH8uCWiv8M5fhyQjdMt7K8RDCyMX1G5wE9q1Jnv+CI3HD
	 VIr9/XeDpv+4n/aLr+2gyRfnnU89qOdjesKoXc/v8ZKdIMQpAjn7agPgvuRnY5nTaD
	 INs/tRnROPr1R5TksnUO5FU/41P8w3YLwlUssIazcpcZj1vpNVGllS0GvDCBEO3FsS
	 ybbm0tL4yG6WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEB2C25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639800275.712.11837251431195997641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b6b9b5f55b119087934e251027eea71ae0f9b8034a4277dd34a06c59e0d7a0
Date: Wed, 22 May 2024 17:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716398002
