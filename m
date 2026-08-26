Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479E13F5BEC
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787751034; cv=none; b=SD8mkk9L76RL0j1vRKLZj6WQxRGUlChiV2WDm8NiHQWahIo/3yUmL5j+gNeYagYFu6kGUf0D6j/TjIR8VzaIM1bihHnYAs8OC8DYf68VdS1DdpnmM0r815IVv9ZNdVwQq0MhAPfvKjuQrq4Qk0Tdz6UJ+LbJ1ZqR3S2+thPLOm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787751034; c=relaxed/simple;
	bh=oL+V05PDEKnH+vXlFLD7xXzpW0BAscecRmnrOWXEV+I=;
	h=To:Subject:From:Message-Id:Date; b=GfO6Qp4lMoDFvrn7LpV7efDmt2pSvA99TE2C35SXGzoTvCxLsk72oHNoPY2ZyhD0wV3ibiRVHlcXqwnu+neiWxRhvG2dq00a2PKVy18tv76R30U8psbYb7n7kpa99G9YHe1SfrPPT/RdYMYzqBRp6d3osZc4tkfYln1k228WlVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QANKrScp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QANKrScp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D238FC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787751033;
	bh=oL+V05PDEKnH+vXlFLD7xXzpW0BAscecRmnrOWXEV+I=;
	h=To:Subject:From:Date:From;
	b=QANKrScpFqaP2CkPthW562fhCIu/HOWQfakhR4SVZ3guQa3m8v+zYcax8DnWXVQjP
	 HJULKRAfYdQfZ/xbldy1rc84VNGoLw6B+zxWQEdcHdWwLPStipUeGz3t6VOgzbbE4X
	 Qo8fJ41iWNjcd/RN4tlG4TgHb9tpt+FrFZ3udkAbHivQNNRjmptsZCQAupxeYcw2Fn
	 5m9zZtXfI99O5I9RsRXKkOH0yZN6mnHMARHs3/VnUkzYlZ2ju4Q/QlHN/IDgaZTs9h
	 IlA36RDHCTSDWmKSpEcUZXufaYYK7K3zTY4D9w6UMwEC/f4loNGhPlu/LMtUXBRERr
	 4MMaBzNSOK0XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE380C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775103370.24371.2042844904300338487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7381cef3c467c569157fe4f8f8a9f002b8fa20e8eb0a6717baf708c7ac1236
Date: Wed, 26 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787751033
