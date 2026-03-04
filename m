Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C501D516C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772600694; cv=none; b=S+lAxuSSqh5wboootCwSMRpBOSIkVVm2dhPGTLLU5K0/J2jqLu5n89nQ6hwWOGXfOtHoDfcnXV+dKBJHXKhdTCn3VsjlzyMb2K0Om8p10aiDp2JkZ9FnPY0cXIlS0fixRpvUPwd+UxmeqnCP+bHPL5QnqwGOWA+juJru8SXT5fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772600694; c=relaxed/simple;
	bh=qDY6i8b091BFenwP+qdhF76QTQY9/wSHN9zG511oFRA=;
	h=To:Subject:From:Message-Id:Date; b=sjmvudiytcdWaSDj80SLAWroINAwY7Tj8Ew3FvX/4IBi2KqnSqrRh2yyWvrO3yDt5x4Z41fbYH1GThCRjNGx2uJkXaXPQszl1YqBrBRg3b+uIDcZFK2pLC3PXp9gTPtPXzg17lIgz4ttSc/zR+cNF+8YwPZPEeSkcyCRWJJgTLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBfvqzL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBfvqzL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B3DC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772600693;
	bh=qDY6i8b091BFenwP+qdhF76QTQY9/wSHN9zG511oFRA=;
	h=To:Subject:From:Date:From;
	b=bBfvqzL/UMsYanB3TydCvUakh0PxqPWDbXy8EDAwJBZWUEcp+TzHC6Mnd8t3WuqB5
	 7TYTd6cjerAGt3vLOnRZY63jcVoR48GPZ+qZTq5VPTUN8YptNdXbRq7XobbVaDNwf6
	 gfnUshPEy8T5edr5xC54+0fpwCFJWtlTzNk2HoOarhWF2ZuJ++yL3ohrig6F/tXKwn
	 fu7H0ar24tcj48KrkBFl0OfNkSPVSBC7GUYFFpWdS8D2BUk0i50/uPf3HppKGK8m4S
	 aJ/nRjN0hiKVurAxCqgHP2xmhBZfNBuopE8ptOt3NPKPTu1NOcM0qKsvjyJHjE5ByC
	 08SrGr+ME5gPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE2DEDEBFB
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260069366.5834.5715271788651706414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c488e591ab1465c9f7319cb0a241a2c9ab99d456147bea96199c7196786153a8
Date: Wed, 04 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772600693
