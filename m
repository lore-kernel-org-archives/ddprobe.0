Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB974CB28
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720121723; cv=none; b=C2SFtJF3IPzGMMTqsgXz9zFcSPVSA797NLI+U1e5To1h5ePXt1JsvKE7DZe0AUYYL/DPhKKBw8QPYe6WZH+EBit+DlJ6ekRznq5ClQuJj5Jk1ccqe4jJlvaDrnSFCs/gUdLMp/1ofiwGUrKsUahq63JD5u7uBTXUX7mn8dlNc/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720121723; c=relaxed/simple;
	bh=n4/ID7CKgBz69/wMK8HESHjeRKzxVfFbfARtzO9706I=;
	h=To:Subject:From:Message-Id:Date; b=agxOVy4bUjuFZXnQC2og+mturnNEf4eb/GExRgbt1AcmcI/9HHC+4jwqSuIS+x5vwul6ei6YatV1hprdK/6O1VMNwk6xq/oR0SRe8aP+x7kVrrBVBHv0/m2IzylCp8UFQ1FdVKViIF8w9+Jt5UgJdKBHHk+Zuis2+jByeg90XIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/bZbrPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/bZbrPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CA0C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720121722;
	bh=n4/ID7CKgBz69/wMK8HESHjeRKzxVfFbfARtzO9706I=;
	h=To:Subject:From:Date:From;
	b=f/bZbrPKKTlB88C54M2L2n2061Z0zL+s986x3TZwpi5GzRve6PlQFohlcNLtUbGuS
	 eoKrmka8b0Vl/2VoKHURub2nz1tTRuR+qhfmheYqzS8E9L3P+TU61h/wmYU+cOZozS
	 k2T/vIlZ8u1/hM7DBmQoqztNCL40plzq1fo6Aq34THQfe231eJcxWbV049ANLxgqMm
	 2vk75TGC4igHEs40BanZTPrRWOcjc0WR6h9XjVtnHPYzz/ybuXizk2Fxn1bd1BW9Jf
	 v9j+aKZDvfTeUwVm0lpM8cz2YNPZ4Pe0laplFHs+2UWaKjAw3Qpof+I0cL00x0Em6p
	 qAOq1Ccqd7ZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1655C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012172276.11620.17085303366469611635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4825739610259c49c70874c65037a6dbd25e500ab0f07d5841c48ed9892f14
Date: Thu, 04 Jul 2024 19:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720121722
