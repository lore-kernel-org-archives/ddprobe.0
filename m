Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158202D6E4B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764053574; cv=none; b=DReUzowv8wIhqSpYTIAofuZ7HtZbLWsojR6jy9sJSst2XkmO/4+pBYxZUNgbR+YixtBKCtaySuxf4pBwi8RQuA0lyI5G7rOgBy9Wy9OGbVQhY25PYuy0jzclpcongz5xfRCywByRlITpOHYsDRKDOEzqzKzUn6xz+nCPCBeFdEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764053574; c=relaxed/simple;
	bh=TSO4lkdK7NcRGgB+B0Leh+80h9gw8uhuxekmlKIc7oQ=;
	h=To:Subject:From:Message-Id:Date; b=aCOyxlRxQtiO79JayEnH1Hzu058/Z9JX9KkIAiXILEd3Aa2J16Nbzvn+pcO2cVUF2FZh/kMCcbq+q0y0SDa9OmBf7JObIm6fzJh+KsG2CIwqxnJ/x+CV1SPEfq4M1f5obsT/oYGp+C5TQTXbRWuQcXdbsKbpcBC/1Mwp5YbLX8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqJkwB4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqJkwB4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F502C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764053573;
	bh=TSO4lkdK7NcRGgB+B0Leh+80h9gw8uhuxekmlKIc7oQ=;
	h=To:Subject:From:Date:From;
	b=PqJkwB4NL7etyiazm9VzMLNwU8gXMq9I0Al1VYmRGMuBpDqtAbliGML4GXAv+/EjS
	 weEYDS7CC2VoCIH7zxBvrns+1To4p26W1KGVPp9C/Gl/E67JUuklF7RdYl/i7eeMR6
	 Gi4c3yEeixrKkZy5rUiEbURB0yDFdePalf/YT9EJnh5fXSRz6Ac2PYHL8jSWqfQkug
	 D/D+11oFfDjHDnJwPIZOBdbhHMIAtKQFj0whbQ+rv1TLlQEntj5B7KbZ2RGQj/T3My
	 dGarTQjyvaZLYbY86zcrYnLTnXfFjCNgYTJi0g69xRveJ5Wb5hVJWgEGmepzVWIEgR
	 wmrIaSopQaCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC9CFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405357358.2035.17415675636470283244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9bec18af6a0d6f8aa2f536fe2a2d439975a3ff2aef262f7a2dfe5570710de9
Date: Tue, 25 Nov 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764053573
