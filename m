Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263B31CC897
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730402754; cv=none; b=ljGuFlim3HMLPHIXbErCkfwK09fgQVpSPWtuzk9b1Mc+YBkLNzkWs4oKvD3RKXf4TU097p93pAv7lhNfjcsU3N1tih82ZLQqX4OgPU6v3wNCg/DOMEptCK7CJ3IPkFjml0CmahyFzMMoqhddJc5EdH3Ijm/HWStQTt4a5AUOn5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730402754; c=relaxed/simple;
	bh=i1xLlAqo2higw78wJcRraCfrvwJM8pSdhVh6/ixcsEM=;
	h=To:Subject:From:Message-Id:Date; b=tASUbzs0RF7pQ6wLBPWhq4QHX+tdZCAI2TXnxjMEvAurD3I5rHxPdyJGXtKdnUmx9hdU750X4KScb9J9cv3BQfQPiFmhviSBS8N7ZzFD4NlTrKtJJv7rRsod18Cslc4lsIafZrsQp+lrP4QI4ED6/lInU3fyP3bUSgeaGdQXL2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCy+d0fS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCy+d0fS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6447C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730402753;
	bh=i1xLlAqo2higw78wJcRraCfrvwJM8pSdhVh6/ixcsEM=;
	h=To:Subject:From:Date:From;
	b=VCy+d0fStZNE7BcFNEep9ibyJ/GSBlxMZQi0hd3cbxebma69J+wm2++I4njs8g8FB
	 dQo7AH50LhozusqB6tnOuh4S80xa7AFUDtiRTNDOQFxxw2efEd5qmhKRKc2sPndLw5
	 H1ut2INYV1KzAfNPNkuvw1sAM9TtRRrlVxDN6DSfqET+o8NGsmi1DKgZqnv2FbVa8c
	 OSz0Z3nwmtmg0AX2LbHhwTFKDwr3R9C0102jxVHXk/BH3INYwqrCm5SiKaQeZ5OHj4
	 7ygXTA2eN23tvbYq6ZRiVd+cna2ixIs6ACKY0i7UnM+hxiDoeqF88ntOpGWfmoQKJe
	 gl6NWuzW/LMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E21CD767FA
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173040275363.23752.11753249474937944354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72c6b398d3c75a61470dc4d6a7b74e4bbd53d7af8b744b29e9fb8c579ef950d
Date: Thu, 31 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730402753
