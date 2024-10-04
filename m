Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E54E18EA8
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728006954; cv=none; b=pJBmyHP6LDbQ2V8EXh0CIUaktuoG/K0O9ddEAN+izZwvV8yeUmhIRuK5Xvgw+Bx4RrI6gJ7c6I0e9zgI/zcKYjuIQCUNqqJnQW7IyVhF6ZC3drXTdFPsAV5GrXX6sE7bDkal0goNhegvCVONj+VS/tNLCVqQKbc3yJZ1eQdlL/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728006954; c=relaxed/simple;
	bh=2RX8e07ypeyBeob3ikHVm9KzFg+eUcA6PsQ440PWkmk=;
	h=To:Subject:From:Message-Id:Date; b=c1LPkLjXvbwmlCt4JGk15iy/sufp2UxJA7/eAKkY+g4Pl9+PrpoNDsjajyFGJ6xiwjeJg63/SKvZClyuWn9eUiuXbGb6VG0T5vl5AruPI6C39zfWP7co74LmtejNX7CICO5qHFKYajBsc3tO21zNN4G8vf3BcZlJMgOebSRtVW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzfXh3z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzfXh3z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B490AC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728006953;
	bh=2RX8e07ypeyBeob3ikHVm9KzFg+eUcA6PsQ440PWkmk=;
	h=To:Subject:From:Date:From;
	b=kzfXh3z0EPFgeUQnfrqotT/Sk/Z8KwUFiYpePbxdmXfmc8glOZrfj2iDoGGvputIj
	 DDphY4cle/C1OG7qyuWRf7lrBJNRKVf2/MdxL9gVLWYqmkFFf7v3iRcMBOUALn/Lcg
	 YXC+F3yGn/PNp2iqgf7+0qe9pK7Ka9aUgjsMwi/NnSFyqaIQKaxO031LR0YZ11J7zQ
	 THqEdOpBbRkD0rQZIR03/XF9rBCMs7fAIFzRvrK1EK+p5Vti0IlrtP4J2ysGThbPWt
	 G9qd49HxVF/p6iK+iufaUpp3yn7OSuRHEZYFQkSvwCBPvcTSKl8l/4064Q3FBPhkNa
	 vc+Y1MXxAEP1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EE8CF34DC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800695362.11057.6641642628832508553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ba803e2602547ab9e49e009505ef45603e7df088a522ef9d065d05d03922fe
Date: Fri, 04 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728006953
