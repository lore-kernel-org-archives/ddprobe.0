Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F35136995
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708028897; cv=none; b=YpP40QFPEcPP01z9jv69qCtRfhB1ZFsA00jbbB2do6GUJz1wsF+WrqmCs4tJ5OY5G4cqZ40Qfzn/4Lpk47JnR6QgvvLyhQSz0cZfrIF9goa06Wk7XzW/e0RTtYNz18vn5Gs0f7wLASlSzgevmVnOfX1lMxlCmt9lRz2zhykmyaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708028897; c=relaxed/simple;
	bh=WJOPPhqIfh5RSGBFlEGSXCr0Knat2CR43HXzune6/Kw=;
	h=To:Subject:From:Message-Id:Date; b=ZDEBxv8Nb6/jnHdlwBZB3Oz78X2tjP5sQ/nelSCP3DKdxFZnEfUG27SwbPHw1z9VcG+or29jl8blsC+WBiFYM2Bv0ffIQZQ1cyII0G7RBICuuWSRKIzxa0/jupjTkct5a7kPOLDuot6+TK20eO1DkrVXv/vS1eREjILCZxJPsoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqAZPPn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqAZPPn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DB0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708028896;
	bh=WJOPPhqIfh5RSGBFlEGSXCr0Knat2CR43HXzune6/Kw=;
	h=To:Subject:From:Date:From;
	b=AqAZPPn9C2oaXyt0UVVnEXaivOO0DMwzrf0Nk2L7y4kn8MsiJ/TbtXvGXeJoj3rPa
	 i8kIYGJq/HvAw3HfGYbp44+q2NHIAy+Sy2HKN/3MFd1/ZSST/sxwkgyOikle1gWgIG
	 RmKTFDePcR2senJj1o5+ygilU3TjPJtEP1NFQ4YAo6O58DJHvc7mxUxZOc7Y4+pGSF
	 A2HRrijyuQpoNCSLnz5YfsxytZhQwpcLl4+hpH0JnlTTIw/XzMDwFpyIQXfh7sI3VY
	 j4A9iF4PJkoBP92++xhwbSS+biyrkEjRn53dNNB0o7yq6UtftpbImYrPwFui1IySXm
	 fojl8lg41QWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9FFC4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170802889638.502.10520801326042548608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0995ef0b0b7b5c0db90422cc21ca6e495813f4a8c9e9493f36a6c2ce498548
Date: Thu, 15 Feb 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708028896
