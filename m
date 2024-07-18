Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7422F877
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721321754; cv=none; b=RHSYsYRMcBeac+YE8K3E2duNbrLQjCkIu9A3OWgan1Koxs1yJdCTfEZDzTob623qdnUFQjmwmnbdMcuCL5FZvvbyefb+bNMmOXrR66iIDDOsN2b3kSr2dC6OTBiLMpXEai+92b5IOjw3gTcIgoSUFjetwXBVcl5HSYSBNXohPOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721321754; c=relaxed/simple;
	bh=2/7w60hzD/banRn+MK1GocGNbXFIzYGKUqUI5hG6L2o=;
	h=To:Subject:From:Message-Id:Date; b=VgrCC/eO+/4V44ZOKMoyb8R0n7xFvxWWN420jXBWZkaEIPSh9ESdDCfzOCqXX0dIFbTu1oG0bLfb9HehtKc/Nq8uOUBan74eXiOf3KUlUcUXZPzDQJkekEcDNgpkxOqKzzi3GINlyqqeT3rsZM1OnONLOwr/AdyaqVmctCfhBA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZzU0TVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZzU0TVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B765BC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721321753;
	bh=2/7w60hzD/banRn+MK1GocGNbXFIzYGKUqUI5hG6L2o=;
	h=To:Subject:From:Date:From;
	b=jZzU0TVPelHp4kEKIe4210xU+a5uksMmPkEE9uVExmuUOtLf7jOezV/AVtVjNKK3q
	 pMTdxlVktHxrv8fJ8pdpd5FBHcd8TuoZh8bdbZ3tUCXvDC4zX/TrMaX16EdSSjs+g1
	 vBA+9VVmcIlBBGrX5i8pLqw1idukEmi4rUgvKvpefzT17fgqOWw/y4JEDXa8NnRVrp
	 IKoqfO/lEVSeKhtqIv+NDmVccFulc6D8Ufh1czL9DO1t72z/7Vv0di5v9cQZNmuxEv
	 lscchitB+8AsJRKGTqdCa4wZjnXYKwOJ9TlbOjephLcKleAhOCOisVQbCWzmSg9GME
	 MSgFWRbo5ibMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975E8C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172132175361.12684.11776171023874041162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c66f338bd8a1877dbcde35d97d258be9bfc137f44326bd1e93f3933d07141df
Date: Thu, 18 Jul 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721321753
