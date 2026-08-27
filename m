Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2262D949F
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787870434; cv=none; b=uW3zOPw0bBCS7gOzGOrhF4CST9HuebwH4yRYP89k7ZmtQKMDZsynTF6ss6bt7XofLM8wnw/Ry6adTDFbatuhqG8ZjCpLRNwOexO/oCVJb+BQzdUYJTpXJDm0OpJ+sMLyhcGdnnJgJdFOc4hGgz9cQe15tKfMMXlI0TLizgcnGQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787870434; c=relaxed/simple;
	bh=VmNsCq7Kyj05Zdh0zOgjqFLCWeb2qJQNC/dEqTQZhkg=;
	h=To:Subject:From:Message-Id:Date; b=JSCTMhQKG+KAHFyA8XL64F3mgegq4VE1nKXtZhYRC3vEvAT8FUbBprN5igdsRLYUp/wG7EtxxMMhHa1mTxFoGH4yBwgSUQdMtRxmvyQWEEw5nIKY8bGtNvzZe27ylZulOfvBfAeuUlTY0JXwvcZW2wjoPlURl3xI4ymsVM43eds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlK/Dlz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlK/Dlz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE917C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787870433;
	bh=VmNsCq7Kyj05Zdh0zOgjqFLCWeb2qJQNC/dEqTQZhkg=;
	h=To:Subject:From:Date:From;
	b=MlK/Dlz6c2KarRNfLeGuqrw0tMkyl1jInO06m6ZRXEb8N1SpxPdaJ6cG5BQMDxEhE
	 dHcBW+nBtfZ65452MnfJzQvr7ZUmKAhJVORmJheYXGyhfZtoomYpIzYRbUUunpr1LE
	 jYKoJK9CzyLgeaMISNKPQYsZ3YRG6Ai8xuK4+Bw16MNuMDpGth77FFbMKaxAqHLbYd
	 GkpZsQkfSpxhuKY2ZP5qQZJO1wmZV6PqXJ035AGoHZbSfCwyFNt1mPVxSL2et+2x1q
	 BoRrvfu/92hmlfchq8WdU5WT2W6mJTUQPbX/AVrA7yMujt2v/LSzq0fNRabIvS0bOX
	 VyJnAXlcvPKVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC248C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787043369.6974.10624164241958069731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c56ccf9dc5bde939df3cc499845b39182c69bcd9a7e22d634cad6a1d3afcef
Date: Thu, 27 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787870433
