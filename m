Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C47D1E4BE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731185754; cv=none; b=UmaocZdYRhwSl2g0sQ64FXWv2hWLPgGJ9i5JXFBqp1GIOvKIMRX9La7rBDToVC5cyj11EU08t65g/AGndSWcpLaAWUMKzho7lOYVIjgBq11vTzY/U/8O9OSGrRS9d1jQDmZEU4jBdmoK2exBWoRVtFnRjaUIvaIAMLRNwfbQfv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731185754; c=relaxed/simple;
	bh=0bK07LoN9rHcH4oilQmvcPM58X5WotS/xw0LJRtPILo=;
	h=To:Subject:From:Message-Id:Date; b=aH1yIrAmkhagqv4p5EZkgFLoyifbVNz+DeqaGVLUISUSWIwU7hYMobUysUyX5uCL2p0hBjLIR717ZQ1r7kdZwLOilpgdiDZbw+8MCCoXDRxnKo+5ElhewtY9ZiWaqcWs/d9Nau//JSttDjA9VjrglxwH1Ptr2Y0zlh1M+vGF2rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3cPI7Wv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3cPI7Wv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A840EC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731185753;
	bh=0bK07LoN9rHcH4oilQmvcPM58X5WotS/xw0LJRtPILo=;
	h=To:Subject:From:Date:From;
	b=c3cPI7Wvwwo58Rf21B01FeyY2MMtqeHtjl6MWF7g3YSwnyYHc2dS6WEQdwoSxdcKk
	 ghcz7wkohXSsR8xTkNJgV23uZ4neb2rkmNHIYAFApoXYVZhPdeOLsYKqY+94wwp5/o
	 dchOwNm2SxfUiul+x6M9DYUcXAGEFdszXTQSiakjrqLvbGXfkc+yOi9+cnJIycpmOy
	 v7oWVxpqa8QX2vBgm7CkXgr/FdDG2O0olrmIllHGGcyvRdyFLba6AgnzQhV44s4Ifj
	 BRf1z0IgN0RjqG72movjOV6QCKIgwx/nEMDWt8s/Zpx4knv6Yk9JMWP1DzCC9vssME
	 4nAGmUyMN5+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D72D5E37F
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173118575358.1054.17816793342716072486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40083f1b241b5732e26ac3177a3fc7611069f008faf5fcc9be948add126c6c0
Date: Sat, 09 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731185753
