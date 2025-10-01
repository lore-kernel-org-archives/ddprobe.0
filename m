Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D444186E2E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759316395; cv=none; b=apCPS9lHPqcM+auBIzG7cKpJlUtE413jxz80cT9SUbK0jVz6MgWCNCEDAndv3vd8p6l/Tuc/r0nMpsrxtozemG0tPtetIew60WZETGuy3hN0Ditz2sTrKvrT98CaKZktHxAcJL+VqIsgd4MCweD26+lWIGsCg8kc+j8WoeqU4J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759316395; c=relaxed/simple;
	bh=3DjxoBDMLfAxooJ5Zmds7ctHs/V79sDF6ACky59dMW4=;
	h=To:Subject:From:Message-Id:Date; b=Axm8bSAcbIzG6aMZS8FmXcV9fzCxlAWZPil4orvjVdicQNv5csJxk27MHaq/P0k9BcHpbEaFD18LhLBcTJhjLQuSyIqunmND342LQRJ9IumeqQ1Pl25JwhrlBDolTyjbihSoIpv1KRmSmdh7cNyZdEdJ5GJ1V+qKL8sIA9W7SgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByLwyLiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByLwyLiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A030CC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759316393;
	bh=3DjxoBDMLfAxooJ5Zmds7ctHs/V79sDF6ACky59dMW4=;
	h=To:Subject:From:Date:From;
	b=ByLwyLiNkmVnZ+E3nEWjeoLdw/tjCIr0h8o5b4U4vRs/efuDqtvqgV9w7QpYDSuxt
	 n4IpSj6XMPOiEv6LWUVJpz0WwdtGc1hOAQFkDoJsZmOCpqybN0miXEXznHF58HBuWv
	 XH435CtVlO6fnxjg+tCJ6J2k5sjcL4K+gCuVtecrjs7QbKZ3oLPE7goBuhbvp86WAS
	 BD5CMhYuehGrJZruMjuPd5zZQYJtV4itMAx33UTecGN+tr824jIHyA6Um5lJ0cK+aM
	 gBS+dLoxZkKtuV8LyemNL2kDpl9OBxS62u8KbXzQsnFXGkdimP6+Dy/QsEPFLiUFVj
	 bpZ1xaRHJt/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC0CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931639357.28175.12417779245206263053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07cd110f72eb863fa068e5c132c9a3b3bc98a16ddb734ed9bb47c94f38650e99
Date: Wed, 01 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759316393
