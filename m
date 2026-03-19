Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110CF376483
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773934494; cv=none; b=ghCfN6G6BP6tbDjOH2EhR37Hqsbm5nBfCaWEoXRrf6aISWXNbIAztQGScNyjTbpLEsNt3O5rCzat6arfMV8ll2yPJoFBGyG8r/xwM2kuQYE/gVR+ekhXddld/lid9RoyEDSfK0pnip97Wb7AIsImMkV/pSu/7KDqvgb/wQmF3PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773934494; c=relaxed/simple;
	bh=K390m/FXZE0MtOBG8EFJuIK4UhZn6gOMiUXO1jbMvic=;
	h=To:Subject:From:Message-Id:Date; b=PjwgBlp8iGQYTboOSFX/NTgHG5Hlo3bjSbkTm+LbzQt1vwL90L4cgjwInt0L+W0tdnE2CR50Kyh3hT/D21uU7ES46bMTj601s3WWK+Kwm4N+TuqzNg5ru0b9IKNNwr6HTCKmOsgvjZLBQjZv49RYKZtjnDN0QMzKaSEmn7BK1fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERT52DUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERT52DUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3866C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773934493;
	bh=K390m/FXZE0MtOBG8EFJuIK4UhZn6gOMiUXO1jbMvic=;
	h=To:Subject:From:Date:From;
	b=ERT52DUxf5KUSwY0yMEhZi7Ew9Ew1acMi77y65JG/bLuKooWnIsxsEJeapM4fQJpm
	 LknbRyRgbHEjvsIlr93Ym5ts68ciseHdpkkSl3JTQk+fgJjdpMrlBBslelaac3wMVZ
	 3OlIblgy1RG7UuKZrxMrOXTeX+IbbsWtHkYWimnnNo4HpIJNjX7q1s2RSAwyu+Fkuy
	 vokFBgEChWp43IXoLqQUVUETYdTyyH8oF9+5fEK94TaGvU2KkM3Ai3cSBUyyd2N4s3
	 jwoYMNpKG8GIlEwAeLD8S9zSzfPjoUVYIQdeDK56qpE5SkQm/kOEyE8T7WQ6cNjd6o
	 m0F08+xlwznDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905BE109023C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393449358.9751.2715830557534483398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a988de25a6b08246b091bd954442c8534a646b9055174f9f610572233f8cc3b3
Date: Thu, 19 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773934493
