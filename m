Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F60925392A
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757132994; cv=none; b=vE6U8qiORvnwKq+XxfQkBKWRF5RNuY7aemOxcOV7WZ9ut65E1ha+FXU3KJhZdo9WyaALqWBPB47/9pghRA2CCAmDPNccJsYmG9bC3jv4l379JEQ4TCicsZSLHvxnGMvwSFyOhs8QityB/26Noowe/2TIfxLY5J490xJRGWBqzLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757132994; c=relaxed/simple;
	bh=/jVz4llqK3C/xMHv1LkBmvbXWXMkgECo8jUDwCqVplE=;
	h=To:Subject:From:Message-Id:Date; b=HLLKtWwv/PRqEYeJsHzh6q759MHGIHGYMnIPy3wjUtFqV/2K9OiYVu2Gl+kR3YD4QEQVEsIvfmkzVV+RUxWqdyUZZykcYPwZOxRtz0N0oeeyCgxGaD5NX0tVfP44hiO3vK4OOYEdaVtTTS9ZhwKw5VsXqh9q/DVK24KN56DlzYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BN0kGAYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BN0kGAYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757132993;
	bh=/jVz4llqK3C/xMHv1LkBmvbXWXMkgECo8jUDwCqVplE=;
	h=To:Subject:From:Date:From;
	b=BN0kGAYt9kkw9f67+s+W/G5BWxzINwkcRLsGLJ+klLKPnjjdEKMm6UaL6/L86A4b5
	 iLUuUdZbbJpgFlrW1+z+rzSQGJb3pZZG83s9CEsKClQAUbDQkHjZmETmy9tVze9yJ1
	 g04oxPB3l/69E0Ee/ymf/WRHkhwdvj4pFXamBD/wEZH+9WXt0zj7jPB3J66BxNKamM
	 mBN/XEBVWv+/i5FKJfY/f7HnlfSaYQGeDUxITpilQly7s/UfpM4BKUFzdHFMLvTMLZ
	 +yWQzcNKtfepKDXF/XByqzIrVwXRnkFbxcg0Aon3yrsHD+ujrnixz7MUiRXarnsMxR
	 7xvyE2gKJnMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F773CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713299357.23499.7665255274375446383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1240035d4dfd536443e7e75da8434b31a1f22b387fed0fc3d443934fdff7654c
Date: Sat, 06 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757132993
