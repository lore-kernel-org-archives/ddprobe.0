Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4824A155A52
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737404754; cv=none; b=rwmR6F3v6ObZrQihgwpdmH6gRPR4rAoXrovlnC7p8FCDJEdKvMEEC3r8xpXqOQLjoG33d/N0sV5eGmjWKCIrbm9PcrNmd/CKs7P+ueAxkjs6a7CtXshZ5yCQtYmL88939g7FW3Z09I6TXcVGjvRkfhQR4jbRTPJ9VMdR6M7WDdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737404754; c=relaxed/simple;
	bh=nvk9eqCLVaD+oWi1YVUS6OtagWChtSfnh3z6LjOONqQ=;
	h=To:Subject:From:Message-Id:Date; b=ajea3q6dGYUiOegI7V3qMLr2dUOsqePjujc8/GGZTnUk3NyS6gHs5dJ6fAgsczLfhdw+J5K+7LWOlUQT40wvGMnhn4Uj76sm1CyXS90442q6k0tSbj1Q/Bm3BGlMIfs4r6Ds5XB6lXK9Pg5Gqeaf9YWeZsg1L0KbUUsO4qyFbgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9v0f8x8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9v0f8x8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF511C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737404753;
	bh=nvk9eqCLVaD+oWi1YVUS6OtagWChtSfnh3z6LjOONqQ=;
	h=To:Subject:From:Date:From;
	b=Q9v0f8x8JRSfifzTXPy8EyLMPachZ82gcLdRmzfhaa7ZvXYm9lY1ONjUk/JuSY/Hb
	 oRk35YGJAg81oHyVgyFjvfK58mv6OuXzOpIdaftQ1TsZcZ07H2r/6vUh+aKWjsKlWX
	 qqsqBuwHsnfh3OJMRbszAbA2trjoeQg7znwr70gMr0FjQpMjLomnDYd6w4Z3sCEP8F
	 0bCVF4g+aLzzSk95WJKsDNZ+54J4ruVw3a8XMkhFgdyaya1VGN94qxe5MRt3UKAWvd
	 JL6+yXpTPJPTrvyda1Q0RVcog8epmN9l6EhuDWpYi2wHA+xLX8lRMZTS64dxyQ83Y7
	 +fZrrdaeXDtVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962EBC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173740475359.19021.16971855927278649280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655efefb42b279fd4e7d79271c14f1a233c9d9d57b9155ebe55970715a75325d
Date: Mon, 20 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737404753
