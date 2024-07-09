Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685A61B86C2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720550783; cv=none; b=g74XwG9qd6hk1zK1r4ykAEXxHeJtu1G1ZnV14bU+nxilHT3TU3Om8CvEqL4MaCe5jq5750pUmjMnk5X+T32z+xCgcj1hJhFUQZtUx74Wd4GluJTfVC+mFH5ZaHm32A6IigFMjkfBL4az6LQW3n0pPG1vEbnJ57VWXXf2GQCdHRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720550783; c=relaxed/simple;
	bh=NUqHxj7aoxY6MlkBxz+BpAxyJ3rnsSU81HaWrFBfWp0=;
	h=To:Subject:From:Message-Id:Date; b=mCskwcms7+gG+qeIq0rn9HKWcPikQ5ofcyUtYXqyfIU46nl/LIgWbZS8ald8K547ixpYHiLSyF++ZdsSx+bXwox2GWgz2MbAylSS3lJsHhZ+4kEuBoSzF50sYo6zUNtyVuYn622lM3hydF2ckSHPy+gGRl+dfCDWJpiN7pDftvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1St7cFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1St7cFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E585EC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720550782;
	bh=NUqHxj7aoxY6MlkBxz+BpAxyJ3rnsSU81HaWrFBfWp0=;
	h=To:Subject:From:Date:From;
	b=G1St7cFE1mWmnMD2IlQ2W7uJM7H7eGsAqYzDVknhqMoIgO7/ZMOCXnpo2DB7FZIY3
	 kDEkE2RjBUuBx9RGdEj8okuBEJWCSUhY4I9s7RerPtPB2VDsPVWX4EU2gytRAColBz
	 ILEXWDNJsswssTWHhOdrYmQoSexydm7+84aa0f3zij+wT4rmfcIiyPH2s8ivSlHlP9
	 n1uBxMhI9ZeHQ/ohpdMTDgKOYl3lLHms1FSXBnQTnUyWyjTksXzKUOSg7kF/8DkoIW
	 UymWhwpBCV7hp6VEDZUraRM/LF5/iSxgRKoiiDFDDVP3lVK3wGb+JLnp700rAEuHek
	 Xs2ZbRNZL7A9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF48FC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055078282.15531.5002194465008185513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0b0050fa95170e741248dc6308067c2071d0ceb902faab462c19ff7ea07c7f
Date: Tue, 09 Jul 2024 18:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720550782
