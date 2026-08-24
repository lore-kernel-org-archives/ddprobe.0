Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB1C394785
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787571034; cv=none; b=R7utqqxIZlAD8oV4dN1rontwPcWbMySbuo/lHZTB9+XbSC8ExR/hkOc95AgKz9OmRveGdjY8PAMCstwRJtt/WAxOXCSJUpbuFtcErMiIelpsvI3iKfTQhJA0t2D/GP5s2re/d+X60JV6s8uliI/0SMWQrXFJWs3dhQ/63+qmEsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787571034; c=relaxed/simple;
	bh=KRBQRjAfz4NtU1Qp+Ttcz0YbjdBdOGd0MNC28fsHoYo=;
	h=To:Subject:From:Message-Id:Date; b=tZFSUtIkCXx7UOhiUmkjI/fs8t39o1ss8tGWw1bVgHfWKokvcvdXkM+zPyHCZXxKsOU1RQUMjYRGVL6lmDVvrsZQTNKy7hSfskyfi/NWSilJ6YN8EuDEZG/6IlNXKp3p3HdERiqCDLfVem2Ew2C3C5vE9RRQKDoFmRquGwWm0ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UglSxdhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UglSxdhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23FCC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787571033;
	bh=KRBQRjAfz4NtU1Qp+Ttcz0YbjdBdOGd0MNC28fsHoYo=;
	h=To:Subject:From:Date:From;
	b=UglSxdhsG4pqyI1NW0keUC5KesFlj2O60FJrTkj7El83iMcUFTSvm269SDPzNbJLR
	 qO6lSax6ewd+0MQcBdAecglNFx1YgBZzI5wB+7lZwkG1Oy3XqBNVFeV81zQAipFH6a
	 hCm2EwWPwCuSYfG5ZWGBUH2a/paTd8XksdOq3YRu5N28+ErfytbJwagUM7FVXwVOKF
	 547MGkHxCj3z0YtBg9NNV0XNgKHoGIwurYwAvWcj2WHeH8Q/ZaIFnWamt1Q8O0sIgQ
	 4wNOjpoIVl+8fs0mBNRswfVtQODOBACGi7CsndF6UBgAbxuKi9/0UYQP92c0mLYULT
	 0HEmLOuhUGrkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB93C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757103370.16741.4065358904193587726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad84447121993cac3b32e4bb2f927282d9286a7b3ad8795bed3a87bbc33ce7d5
Date: Mon, 24 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787571033
