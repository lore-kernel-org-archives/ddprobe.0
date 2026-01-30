Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FC627703E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769775834; cv=none; b=PichP4zp07rbKDHmIrQo3ryBAsPzkhgjH4qEy8PTv/mxFnABEZOwgrFbDlthZI2VGIp/hsM2uJdZpHTuQHBxMM3MQtcRLLstmJRBB2gOvBa1TcKpk9BfdldtKMn32xQ0/8UTuaMoQ2+rJH22Wd+wxJtcQbszVf9QfZnIJP3fs44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769775834; c=relaxed/simple;
	bh=1XTYmMVgQzHKwoCZVhJAfQepEp7MDJFR/ZGfdFKnj54=;
	h=To:Subject:From:Message-Id:Date; b=N1Ik/4NGFOXyO/sWfLpsxogvYXVLD3NM9OHcMkNm5CpdeuGMAySenBkJkfMl0q5T2U+wqLdlk74/cPbrq6mNNFhYQkaPQ2Ea3ehoeB66Ldj1PT3YZ3uzM7kaICgdZOJ/9IhZdrT6Ia8A5TPkeDW8QJN5+LnVUCUHGD4fMr64Gzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUmdk9iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUmdk9iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A55C116D0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769775833;
	bh=1XTYmMVgQzHKwoCZVhJAfQepEp7MDJFR/ZGfdFKnj54=;
	h=To:Subject:From:Date:From;
	b=XUmdk9iE8TOx8zl1BVtF0G+8V/Cb6u10R0Qo/HXf/DbJHXhWxEQ7k79nqFwQ4ttxS
	 keakFWjVFZCXbQ5DmzVoyF9yNhi3sjo68HPzhVJQckx0/qhZ+IG0hgPOHonp/ODlIj
	 aJ2OAL7JEhWSdZXfItprllANbhxJcmkvoYTXNDl/QzvjTgRn8avzVXUKqMyxcVwLA0
	 UcfaL7eRA9WJGRn5yIsbjcEDoZw4KiYf8BBuAXUZf2vLz5OkoWc5IscOBolBDfrVFO
	 A1XY/mjt3WphBTGEKKaLBuT5p0bPFbVhIazcCfIrcd3x37qI1LLC4NLRpfBb2+Sk6B
	 nhmNbQA3j3T9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940CEE6BF06
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977583358.12371.3372798912070916137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e83b9677164baa2d4c16cb4ac6576b64b396b5b38c992d45fd40c1c0e37b473
Date: Fri, 30 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769775833
