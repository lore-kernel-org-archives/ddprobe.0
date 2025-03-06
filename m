Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372D61A3156
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741256937; cv=none; b=emwsw0guEmSPhaW2kyh+qrQCVYS0Fvo/aavrQVfiEYn0PpybyIM7CRDzrC3lVK65y0z4F6dpmHsX2kbLFsFgmmUDUi2lhUhtwcOGBoqYWEp+c3BqxhGCbAIvno13l+I2VHF3i6g3jp+YHyUipy7gPTykAOlhqpq3ijbFcTE68YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741256937; c=relaxed/simple;
	bh=n7V25kW9XEAdzGX5bFCR95KB4gqeV00TNoadHu6VN4c=;
	h=To:Subject:From:Message-Id:Date; b=Mw43hnKDxBZ2yjqop6AuysGLadBDcAyv8JEYPw5y5KCAtFqOnNdpzm0hi+P9hs9J0NjcRzMcXWyzM905Rq7KWq8JAOsTb146WCbKNq9+sb3LXcYAsPoLKy3wWVWEvkAdobVIDegn38EUgQbkQ1OTLdjd5SGn2mYN9hUFlu06MBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGipBqHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGipBqHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE2C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741256933;
	bh=n7V25kW9XEAdzGX5bFCR95KB4gqeV00TNoadHu6VN4c=;
	h=To:Subject:From:Date:From;
	b=qGipBqHcBKUXOuAUDmLkRVkZFRBbjBA2+27CmqJwsKBDasnNXtw/MlXYCuepNbrvi
	 B0TV0ZUA1oLi7qq5lJFszzEf50LDX22uLHRIfdH7FehL8GzXtfSMJ7Rtv2NzzT+OzO
	 3o0BmZvpEDFHXmjDDc9bkubs5icj5O9kXv4YMG+9GIqEqOrIbIFVVJ3INDEc69Vq1X
	 JMd6BUm5+gD2Jc9at+FUTpUXNP1EgFLe8go6+xbrXZg821KkqS6gkJU0wm81ygKb7t
	 qLiuY2JCvEpItJO0a9lv/sy29s0bE+q87G+uKIWY4rAy151pRAT/iuU7oBWkdKuSAJ
	 4AnNmIlNoUowQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97555C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125693360.28954.4085219499432908980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69ddb7ad2fa761f60506269858030b06023fc2a4d09e3ba354a868cdc63e568
Date: Thu, 06 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741256933
