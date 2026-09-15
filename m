Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6BA390C9E
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789465234; cv=none; b=baQpHxJBLeXaBKlNtI9L/aH7MC0bHMuhxtHmDd+IEhyixpFOaPVf3pubdyiW59W5SB6S9TExfAZgXu48UoqcHYN74W1k12B1hT1b3FrivBN5TLkJD+xzh243wbPUP/T0erPJN77thzZhRpDZwW9gK4x8GcSpkRePZM+Pj46XrjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789465234; c=relaxed/simple;
	bh=eEoCCxLAtqgKXe7+JmzVbmuIuxVa1phRV/OAS6OM3cA=;
	h=To:Subject:From:Message-Id:Date; b=VZq9p+ZD0BkpnMaPqtxFuIAlxdlbQr5GQknAf2OlnE+zwtGuDVnqc9AzdfkxJ3DzrDzHUSfAPKAVBgGhMOBZsVRBEahiApmbc5+Pd85ZSbqjd1sBZt9lWnOggSsG7JeCW1pwsQmOLvnlcl3HV67Xv/omO/jSlsWi6foPyaTITmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AE0ExlBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AE0ExlBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5AFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789465233;
	bh=eEoCCxLAtqgKXe7+JmzVbmuIuxVa1phRV/OAS6OM3cA=;
	h=To:Subject:From:Date:From;
	b=AE0ExlBNoicJxajzTNNUkQLB/OIqIJUPF9irppbfxGF+SwfOKqyCnH/UFlLefA7tQ
	 fA2mRq7ZiATwPBebWLCk9+NLhYZNvYEqre6TFDhHEByDe7tyXemaEUbh5RgOdcjdDE
	 Wztw4WlgEQb2Jf8URIututKSmCaxypbQhePSn7/oX2pbIJqaFKceDOCIepZnsYzoai
	 wkB3S1/3MTO7VoLza6qxfCzcSraNX3kxVFL4+ed/z7Y94lYF74DE8Ze6G9Xyfm9Tx3
	 3/Ad05bZir5KRcEC6zEmlxM+K1RAaIgwXzLZDxXswZNrGF3lehlz/VOLo0HRvHH4a5
	 rGDg6pi57uFqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C84C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946523368.19405.12399003322583823293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e83c1c44c256484d7baa0818ae3ebc548b838e319b5481d1c0ac22b591afa8
Date: Tue, 15 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789465233
