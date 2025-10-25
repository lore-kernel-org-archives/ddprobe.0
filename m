Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479C11E570D
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761364794; cv=none; b=Fol9niS+ghcSkqYHXJdOSuaE4YmfET9QnWSnXEADaQB27Giap0r8qdc/MovvLCiKT351Ywdp6cix8DIjlWEBGezfGxGbOZNIH7X4gaFLNP1PXvGHy2/6PLi9R8RnvDsVf4a2WXVhM8HiOH2gO9/JwfaInlj53IxwS+msa/O+g9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761364794; c=relaxed/simple;
	bh=LNvegukWLdIvjLSWC23kEgJ6zP9CWsqhJaf93EYAikI=;
	h=To:Subject:From:Message-Id:Date; b=tQ45nFfkBsoL0CbrzTNyF5MQx5g/SY5Q3KJDDm0Z8O+83P7r9lxOjVrGLJLS1o41a8xO2XPJqo2vKWMtxn1CBARx8K+dIQnUy5UvEqxpRT0crRv2x4VQbzSq2p5CHj7O16EvxYHeY7d7E34ioxOTWdxCVFsf4PApVFySUdK8zhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vmtu3NxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vmtu3NxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE20CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761364793;
	bh=LNvegukWLdIvjLSWC23kEgJ6zP9CWsqhJaf93EYAikI=;
	h=To:Subject:From:Date:From;
	b=Vmtu3NxT92pxx7R9moZWA/ManyqYn7XRAMKnJTZ36F8cfPTI9VY4qt8I2QcVCMiCV
	 uyN7jeria84Z7biWqqRw+UEZLvji1VGRr4tdp1HoYQF4ebmL5auXtWHtoHRwzVXFNQ
	 mhH94P1wcKJpeAfdnacl2QZBvuCSWRv+zmJ7MhFKmvgEv/7m69rvtNcR9ky1yU5mCz
	 V2ouVJxmv1/qLztLxtZ6AO9cr8lEFMCtcaBkoOV6SbVz0HUrN5oaiKhu4jgvIOajyu
	 wMMo1nMS+0hPdIYv8XAqbedvWw1p9NzPilgFAOcdppGKlzV6pzE5Btpmfu6JHPcBjA
	 Vza01FnOeb1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9862DCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136479359.21467.9259442819101376288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cec4f78bbda6f31a5072c90eb859fcf4354c29f12a627696fd594e392a119de
Date: Sat, 25 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761364793
