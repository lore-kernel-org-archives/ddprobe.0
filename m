Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49DF3346B6
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760636993; cv=none; b=gs70idf0fXt0yaJy5Wl8WduwxFKlnk87+ye73YlVVmTFISzdz1aaT4ZAgM4MewT2UIKyFqVqh3djLALObTOGsLC4K4QPsKlsNzHORRdmGiztfTCz36anYXnHf4yU8aRgrZhY3/+zRT7ZdMnh+VmK5+10hnxy94zdC3vIle1OHHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760636993; c=relaxed/simple;
	bh=NYaquq5Fco9uZlmNZEwcJINESZVm6998YwAOtRIUwkc=;
	h=To:Subject:From:Message-Id:Date; b=axRkuQrh8fvfk9fnVhCNXAkrOwR21JobdPf0JQHXhBDURM7ZJ/RsY79uhFFeJ1mxasVJpuMfyK6BxRQBRJrxr+Jc21qboOnfYxCnnHp25sK4THpGGeH2/1dE6GAUJZw1h6XlK85U6hPX2QBnaSk4vof3ODdxtUnWTO1EOXbobsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYBE3IAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYBE3IAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20C4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760636993;
	bh=NYaquq5Fco9uZlmNZEwcJINESZVm6998YwAOtRIUwkc=;
	h=To:Subject:From:Date:From;
	b=IYBE3IAhMc4O9h420R0HtEw8LFhMklhpKwK3xE2AdG4KjLdnm3oe82Pt2DDfWLM5F
	 Ply18jtXoNI1YNhnH13IxxPGD4Kx1ciDD2O4vnfWekMpckNSGR23AiPn37zSJnW2x0
	 TKW5eJkthxRaBcLUuBdaNTfFLqYRvBLF3uY+blIvrcoMAQBfdiA5iBG4XegCMWazH4
	 Z13UXFaH7AGQx/3lLieO4IWhJ66s8GXqtz+tAWztPnB9BP7XPLJ6e7XmDDRPsrFq7x
	 TPEVaSXwKjvMLRsnu5mU9xtwTCcopH7Eud0D2GieXZNko9CsUnB7YGadYV7e3rW+7w
	 HDzCyQom99XPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B5ACCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063699358.2594.12755807297147444259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530fedc0cea61cbb3412d09f78c58bff8fe4d00ee7e71ed3fe0d63669e6e3b1c
Date: Thu, 16 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760636993
