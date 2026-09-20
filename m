Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6901246EF8F
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789926034; cv=none; b=T17jji+nHs5WP5CFEbdrRN4/owO6YW8IkqhwqlB7pmUYo4LTEkSnlMDONSLp8NofDUiPd0ce2Sv6i47XijxMC9vSp+NhY39vkI3KfvE/vKcp5RJQ89FQxC9Z2C7guEOOOuXYGRYp4AO0Qm3R5J9ExYtv244lIIWiUoHoKOKVjas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789926034; c=relaxed/simple;
	bh=0iAxsaFMnbXQyToLDn3hRrXjlBSoi6yKfpfZDYST7Mc=;
	h=To:Subject:From:Message-Id:Date; b=QTG6W7egos/bLBxCR0yN4wZWn5LtNc8mashkG1nZ95tg8bvagAVaGIHKTdK69sERfhkjpqN4vYXP9rnCoeX13viShb5Q+jBeY9u4qC8G+k1GlkOMqfabGSQGYsmtQMTF7kfJ25Np3fmN2H4Tc2jqWEjRPYBMzNzOe/mnnLNj20Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbzJkaw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbzJkaw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77E5C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789926033;
	bh=0iAxsaFMnbXQyToLDn3hRrXjlBSoi6yKfpfZDYST7Mc=;
	h=To:Subject:From:Date:From;
	b=bbzJkaw0INq8rm9AB5YOx8f5L9RnfC7Gl/RVBDz3fTAkKuU6KEqJMNULXGEyip6UY
	 W/wbzV+luL1XM4ad78jGX8u8oDdL9X1slyKw8M5c20LjJPAwjHj8BIjdJSO7UWmALr
	 jCBeyc2W1Uaku9ZYLa1jSI52m8FYSOWOeJyZTrsHyy0RUaDcgWxCWG2Ynp+DlBEFZF
	 8aHPV4bj3phZstis+wMa74a+Iti1dRvv5Hq437qZk9sAUpYjwkpXB0nIso4k9LaxcF
	 X0XWPdV4YlMJPzWGntpASQ+CDuxDGbt/DSc/VOEGVEatKOdg74RuIOB+F+8qUUBhLP
	 h/h40slyGeXPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4810C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992603370.31559.17659477413435739723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778ffdb3f072e50b2cc168b3c583631efedccf75cee1520e91e033d19c1647c8
Date: Sun, 20 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789926033
