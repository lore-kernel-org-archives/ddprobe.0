Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639AF20314
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718143703; cv=none; b=YwPw/8G3bb6x2czFvGksKntq86yzmeFd/O6TWYqFq7j54gcCkUfnJM+SGTSd+rI1WfMkte/o8B4oAFI006JALeavxJIIbEM5kqioS5MfpSl724Ufn+4tp/uY2bSgOlaWTQQxZQeHoTszjDtKi4+uWfNx+dMV6WqaXHbQKJe2lh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718143703; c=relaxed/simple;
	bh=uv9Y9b9svXQ8Ck6DK4E5p0gJ5uANtCLujfiJ3+7ecCs=;
	h=To:Subject:From:Message-Id:Date; b=VvE8mmzjP9/lBCqXdHnzRNSpK0j/tg35Qg4WqyX49zOtIWTScFqbktiE1eFGwNfSqsJFikyICXWOjjmjFBx4S/m1dE4PNo7Jv42Qx4LgYHQTmwLfrglJap/VlF21dv0zzS4XnJnms5WVbzTqa6xQ1xQ6iNFIdxkYfNf22lTxcxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmm3W1KB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmm3W1KB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07205C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718143703;
	bh=uv9Y9b9svXQ8Ck6DK4E5p0gJ5uANtCLujfiJ3+7ecCs=;
	h=To:Subject:From:Date:From;
	b=lmm3W1KBkkMVz6ifSk94XJJdVrmaRGigGj1We8pgyYbZxU3nV6Q1Egs9ZYfnz3xqc
	 j69BUj0Llx/9lYPd0zyJegDlqc/cuxYkjjx7JDUsuyUxTG000MabOjSEthOEXG+zcc
	 TiOWkJ3GBeCM+kus9Yo02zItjo8m/UE4NZuACKgUxoQ0QxhV7t8UYKOy4vWEnNxqhB
	 8AbvQiXJvygG2EFehklFv6Tv1c5qksRCGNu+0nduu1skxzMVO+V6Ki389KHxGzXrfJ
	 7NdQ7t/75tThyGIkMDMgS3fDwYhIupJ4Cfs8/lHmwGJnfuCEvZxoHfLobjEZYFTugH
	 4gEdpcV051U+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E09F8C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814370291.13803.2200734410336334671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6030c36b2a2a683a3895e7505264e9b1677091570e21e1b39e9b814611fed4cb
Date: Tue, 11 Jun 2024 22:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718143702
