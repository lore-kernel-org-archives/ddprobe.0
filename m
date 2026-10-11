Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B893B14AD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791754834; cv=none; b=SUHtVXNYjsO3SS+1MzR9mGAwA7Sm3BByK46ARg7NoNc6dfYzX0+Jb4t+s9v/9IOYDDlZwSqMOceoUWlL1v/8w0WB8Ygv4N4snUuJPlbJElB8YzOcKjucLTUurbALeF/PEkM1PO3OQAI+Dp/zTzswcxUxmC1/SYGZL0I8RnQfx6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791754834; c=relaxed/simple;
	bh=xQO9nUwTEYzSxA2BPk5iVbM88oAeaUrFmXkE0CYLOas=;
	h=To:Subject:From:Message-Id:Date; b=tATBXhMA1Zsv8iR1HOliYJt6WUPKJk8CqRUKghD3890BxCflPMerqkKUqo02Y4dhdSBnuV4OgiNDAOADO1nDumc7Q69hIcjX8j6ZJZM7o76wif+AI2Deb5JJyywTbrdX0Xsimv2FaTNRiEs+Z4uVHDGxNZcha9fqOGLhwRouG4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u98DtSmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u98DtSmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D9DC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791754833;
	bh=xQO9nUwTEYzSxA2BPk5iVbM88oAeaUrFmXkE0CYLOas=;
	h=To:Subject:From:Date:From;
	b=u98DtSmXXWKM+Yvj5f7dL18UK3vuZS9SHsKdpYA2m0n0LwW8vj5YY+liyrzcbrYj7
	 eZHxA2aKwoKudsRwXfrPVp3lLWgL4gX33nYOd9V4cZvDAMsQdQJ12ffC7bnRRc0gjO
	 3/mKrKp8jhbwq7XWhBk2MNkClEHu/97kfdx67VWjMix9hdvPMFA/n6sngXENMk5kw/
	 LDyp1UPl8c7IkMnQPAllHhIyCiPabKmTPNxwK0s1qFv30zj80NVIAOnSYBlBIjO33a
	 CHAnhOlqSw6eVhAX3rRJdiaUeAGk8WpRbDiMH+RxkY6N7oJ4glOaHX0xmPod5fqLu3
	 mgSGfl+eflDSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E14CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175483368.25629.5181709587426603783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab23e34c4b9b0cf26571e360d3195a6da087f30e1db1a854f9c2da4c690d4f94
Date: Sun, 11 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791754833
