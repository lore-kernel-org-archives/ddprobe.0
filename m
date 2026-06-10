Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B943A4F5F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781126194; cv=none; b=ET98brsAT3JtdHDpJvAsAYAvwTqefM9M/cyT4OAnyzURvlkbEEuHpd9aRphq9YOmnxY0PuXNJugqiqqqyqdnV4E7a6VaV2+8jJZxhTCUyKfVVHKuYoha3XX1UpnEbY+uPpSKjEAYhRxTqiU1iCaR2JoTl9GkPSgoatQzKy+IPgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781126194; c=relaxed/simple;
	bh=2aZXLLq/Nkk6lOwKhMBETSIpKZW0jaVjsUBE8daO5nc=;
	h=To:Subject:From:Message-Id:Date; b=aDF5QyFkWS+wR2P9S806oq9ebHa7TWDfK726F+Tr7zC5fvhQKHP9l5mALtyIogKqTugWVbydrZAKy/FEPBXwkOCnxUmQCW350AbWoLJ3CWGIogQTIOiOO25P0aHu+G0r6Buz+Ii0D349gZbcQZVCXYgoACkWjLoZHtTmQXgGYA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TegOg53B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TegOg53B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EA2C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781126193;
	bh=2aZXLLq/Nkk6lOwKhMBETSIpKZW0jaVjsUBE8daO5nc=;
	h=To:Subject:From:Date:From;
	b=TegOg53BAc2KPjMVxx1/ZyVF9kdrtrHwL2YyDbhedFrDZFy3ViB8nTmA9oMPmVtw0
	 yjNSO9fuIXoMlI29Oq3bmVtEi62sQWbNm3lGOOD5x74XmRLqky8Vn5c0LWjKztM/08
	 ZmsZ8tHuYSvEMWNY9sQxE5BmjN29+iAOhmWJBz2TBzTh0l7goGm8z29ROqAYuMG0gO
	 gmzYJeDZsAjWvIa3tzLHIfTfEtu/IVCFdL1gj8z73/h1/r/rSD7W4rWpKhlD2OmAqd
	 ieQ/N0cCPajGNrkfc16eSwqvKc4ZLHT5Ls1hH9LtFZAv1lvn1SKxIyjd0XAubViiDl
	 wnW0oXh5DpQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6172CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112619373.6646.3909049759916655203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd195c96719c57928ec402ceb27eadeafd4152f39891d3e55e11275c5cbb930e
Date: Wed, 10 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781126193
