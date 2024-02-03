Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC144E1D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706945297; cv=none; b=W3AcUNjfbDMmZi6FmV7pFlt8S0lj0JUVszGM3/8fJA+h4NxQqLlKER4RkpKOOMg1irvwe+dA4OyfHx88+pEGg10AvWvIsZo1FiMYXEhN8t9udCYsCC2Oxy9/v0QXsBFNZN1WooIedOtrw9h2PnKGRpu6CXHyDst2APprXMS+xXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706945297; c=relaxed/simple;
	bh=CC8GwQEva6ecCtYzQyFP1o6JWCFMANS3EjT6+Qiddf0=;
	h=To:Subject:From:Message-Id:Date; b=C51iEi9rBtqmnchBjoNvafXHZ6AJYF4cc2nBoPogJn99lcNNHU256Nx5CEdU/nn5LK+3QECCoCtJnKKst/f9jcq/NwsghuSN0kLAMRP/dbkmoeWidEkMoMCSxMSWqUGOBa4sR9q+1Q3t74lEVB5S3EEpBDM76zit3sNjjBd2JUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdpwLqmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdpwLqmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC46C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706945296;
	bh=CC8GwQEva6ecCtYzQyFP1o6JWCFMANS3EjT6+Qiddf0=;
	h=To:Subject:From:Date:From;
	b=fdpwLqmwL2yg7oeUP6PPRq59FAqOGScmldNWe3ccJf6T5Jd6SpfwiDrlbo6991AbP
	 NR0UiEPsPiL6OzjMgUEnmE43n5kQU+pHhQb7uoJ/uDp7kX4SbtjHIFsraRzYR2fE1T
	 Rw1+0QHZ1YpZ/9qPvuPB9RzWjPKs6e5oshVt+qNbVYlfEKuUs9DjT0s4ewSevJGWPj
	 G84HOeh+bKHQahb1tK7obslfoxjt18cUNsvscyrfONVo8MXe4C1RAQBFgkh7P7c7bc
	 hYy+CJuyTMlp/O9fPRKiknd4Jv8l5VeW1PgbOuXHUlNjjVvm2uXCjx8J6GGqhe1fHU
	 KH4/ivRFnRmNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AC1C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170694529638.8581.3388111296445618478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb515e628d9d91c1972aa7f5a977bab80a5852fdf0062b3e04fffd6bad34740
Date: Sat, 03 Feb 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706945296
