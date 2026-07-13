Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FEF350298
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783982314; cv=none; b=HuKrH7brCElaAk7n1PVn+hbv03TvuqEbHS/L3snHk7pD8arAruCMxXL0vdJJYgamytkVShR9SWthTSiWn6vS1ZKKNQAEB447ROdVS8J9IBKeIM914+pQA5S0rXPuzf0leUFBQkK5zFuFLIPa2Xokpt3l0ZjK+wwER1yyAztgrN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783982314; c=relaxed/simple;
	bh=okOhZiHwh0DXxV6/diECCBwaBaUAHoLeRyZN0fR8hwY=;
	h=To:Subject:From:Message-Id:Date; b=aBeKgXCxjGtJZ28Y6qZ5xQhJu+8f5JwQouZaqLbunuTIzfBvEuRObnvGPLBUR0VW7kR5rRGWi4QBpGMtWBlj8p22I88LVjs0lvoODrHFqyXycVYFYrxHiU+HXbq2AVnJLL9DaptGCG+ImJ1vkYyvjQJfN7cJT6KNY/plI6dkACk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIeOq+F/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIeOq+F/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB67CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783982313;
	bh=okOhZiHwh0DXxV6/diECCBwaBaUAHoLeRyZN0fR8hwY=;
	h=To:Subject:From:Date:From;
	b=qIeOq+F/HgJpSLRReRQOCGvbPIVrbHH6I2/H1hbJ8AiVKk8PCaxOhFc6U5JdoYSNU
	 SdR0DkkL2utM2HJtk/VANWnSwKmrgb25Nkfijlioi5wSE5xXINgrU1VfU5UCMvUA2z
	 uZJZBkgwuKA8Ry6/hNPf8m7EiLXo7f1k/5FhucxyUyHBxjgw0TIKqsnpdZeRb2LRvv
	 5w5AliDm/0FMyOsZ1A/rKk6obe6DeQhboaPcm7dwumHFJ6cPPe8uzjzl/6aMlwTkl8
	 +jBOrqYUaH9Q+tnyzXGuhoYnVQ9webyM/T4yauECx64ktOj82HMZ/eKrsQ+M1tu9id
	 Hp6cE5HDDk1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A9C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398231368.16637.16804204249554975303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1445de26def5b8eca4f905ea9fbb9e8a68605870b5b27e9cdd5d400291e1aaa0
Date: Mon, 13 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783982313
