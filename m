Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF973E47B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737950755; cv=none; b=cV/I6kZ+pPGg0GUKnnoz5cGDeltgao6zIl0VIWh2J78hrf7MjBmjXS58l+NFncXrTqjO4sR+3ULPIWTgWPHhGi27yLXJdULyaJlbqq9PQsFQ/eKmTW0aij4BevUp5sMbfI8a184I1dhRPOy6/3CCax/JuF2SMDc8wrTMzsIDKXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737950755; c=relaxed/simple;
	bh=j/eJb8LOnv3mRi5K1Kr4X1hGBPBbly2i+Swuhnjd4A0=;
	h=To:Subject:From:Message-Id:Date; b=mAtB/bYCryzTBzreA4/rB4NUXyNN5RRqlI+cor8gX/BUVPQeCALIuog8dDCrI2Iw898ZdHdUgdTSSoyL1lrBlFrHQaQKqTaGhN/qf99P3OdSXyASJxNvUP77htmH0C3AJghhYs9wn/XpFA+tFANdxMLN3jnq/X9iMMIGX85+IEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2R5yGwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2R5yGwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF40C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737950753;
	bh=j/eJb8LOnv3mRi5K1Kr4X1hGBPBbly2i+Swuhnjd4A0=;
	h=To:Subject:From:Date:From;
	b=t2R5yGwt76gn01QiXU9HlF7G0qQzT+EKedNGk2LijGnqsFMI2TN6tdkcRyxPUKh94
	 83lTsS7gjz3Uvnc30Yi6BljpTqB5OFaYgvUMdfeqZ+aiSTSBh0WEbEOrYf77AtEB2c
	 urGfKMAHnqV15fmbX33q8JXa4I+OySRHcBxGHCoHqw7URP6LGrB7zHD6EZPsQaDOsd
	 9UruagPhEMi6LfkGyhoRDrwaKA+AeXZxJuxJy2qfbnwkfkNgk3qxlb2bYdcm+rVG90
	 bvW5llQ87QKSzphe8hDHNc8GU6tw8csqENXM7fG290pKzzu5O4OPfIiV7r7lxm0k+i
	 cR/bfBIB+0opw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EA7C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795075359.5135.2808893028103974794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bdb97cb2a501dc1e63643fb0e8b43664529bc45d4bc0c5d38979c7491f3838
Date: Mon, 27 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737950753
