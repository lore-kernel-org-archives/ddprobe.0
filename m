Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C53E28F949
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778633434; cv=none; b=OOjzaTxPqcv2re6jzA36B+yft1w9qOixYPTfMlKGDJFpWgY0xcDQGUqb/a1CdqsNwdErlRcoYakU0W6PIzKY09j6rI4KIUk7rnsRGGcULa32yKJNCa+iqfZmeXeSslhL+vg5MrPZE7/wwoJOPCvvpBidFMf9cGXsutjwR/ziLLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778633434; c=relaxed/simple;
	bh=H1atALH53/C8qWFfqBGPGz8P+7DfazOz5cNiSRb3qN8=;
	h=To:Subject:From:Message-Id:Date; b=fbQB6K0w9/hsy27ShuHlre7eA967+0uBXoRimNaJKxQf2xIStFRxsgWwARfUuQZoGsUFGpLlGfgplWb4ZgAAZhTul/tK0JBuU8AQCO4ZGVNH0Y/T1fCGdGi+7XjjIG/JpJqrZlRufk0PPTzcLcnU1PTLxYXISdPdjxJnxdN1Vy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBwS/0CL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBwS/0CL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56BBC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778633433;
	bh=H1atALH53/C8qWFfqBGPGz8P+7DfazOz5cNiSRb3qN8=;
	h=To:Subject:From:Date:From;
	b=TBwS/0CLJ+6r96Qbgeo0yicNNhAkocz500x5wM0x25OM2Q0Lm5gRCgN5undmJVMDn
	 hvBHsIhoiBq8CKkSGry9rEtsndFX88dfB5CKf46u/xfEpQ2aiii7JVwnJ6gNS5RJXN
	 8GbkjGLToV88wQvuFhyuOzpOfxDB3WnjgwjwpORsTPKiQylqAFLnWikAi5u/2dOXc0
	 qwgIm85eY/z6liewAa5+GgPRnf3FtcQbrKPslt5ktCXrLw/W1tXVnhsYG9aeOopIRd
	 YMOJojMCxHPxqi+f9wlfGR8EHBysweSpf8R0RbkSQkzeMhqsN9XufVOgaAkYmcIjRs
	 fSDjzylGsK/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECFACD343F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863343369.7446.12759236469229716228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9175f98fd4db3e38f94b0a6f5832e134e4dd4c4736884de20d3ce1cb2b2479b6
Date: Wed, 13 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778633433
