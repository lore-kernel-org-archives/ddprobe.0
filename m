Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EE6299AAA
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762961994; cv=none; b=N+VnXl/EoZVaTQN8ifJx42El4R/yxwKbxG5xLebvmNx5XFCCPBPhQVSbxguZHVCHpfMlDoQfYyDZiXukwtvtTdTkMC2mlUKKqVLHsCC9aEUaN0TOyySHrwtuyLAvQTKHyKM5QlKyB/qM9ieRQ02dCvghd0Ujl4EtDd/gduV/j7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762961994; c=relaxed/simple;
	bh=kEc7q852BBIwjPklIrQFaYax2bdu3bPPxASQ4pcuC2Y=;
	h=To:Subject:From:Message-Id:Date; b=fSarVNNZZx2j7ykCW82jdcq0Uc+WdHDuI9Z4Lh6JC/YGgGX+IHmo+FgJihCBeCA44WjuB9lQ+KhioUMLMV+uAdciW025wbe3TQuRmDdvV0r9w2O96MsSxEbe2utoca67ktOOg4dWIVEzGcH2aa8qFQrfqadvl62SGlRuQ9GzsOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShNn5qe/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShNn5qe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3FEC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762961993;
	bh=kEc7q852BBIwjPklIrQFaYax2bdu3bPPxASQ4pcuC2Y=;
	h=To:Subject:From:Date:From;
	b=ShNn5qe/LVyA1H7tPL1Jf3bX8oCPmatSjelN+3JZUlyc5FyGtZLUt7rZaLxpbgykb
	 CN3bFldTsfbGj8OdZIojjIIUSAcFgF5aXFCFvygMzlMG73DoFfKqCkz8aOwXr3b5/s
	 CRv0916c0MoVYkgUufqZTr5Z+RAkXfY8B+/ci0aVYcH62QlhLO8L/+tk/rr9N4CagT
	 muG32KlyRUDsSPk9xjF8+fDlb2LuqZELZrTC3oNxaGYUXTxpnynkfqJehlyuWlSE6k
	 q7Vaq+knix/jnDrIMvS+F18D9kLJU29BDkZ5lbXmLg65eQtyHTAcQKYbwA7l4fyD/h
	 FBytaiWlvAR3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D4CCCF9E3
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296199359.16203.7198513963980913028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2ec6a09651b5620b7732c40f031ef68cd649e00924ea87dda7919235b2fa03
Date: Wed, 12 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762961993
