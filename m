Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5B81E1C02
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767091434; cv=none; b=rPtAteDZKyDUd/lE5Sk1006MqqvV8ahpG5Z3UVa2Z99GYHWED5QqtfPwsC46XhRlMu+fgFsKaWf07yTRJ8UbD6GioNfzbaEOrZ7iWn6hizIdBEqKLYISwD2bMoLZbSlOgTcAvPtnnCzo366yx1OKu6zWK4J243TXSdOc6TGqjss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767091434; c=relaxed/simple;
	bh=tiho3RT9ShvOneT8QkQhNhCGiDEBdTmHIkjB06dqk/k=;
	h=To:Subject:From:Message-Id:Date; b=LNYsOByV2KsQ1h8ac2/+Rh98Kc8xJsemPCuPkA1vgpmH69G5UEJtgjksoQMeCqW2+2NJWPYReMaBlgClU2T4YnpBw1hdiTkxKYtVLbLPJaQWz5Jx273Fb8Wu71eJxGYTpBOqmuWSfutg72vhUuTTE2mC5JjSQwH6lvr/OBc0Nb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDdq7vYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDdq7vYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1020C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767091433;
	bh=tiho3RT9ShvOneT8QkQhNhCGiDEBdTmHIkjB06dqk/k=;
	h=To:Subject:From:Date:From;
	b=BDdq7vYaI+E7c8qyRe4/uc8ZqxoB5Z46gpewV2Byt/KvMNZpHecRcsH9Yuj8WBnvo
	 a1jOZQaFkKg2k9f03gddXkIHt1OAyzM297KGca0tZYS1kEtXF1MttYZAnxO8k1n/+1
	 2VIJd3VIciFMYxpxbVnrl3MIHk38V8nJuk92XQ4ktaiSS9SFWAJyHTeS/kMqkQLu6z
	 McmzXmTVLP6RHuEgJSGTqF9Y3Iq2ViuBFQirVdUBx3nmRvzuLmKvsDsjqphlcNSlcX
	 fY/FB7XD2l/pyE9DaBEK9OmK3Xa93kAaIxm8/VmPkFBiWzbLLdqz6f6GQUXLctaLJ/
	 bG67AxEqHFTEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CBE94108
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709143357.10479.553611915565823520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae4c0ba3778c0f98a254db3c16cf9d19a8c29c1530cd9feb8d690ba67837d9d
Date: Tue, 30 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767091433
