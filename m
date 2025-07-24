Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDC09443
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753386594; cv=none; b=C0z7vB23/bQobEvobRKQDVBAMe08K6xvmJCNYfUjBw7lrRhunU9KVIroFhTbOdHqISO62eEXPYr/9+GeYWLEprP3TpwAh8QxkZSx4hw6TNNID71UDl7UnHenjyp1FIgpw6KRgfc0rq3KK9vnDpX1e3AbEfDsZinUNOq9Ukz/Glk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753386594; c=relaxed/simple;
	bh=ZKsbaw5BUdqPJgLPAF0ykpAApIbGoNxryidEpTjNxXw=;
	h=To:Subject:From:Message-Id:Date; b=iVaKEO8ZAKAlA0D1QbTcEsmzvIv+GDyQp/FZAoeloLHzMXXRnHPWWywdlho8phZ9LLa6F4peW161V1kYm+0wrCU3pUJZ40EtiDc1bMUfRYxnGcDOGX3xlBr3rEn65rO71gJOzp9Y8HDu6u6qQfT5sVuJdqL1hVA5OYVwLKIdB/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrUaOEv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrUaOEv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A017DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753386593;
	bh=ZKsbaw5BUdqPJgLPAF0ykpAApIbGoNxryidEpTjNxXw=;
	h=To:Subject:From:Date:From;
	b=mrUaOEv2xLvdCflWfwThWksS3rsul/ukmGHUnwSyOMVvj4VJUky6uoqxKgXBJE6f9
	 K+e23zlSGKTF0W9r7242fv9Kzf935NRNVYrsUP7UuB8BUoLxqg10fA0JRAGx6IWcvz
	 X2tvvxgOXsw9e6UNTVq1N2UbnTp86mxGCXFWpVu3t4zue5A1U5yaZnHwfCA1i9V8eP
	 D+ChhjYbW1uuCxQbWAP787ZxZ2Z0VQ9CBsMpaz2hxZaZ96DfVMa7Ih9zGkKWpBK+9s
	 L4mD9HXZwbJ3TxEI9TKS8/onmpjAihpmL9FSirgDDLoYD1/dzvhmhkrZT/4WF3K5Ru
	 heVWe5nA0lmCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CDFC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338659358.19025.4344642340121810663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18260beae1e61ab3255b09437a3331c70fc678d586a7a28035a5385a7cb2e0ab
Date: Thu, 24 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753386593
