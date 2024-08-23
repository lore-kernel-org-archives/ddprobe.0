Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351EF8F6B
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724444154; cv=none; b=InYd9Pj/BFPGY8Zxp/knxpOaAJxsyerDUUKwzuVDUmnsJ9hk08rS18A0+J4JYQoRC4xX8NZMEWY01FenlQH5sNoKxqnhu6pvfvl+BKeY3xD0M871VFd0ieWDwfagBpbn6Z7Sossl5jAgbO75isxeo0dxmODEstGUkLv7l044Jw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724444154; c=relaxed/simple;
	bh=l+s5iiejnOuSQn4vetQSm5jFgC4L5dccf5Ompmt5h08=;
	h=To:Subject:From:Message-Id:Date; b=txHkQKQ7WXt4jNCWgcp7mQgMApj+umu9SARfJo95bSEq+HIjVPm5Ws/+OTrpnvGbZ3dSvGB582kVVOZFy2tCIR0lWptLmd3ghIdF/xO10woE+SVeQUG7TkAjRjFQ/cmAAxwovbkHpLSU6mfQGE9sD9HuJVjeCDEIvT2R1golKzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uq2gHUYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uq2gHUYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB72C4AF0F
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724444153;
	bh=l+s5iiejnOuSQn4vetQSm5jFgC4L5dccf5Ompmt5h08=;
	h=To:Subject:From:Date:From;
	b=Uq2gHUYoY2FCwG+3oq5mWrq+VMYcpl6YdeByvGGYGelpoCUPf3kSmzTelDDElKMjk
	 6kxBlJxL6dz3Nuii65tOkbPu9+OmjbV6a2xtrNqjnwVOc9JiJCMdIBjUfq8VUgnDoQ
	 ETCZ/yOYhXUfR6O4Cs2j9q1atT0POq4xzmwhR41sp0EaudE//RkedlaWLeiH1+aZSB
	 0aorMQC1xok0mJnEtLXx5RzVEtS5RrxOQlICg9ZbZOcH9c5ft5gHvFbkOCLt2fA6LV
	 BHFaR6DjyB9/W7rubzeVfOeUACC54XjvZ8fhghsMkxDfKbVhZij2lc2IBTvqc83h/m
	 Ml7V1nqdi2NLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A573FC5321D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444415366.29119.9107251926667583929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b6eb57772299ec4b4eb216c6d38fca97932bfda0c2093a05aa601b2e420d27
Date: Fri, 23 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724444153
