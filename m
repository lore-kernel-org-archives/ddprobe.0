Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA4F43C04B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781610994; cv=none; b=P2wUtKYNh04CbPoaskf702f42TyoWLkYuqKK7ON/wi+TuEDJsNzZotfH5rN0m7JKvkg/3Xx1f6JqD4JMy8EWRDFxAIXn3eayNeBuDnWzBYwyC/m3/emrKoRiVnmvBW1IcagCtJteI5dmmOhX1p9YB40QlOm+zc/IKEPWBTNJq+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781610994; c=relaxed/simple;
	bh=YtEL9WH+U/+94k5HlpkNDXYfm/hRGBLVDpaqAkZfZs0=;
	h=To:Subject:From:Message-Id:Date; b=b7gRBIcUY93Pf2ffWshauPuQ1B77FK31x6gOIMkJfVx3M/uCRem1+N+SK2MFXbO/wj/NqtH4Khc4Nh4pD9hLhb/UXLHRfKx58s42gj2DK/hyUB1L0y36wO0UcxdiHfTestxrFgtt6H9QvhUHIkJ+njezuEkO5ZGp721r7aQ1Ejg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shpD7SUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shpD7SUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B80C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781610993;
	bh=YtEL9WH+U/+94k5HlpkNDXYfm/hRGBLVDpaqAkZfZs0=;
	h=To:Subject:From:Date:From;
	b=shpD7SUf7LQdjkRLveTKpvL7KcJn4avckLn1hu3xu28prw9uZMY8JPXZlUWZdkn+G
	 scQqpeg21GAl7lBIGhsTKOBTrmYYvStvBUJIXOtTjvdFofZUb3G3uUe5SIv9Y7Apy3
	 nsKyBTbfHq2q75WqB7Pv/rXalQdXu2qPMYtTWjXbHmx0zrKOeCXQTpySo20SYglnnv
	 R4bm9SsvnuCjsmbwvAbmjVLlNAVRALwxLHzHjjtz1/5gBN9ZqgDInc7LP7YXM8oFne
	 3vrlLP1mZSVeNqqKJngCSnefiZNHMxbQH8S22VuRF8gdUZNC2eNH8uekb8dat1KjNx
	 +hVy7G/Xv+Ogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE20DCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161099376.4280.17582814684817028348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3e19432a0858cc7f5ca5f7189218ae04dbda1818a35c37a12c4f489494b605
Date: Tue, 16 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781610993
