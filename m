Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BD3143866
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723627554; cv=none; b=He/XfeIDFffEsB5z783cK75KEmyG+OTdo/jVAf49ze5Ea562XTBQCcSRvE/gMUyg5pl2d8dBY53N1zaCvgm+ebFKutP9AQjhFnxlyrfVjxXakZp+n67Y/0t4xUmF3rASpzPyQcJoAzvAj1w2npQG01sadiuwA8Ns3OZ/A5oCaO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723627554; c=relaxed/simple;
	bh=PjphBXX/o5AoqtCPJre/WfzKNxoOWSDpNg6z+F9iV4w=;
	h=To:Subject:From:Message-Id:Date; b=nvdKKxtyrcguR/kkEtD9Ru8TRhhprWcGdqD6B/0IQFYAa7nzYZqE8rqLnIM476Bx5N9gawSRthXRM3vSmMz9x0+TMvWc7Dmec/xO651TUqQ145os2Czuzf8lPygafiItVHwuEiy9f1gTEZEo2hfbOOtcsa6BU/igzsB+QuV5Mcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr0TMaYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr0TMaYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE580C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723627553;
	bh=PjphBXX/o5AoqtCPJre/WfzKNxoOWSDpNg6z+F9iV4w=;
	h=To:Subject:From:Date:From;
	b=Zr0TMaYfjMSV280IxFAwzX6wcpZlqQFFgMpeNnSy5qG80O7hKImwDrnzUEYucpK2S
	 B01CdR54JclBKPVmhnOoOkbWX/8UolgDxYer0d5Hgxenb2PmyZUIsDYdKHs0JauDIn
	 9AYa5ZmMtzdDLabYldQC92iD94pYTSozNB6ea+qQ+0vk5DdhjDNaOhd4EYQ1WZlaTN
	 46gJyVpV/nmlfFKH2xI/FQs9QA3b4TDAat95s6ZhyKDpew3IG6510i1ioCb8fppFp/
	 3woB1RAGixD3N5G80v9HyQ6hwVGL9+jW9dNOUQp5+Jr25nNVhUchAKPtmeYAftIUjA
	 vzdkPWwsW4xYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F58BC531DC
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172362755363.30258.9809483206751340625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12009062742e6e4acacd3aff43723260fe850556fd2029cf5e2647fe2a655b25
Date: Wed, 14 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723627553
