Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598A82522B4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745591994; cv=none; b=d27jfZoXu2b5PS1gsNLDAbDa/HwaRMRjmeEr4j0yT0dqRwsipiqrdotLMcOZmigq0+x6fEeT2/deM5K0l9X1Dgkvk7qMCOc9ENpsMMzdhllUcHkQeJzF13jJrchU5f2bFp4oyA0SL/9NyeaPqNYvMDdqYjX/g+w6OZSs4THznJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745591994; c=relaxed/simple;
	bh=Rqa24VPwJFfKsU3roqbmJlvIioRWZLg33HxdIZqmEBo=;
	h=To:Subject:From:Message-Id:Date; b=sT7zDy94Jg59qkyu7wAbLTtMNQLv04GGhRE4/1Uu795Q/zPpaHRrfsocbWbX2yXwNDMoSPwoJUaDbsX7Muhsh8XNgqUqxqcCAAIstlB5JbGxCNy5szdSy7Jg3zARXSlwH5D5hE14NdEe2cKFOr1YpcImMOSnMgSyKa12JOpFr4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQ6cEr+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQ6cEr+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ACEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745591993;
	bh=Rqa24VPwJFfKsU3roqbmJlvIioRWZLg33HxdIZqmEBo=;
	h=To:Subject:From:Date:From;
	b=SQ6cEr+7hKH3GPLLiTlUvX9lcSNekXBZVk6AcsHRhxTMyIt+9GRPwgGCalWxX7SKY
	 tjLBG4et9hmQ3VT24eOSsoVI/I0qOh7o5pzZTnLZHinbU+c2JZXI/9BN8lBXwH36Ha
	 drHs73RHVHDJNcPkKUROSjntKYpfQAumf4aEyE5a3mDGlZaMW0NoyiEBeTHzuUOP8F
	 +cQ+hOm45DWFs+XBH6a6iCCpieiWT/s+8BAcJCG+kXho7ktDwng1lwe/9ve1y5W06P
	 uGPu1qaGwQuLzFpNtcmeCkIwuNLb/YRwyCI9la9MP9qr9xSWYCqLg9VE87m+4IoVXo
	 ge0U2ne2BXHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D64C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559199358.4297.9181433284465551162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31caa73cfc30c6552cc5a26a5281d35b1f489500ea3776e75fb5e9de29e0b434
Date: Fri, 25 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745591993
