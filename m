Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA0323BCF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771394694; cv=none; b=eNxHC9yaAYFPT9HlhaVAecdUzw8/veIqefTPxFPo5DL2kw50jNaJ3q/BxWWjrlkFbF7E93jUH7NfSY2tlN1Py5+cft2IhrTWUhqjN3lH9TrNlmvTMpVF+tdXSKGTjsePu6aSiedJjXGqr1ms/AES9jTJRhmHtQjbmQeO5OaF9xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771394694; c=relaxed/simple;
	bh=cw23wocWbmLo84mgRV8CxNFI/7/RG8rTj2qqjWBAM/U=;
	h=To:Subject:From:Message-Id:Date; b=piI+hEq8w9nhj3v81hh7DSOomHu4JABOA5mlK6PuzHQuSzIYEn0wl9c7f6ISaXWgdYgOYIN8qN+8bau2XndsiVdasRc6oEKOAr5gB6H7Z7zO4iX+hiZ16RTMF60gqnYR0WwL/uSEuOpV2yIGb6JLx2O+P0awavktMf3hr3i3ssA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNAQKZLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNAQKZLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E3C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771394693;
	bh=cw23wocWbmLo84mgRV8CxNFI/7/RG8rTj2qqjWBAM/U=;
	h=To:Subject:From:Date:From;
	b=UNAQKZLlBpUC0mEtIlhVtfDi+wsI9Oadxm/hRVPGCWSBi7sNyd5rFE6pFyDdzH7P6
	 LIpBD9tK+Bblgdx8ViDlDoZMa1DTsUBO2EU5PpnPgOh0iDHOWHzO0jVSJiI1r3rf4e
	 q8ymD+YUsTMRl339Z6k8urzle6pDOiwUBa6BM5mlfVXajdsEAsPSMczDCB4EKG9bsL
	 5hgAvhOW8aETkB8J8i1S0ufaH7b2x9kcDiyw+/afryhZGm4pDSZJBcE269GdyrOVou
	 utn79B9EFAA63sXIb6mCiYpWKeCJFL/07m+n4Yh+iPUeY3poV8rLeFxlLnUmkpOGWy
	 sBNsUqCMS+dGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DBE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139469358.20616.5150329554730082754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad944ece48f4a568511993d4e199a8412f5edb6486cab9244f018c7b315d611
Date: Wed, 18 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771394693
