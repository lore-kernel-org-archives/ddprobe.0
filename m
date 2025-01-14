Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC2C1F8EFB
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736873754; cv=none; b=DBfQm+P0QEKRaqdPqC6EtQUOseDcxdsGA/d2KvSnjnriF3PNkfkRcsHlkJbNygj7WSIo3sXzIkzt3DkTzCRYtOIFi2lMzJ8lIGd6QaBYsRcDS1yS/xynnr9LC0rUOypLTij3RUgFuKs6+Zzu6mrMdGZQW6N7JPy73XBFa7kOfvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736873754; c=relaxed/simple;
	bh=eTxTkW9U7Eon/9GTaxy/1x6hddZSbsSoyS/48IRqzaQ=;
	h=To:Subject:From:Message-Id:Date; b=Wyjm+uWux6d1EAqwUc/8vCOq/T/wTXgY3VJynV1AzKQM+fb1KT3bXNNEEhnXH+3nM5tUutomb1WrRl4wO6JYPdZpuRBcCBsVfJrqJtL9M9n2t4LqtJhMx8ratUn/hWtzQYSNhFZoHCmKfxkGIeb42kgSgvczLSucRNgaeftGEdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdMmROyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdMmROyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9D5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736873753;
	bh=eTxTkW9U7Eon/9GTaxy/1x6hddZSbsSoyS/48IRqzaQ=;
	h=To:Subject:From:Date:From;
	b=AdMmROyxoJuIhpVUayVe8MHuPe819ARh8S5uefgnAEsvCxbndUbA9r9fRZ++yuZUQ
	 AcnMijYSavAhZNdU+1jjLmfsExrbJsPWnGCWXcoH/4sTe4QbZSGJb7MzVXk2fQEacs
	 uiyyBroIN1csWZLb1Du8pcQ5BJkpot8at01NeaEdcKE9FwFsRCm8/mxwXjl0GxgpQE
	 DRecBsZc8MOH0a2rWg+UlhxQNN43Q/mTtYfbQx+ntm91+rfPEitz/cL7rewQPlfvsf
	 UgaDLZ0jfqGY/CXXEIeR30Jj1KS9+1c1x+sFQf9L/EbTVwN4kVe6jJq+Bl6kA0HYUu
	 c7DcRu3NSlR9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D1E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687375361.570.8479249734997422443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4508dab6a8f9a70a302a1ad0352884fc61a690bf8dfcf1e20e37e41328f64b47
Date: Tue, 14 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736873753
