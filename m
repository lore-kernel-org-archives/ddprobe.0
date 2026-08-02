Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAF83BADB2
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785682834; cv=none; b=MJvxPMzeBBunCqyC0faf37Xn1BjY5ReJk0HXsIW7qBv4MJ1jtBLUMYM2m8rhN+vaukxh7Kp1XAJ9e2EmFCQ2uFuLT6rLMJ9IWlsagLPE7XGLu2SPnInfpMF+cAiEeu4W7PoUYrvGvXgAaBFsfpBa5vCLrSi2ikIJC10ctap/ET4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785682834; c=relaxed/simple;
	bh=MV0G3GrG7nm+AmIopnQp9U3/UHnXzX147aFNmzSeViA=;
	h=To:Subject:From:Message-Id:Date; b=k6SD9MZE6E2VtkcGKZqI+u7zR4OBH5bCD7G35UkW07TVcWVgDZ0DU6b28y/rBKYkmoJj1DeX2V1jZeCWc/xGAlOS4yGLy3dJEdlMen3xz3YOve31kpV5wMitTLeNyZNWzax4Oue/pkAPlqAHzpWM32a2UZJNVGgKwRag/8SOKak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOzf/86q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOzf/86q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA68FC2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785682833;
	bh=MV0G3GrG7nm+AmIopnQp9U3/UHnXzX147aFNmzSeViA=;
	h=To:Subject:From:Date:From;
	b=DOzf/86qzzYur6mB80OrZb3m9G3ogJvw7ohPGBmqUwhmwWsaAESeQFMRppT2+qon4
	 u84hcKH1qt+Hl18YcA629X6dLQmO5hgccbElC4ZjrnpGB1ygimlwl7wAVXucoe3LVw
	 0eBa09r5tt2eFZBXDSNGWStsVMWIuQ5SFb23klyqmkK819LlUC8JaGuDpCN9gP21/q
	 0LE2hC9tI/n/bP68Tv2jRGObIRa3NA5Jfr/HoxjYlCarU6YW3/0pk9TlOUZbt7H/9J
	 dsy5H4+TlhGehaJX2VVWu/z3db8FRVFrbr5Jf0FoLxIDEosrbih2wIK4RnQEKUbr/O
	 1RbobiduVCXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EF1C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568283368.4884.13802993179207092190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1df14e8f26aca869723355f9ee41ac4814cae668bd4821f3aacdb1040de7e7a
Date: Sun, 02 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785682833
