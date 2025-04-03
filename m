Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A425290C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743702594; cv=none; b=AcBDuBNrgJcyQztnS2Jm+WD3idf8PsREDwJ8AiVNQHzxQ89QBfPusSA4EeakWZel8oHbMUFERvW4xijSiDOkEu8pk3CyqVZMRkCuJj3F+H89y0rS/furv20K1+lJGvCDqJpLDcFIcJWUXuJhxljRjw5ESsPi/RTXhItCMhUtrz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743702594; c=relaxed/simple;
	bh=C5EqVDlZsi049nnJqg9IfNJImtWQkxiPVcNiAgictxU=;
	h=To:Subject:From:Message-Id:Date; b=kWPdLTQ8BcocrBYEcxedMiFSIsTflPjMKUTK+nQusNtAea9eQeOeJKrQtxx49ee0utV9xFf7xgD4VBltTdoofLbnckyQIxcn0IMgHSwoPJiJvYOl3WvpFivj+K3eKhsRLhnycu3LwBG2yeo8mEv4ygSMzK0+JEsf3GOH5DSUsLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRaI8xQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRaI8xQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743702593;
	bh=C5EqVDlZsi049nnJqg9IfNJImtWQkxiPVcNiAgictxU=;
	h=To:Subject:From:Date:From;
	b=vRaI8xQCabQPGVoZez6BHqHynPXyprPjR1b7kBGt7avs182Z7EMnGyNmQvM0JpWVI
	 C8zK8r3czcMuRkiikRsMZnk7ja3thNYvgb3pHODO7wz6cVJN3YUf+kLAFIlW/6dp3N
	 ADGjt+k98jHmRfkPwpI5QBfo0QA/med7idqdmlgA2zWgfzra+ZBJQek9CUM5x4Ari9
	 vxFajVZ5zwTa0bqAxx7576+efsmCl3H2vCXY1uCHjMXSZ88EExOy/8eQaXxFZbwxAC
	 6lae4TPuOhV14ECSlNcQJCrw8k3nS9PY8/z8Utrnhy9vCFRhfbbyDTMG4eXV9vxNAz
	 TKERczvPJW4kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E90C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370259360.6722.13219852743305589271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62bce74d772e3c092cf33db509dab5c9577456ffc6ef633842e6538b88b84e14
Date: Thu, 03 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743702593
