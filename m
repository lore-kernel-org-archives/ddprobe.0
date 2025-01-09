Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283F9187849
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736460354; cv=none; b=aRDkFLTgMRE6Us1frKIVOO+8oBMrs4bBx5EaTvKzfPEOwG9gftFsAzrGGpvNAl46I6+YNL52PhwEmNuj66fnse3Tsa0B1o5xaiCSs+56M/AmJZiTR4v0wA9gH5r+JdJKHN8lKY5KPHqwgXNXY7zaNNdmYkbyUfpBTUrjpPTMCFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736460354; c=relaxed/simple;
	bh=mcFD2kgRb9tfUQ6tp7vJkRsuIRmXVwIpP9GTcRHXFhA=;
	h=To:Subject:From:Message-Id:Date; b=CDDK6ACAsaJJBm55nRvRqWq3CLfNvLMZTbT0xYfaPpOWQcRG6o69+TqSwKSXdu4N4Wx4gvSi3kZD2aVcuLaFBoIWEN6RZpn81wU9hSvB3lAAKKtbUh2raKTH4ETT/JUxomuSWWO0o5Y4mBXn8gwgkNg8obv8GPehZ+VO3P+mT2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+R3GMkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+R3GMkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACB8C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736460353;
	bh=mcFD2kgRb9tfUQ6tp7vJkRsuIRmXVwIpP9GTcRHXFhA=;
	h=To:Subject:From:Date:From;
	b=p+R3GMkOfDBwmE5+2NNS1iRgtKf2NbtR9gO0yL/GNcxrDMhzHKSnnZUxbqrO6Lxu4
	 RHPDlueBTIRdPMeTvZ/EUitQuuy4MlMTHOYVXqgbrflBYGzKdEAZV330HfFa1wvAca
	 RYrow+rs+OJTiy1bQ0+ghxYRMM0zfAJZqj4x63DquJzYla6er5v6FMNoJZwekTmF/v
	 MWi1RGZKG+ZD3ktIFR3c8wBj+x4iI/stQCu7+lHiDGsbJ8eaGSxYAJB6ZXG1D0ZK/Y
	 cLQ//8sAsde+A5Lc982wHn1qEn6Eb2SdLBZUle2zoPCtqGQtlk3pzrvSaEH+cZPjuW
	 oWCC1TPSxqWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94326E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646035358.9706.2014279657131501092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db433b957875c880cd4a4aae4800ee9310a6dade6cace6e3c604579d1500393
Date: Thu, 09 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736460353
