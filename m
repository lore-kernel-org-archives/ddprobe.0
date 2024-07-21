Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AC4DDBC
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721550354; cv=none; b=LtjqCJRdwyFzaH45y2FWOrLcFs0rJWjZ1NfOlX5xxauWP1jFWc4xQ5dd/5C73uj7iI892SyVxN7wxde5borA5qV7U63zYfluoYg14in3pl2c7UbyWYszWaAYjW1Un+6SSf7Q/mgkPIfm2S6vkWtgB1UksbP4dmELNkgK1qqavp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721550354; c=relaxed/simple;
	bh=XzylMCx4/sAzwtq5JfcNjyWhp2KIUjm20Et00Zfhbmo=;
	h=To:Subject:From:Message-Id:Date; b=nECAjU6MEifeaqq6AI5U3P7EzCZ8JwL1D1SDHRBzsZv+g9JkkM15s765Q+EugoyYIjl/cPWRbCFm8wfc1y0wwaDh2uAxI9Xs0O0jr6edZLiGkRmfa1hf8OKmwQF3pF9K0m5UgOMEo+3JQzBNRE4YxhROeBITsgpMzEW5FhQXVps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g88JrDzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g88JrDzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FC0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721550353;
	bh=XzylMCx4/sAzwtq5JfcNjyWhp2KIUjm20Et00Zfhbmo=;
	h=To:Subject:From:Date:From;
	b=g88JrDzps9h6eAIeprRHRSdHAjo6VQsg+/dfeAY7KDHRpYvSSH1yHaD6RuRraW49B
	 BqKkVz/LmtAGElBpw245kkIBFUwNBvo8H0QbqZurGKW53tDWj2SeBc0Yciu8ls05ub
	 z89X7aZworQSl0anDKZbqgruhUw9CAF/rugGLnRGRK0Mhqfu3KiS0Gl7lAslctDwxP
	 qKoj4RaTr1BFh62JvgmeTTh7ymGs+L3e3DzRpTqHuIFzRM/jHcjI8bgN9xpSpnlgGZ
	 bldBGmKz/fBDcKopzH6OM9o0a6P1gay1nHJtZqbZQgM1ogrhz21S/4r7bSibsUpsjI
	 4mSEjdGVdDDmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A5C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155035359.2071.10766789971674783355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16154e748f8675466020eb04f6b808c9bcf7f17e8577497341534b5bf239f31
Date: Sun, 21 Jul 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721550353
