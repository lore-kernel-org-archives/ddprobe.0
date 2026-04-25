Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A0B1DF73C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777114054; cv=none; b=pdHJKkfy9tvgfDjYJcFqUg1GzrDdsGiCtozbUStGiBviuq8zZZJIJtReBTd8Tq8qWGpMAUYyUlyoqo4ni2WzR4OUMqUC6zVAMCHPMt/oPr3QYc/KmlzYfQbyXtZyqh+8IePONJOkfT5kjd9ENRzIkm0ONUlMnWD0bQX5Pj3e0Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777114054; c=relaxed/simple;
	bh=niRUyhb1mTrLMODQRXy8VQU0DqVTkvPMadabBMxMKNM=;
	h=To:Subject:From:Message-Id:Date; b=cDcQ157JHjbOYlqJZDHRYOBtPEiPUddVlX5a0XKqHJk+3mgLg0rys/J0To5GGpoMJMN+8fiDC0kr7y15WuhItDof1lkAME5Zt+6zzNCT2HlWfY6kMGXQRPXhCG8QQaCUpeTN7CMNBd1DzeLjrJu/hEUaWfnsrC/cHQNcF6SRNkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+H/nSHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+H/nSHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAF4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777114053;
	bh=niRUyhb1mTrLMODQRXy8VQU0DqVTkvPMadabBMxMKNM=;
	h=To:Subject:From:Date:From;
	b=h+H/nSHuiJzxnrJNxFq1mzcQTTIgQ6oncPQunGNTs2YCh97id4Q7Zz0BF4110CZTQ
	 lEYnKvBfJTqaGgK3tQlJ4/ktCcZPVqpkD3c1TX3wigGaiTVxNSpSefkBbsC3tXnoAZ
	 bnIMLZqmoXJCdWf+ZqKx9VTTKZVCO+hKmTVOTLbKIjmSiZ85wJY8S0J413c7pkLG7E
	 inIEB1lZHMRqkGYUr1XfLgeGWf+Go0mWB4zKxIrT3qzA4aKJmobsp4Ap0+/b6moDrK
	 vK63CYJYh11M0BuuJwgPu8oA8iYW2KtvX1fNIlIC1cKNgQHRNcx3j6L4Vday9rFrmd
	 nIEU8ltA+Mjpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0DAFF885D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711405368.6290.8199346399143419575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1219accab1581c04bce87e1dff7d356ea2b85ec0ad44068025a14d7c3680e526
Date: Sat, 25 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777114053
