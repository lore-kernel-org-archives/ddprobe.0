Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C3A258EEF
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762034394; cv=none; b=kk998/jf489n5LnPDzKLjz7ShPppHBJk29aHETqBc4o/7W2mryImK+rccjuwGXAQNAiaONtmQtscCFPo73OIQJKPDL6suDmXdl1j25LImt7f6law2UsjlvX4Q7KWdUoHqWy6uxc5rOmkatmNpAkCHQsYXN0zeDg3mypYAJEI3Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762034394; c=relaxed/simple;
	bh=Xuzl61p/3AqH958hRXU2semQF5v9e5HMVi/IByqx3Ns=;
	h=To:Subject:From:Message-Id:Date; b=Q62dIhyv4o7euK2PhS8O1PP0mLcGVUcF299WoaoSB+CnJfpkKZ4pio8jwpAqJqv6P1mQE6kl4NcHplxuDWUMrrRJPNyosTa10n71FK3x47n/pW79kKeGXYey/xOpQvBdzdfllgfztuF0WyIvJhrhGmPyXADJMtzQgE8Ji2hkQTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0doNNNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0doNNNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9765C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762034393;
	bh=Xuzl61p/3AqH958hRXU2semQF5v9e5HMVi/IByqx3Ns=;
	h=To:Subject:From:Date:From;
	b=Z0doNNNvPxPh9oAZpDnNdYxpWyt5mgbDuglkN+E4Y5tjdZeulDD8S5/f0rrh1vQ9l
	 cqbLZsNyypuV0o/3y4SVx6KWZFB2BjGwCt4S0ysJoUi2XNeAQ6h6mZDIST2T+h39j1
	 F1zuBr1OcefbmuQXe9xwWM+GQ7JBuG6nYauGOWpBcHcb9OiaVU3QjUPZwQHOHlB3wH
	 C3GzCUp9C6wWJ8GS8LMnUYFovSQ+Idfhvl1NY0oscxxrGVLd4Qtn7fcFtS8ryNAUa3
	 r3gubrGGso5sK+0SEhvlhhX/XlJmqlklcygsL/ZCun1IRPOpgJf63iChpg/McBnKI7
	 RzO9DfG2sQ1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94124CCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203439358.10314.16146948145665904656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4bda873afe7c87d9e3a8224a9b66056945eba0da9293a7ceb21787087338d9
Date: Sat, 01 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762034393
