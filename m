Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FA2383326
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786359034; cv=none; b=tkxYqZT7qokwUHi9M8NUje1F5VD9IOnO0ODx2ozFvmVUh4SJPrpRtFoJi0RA+JrLcWnecMh44X/B8WQqcHB2Ke8JCbd7++1ggd9hhUntGjSG8PNCVwOZyFIEutUfBa5U/ZC30Pgdxj17+0HSxhZ5IM3DBOs3RuON8Z/5zMhglDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786359034; c=relaxed/simple;
	bh=sdqacw6xwJu/cUB3aSrKyqHlBrvM8Ih8dM+6944swts=;
	h=To:Subject:From:Message-Id:Date; b=EyqneE/K93W/eumFTimPCXPpAnuUmFdHL/+Dgx804oaOW7bAFi+Vw/8rX7XZJkdztu7zN8zmhcEUk30IAfdQpZBJVNIrn2djm/CbY1NNY1c5flhYCBqac1NFqKeF24pApOe9a+tPSYbnM9zsaf4Ha462NsHLUR/TDXfqIAPFOro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGMhIRtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGMhIRtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60C9C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786359033;
	bh=sdqacw6xwJu/cUB3aSrKyqHlBrvM8Ih8dM+6944swts=;
	h=To:Subject:From:Date:From;
	b=aGMhIRtQ4kD1QJMmRx+XUpN1tONft5+usrsyrx+g6ygq2sCLcunuEyTLg92WcOUhc
	 uk0Mh5lBTJcmvdpnAJYbkFrjCCQIEpgX22N5hHLznUHmkwsd1d1Y1U2AQlRfFrcZGI
	 l7sb/igN8cyaBtT1TOk7Q/uNOZTVzKHO7oiu6wQ6hnfSL1FrHt4m10TOUP/UvzT9KK
	 dUaGOJQ5DXWTfVbZr2eyUFOa7tYOpU4mGAHxSYmIXVkd9x3EKTt3OtwSkgnWfWDhMp
	 NqF7Qqsyk5+wTWXu7jCm1rz3gtrrguM4OUgm11A1XvP/SFPL6RYs26d4Tdqfos4yew
	 7lkcszGfTB+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2834C5AE5D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635903371.13083.12618678717679316931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ed5b5a0419f643101c1f1156a55b671339e896efc6fd19b0014cafe7e7853d
Date: Mon, 10 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786359033
