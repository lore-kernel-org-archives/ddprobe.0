Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEEB1E5714
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764438774; cv=none; b=INZX1ER80W5sd3JTBMl34SJH516tMWhR26aX6gOr8aEIjxkuUYSmqLuVcc9ZDpTr/Id6EypMi+kxGNgTJVzla6PFcpSyOL2J85E7a3lJ4EoXIYshlf1IonsZPuWFmVDx9rjL22koI5YIHvVZL6keJIzpgy2tbU9OyGPX68teC1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764438774; c=relaxed/simple;
	bh=QTSR4YJFWmkzmp6QEica6uiBe0ihymBg/0apwEtf8eE=;
	h=To:Subject:From:Message-Id:Date; b=aCZN0OR4Qk1zIgncS0SwnaFe0l8Re6dq9M2yGpgqaX9lwQj8qkeerkI0M0Y3frqhIot7mf/0DqFHlcVrYtQUsQkiWj04fXoQj3rSDyyURZ9or7h8Rqw1vhAcQz3tPswRWqcEPrIK2dpo3lDge09kTlIHxvZcKjqD38GVMowIK8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cnuzgo6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cnuzgo6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC45C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764438773;
	bh=QTSR4YJFWmkzmp6QEica6uiBe0ihymBg/0apwEtf8eE=;
	h=To:Subject:From:Date:From;
	b=Cnuzgo6fZTKzq2et7+yZuO0buvYxsLt2QY6jXBq0PIa7FhIhYOp3W28CVogiCQz9Y
	 tYQzxooPIA4nNYpwm1XPPFXKcMS0TxAQYxkcBcmNZNXsTMJe0lIcMbL7os3+C7QFRL
	 3mXc5R4b6T6frhJbHnE1zHUIT2cFNw5L5Gnc5U0cDfi8Wne8SfoP6yPiJOFnzlvKDN
	 ihyuy48h9YgPq8jblz8LttBrrmV0InPA/jmoxUvghD4GEbPzsemw0ww/QVzgka7+BQ
	 SdRv/aXWWsNaqvkdCLTlmOir7spuoWmtYtACnUt0IyQ/KnRVARUyFVLxUjpc9jffnO
	 t9E6bZfeIyhew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C7AD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443877358.11226.2537202932073819112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b6d227aab754fa80a7b578fa2a93776d2136aa0404c38be6a800d6501a433b
Date: Sat, 29 Nov 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764438773
