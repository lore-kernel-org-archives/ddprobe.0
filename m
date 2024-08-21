Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46915166F3D
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724238354; cv=none; b=YDYvP3X8cqU/SpTwqtt5wnT7CWL4MRlGjeztmIH1ImEOjzfpr54VmftOvvrsX0vrK0axpwLbJXPqNu3YnQtta31catAdiP1NI76T7Yiu26YxqaadbNJIWOiLwl+yPz7bgKHp0vkRbe+7k2LgZ4mK3eJmdGqVtGLSQSJz6Sg1G68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724238354; c=relaxed/simple;
	bh=vuVcvAt9jRvujINBSU0V/CGgiY0gDfUeAyJ98oGHsoM=;
	h=To:Subject:From:Message-Id:Date; b=rrlglV3c6DfOquDgdAqMiNJPDme7JLceP23OSr4F3L9ZiT18bnHXrFQ+UvKoNSkqaMFoWRvvEnodFBWRyZ9tuxTFSAwZ4AkIJgrTLpoYdmgtb28S3GIriaqnAtYl01n64NazCR9GLuZ4d/UsjddOtKC5y2aRR++ZXCqWx88fciM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR/X6E9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR/X6E9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4780C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724238353;
	bh=vuVcvAt9jRvujINBSU0V/CGgiY0gDfUeAyJ98oGHsoM=;
	h=To:Subject:From:Date:From;
	b=eR/X6E9cEeUo3d+QM46q/R2RNM8anHsMs5CeDCo4H3gQwZAcYBJdA5qvP3rz4Mb26
	 RK/JTOJVBvJqFf/E6CewQBKWtpb2H/3AJbLYTxXGSaVKQ21hV2U+uCak/DaBP5tDnU
	 1vzaeL5gJ0dF9/g1KonT2HuRi9Ww16PJHmhnTgxDx9sJ9wCUQ4ol0us/eL9dJVMSOS
	 oYACOWMMCyufVN8eNVHaqbQDODC+DKNXdpwdK9q+s1xuG6JHaa6CJEZwi/h637QHGM
	 yahIi0lq7HVnWhXu5oHf+4xfszIfRDnFaNInLjlm0HefuGGgZsmHcoPJdqVx5GK86i
	 c8erooB7NgLHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56D9C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172423835373.7937.12692538880364395998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f00d062cbb662fb5343eb99d1597d46291a0909ed14463950aa1996906db40
Date: Wed, 21 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724238353
