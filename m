Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8005F3A453B
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791375034; cv=none; b=nDCYgIAdz6nSMH8cnQww7OZnkYN6ipbp82jiIVhpikedWKLXyTPOLCdKY9dAlC4u+4ZK2+6u3ROuot+GeRR6YvdLjXzP4yIsxTNYxxGmPKsNFpjaROhA81kkCNFRkD6vwACWtlVYmSbCdzsyW5myRtA+A3Y1jVKsks5Q2izWb+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791375034; c=relaxed/simple;
	bh=jKo1siQl8HeKwo3NyDdI5VWyL+J3VSfkKQ6UsvYjQCQ=;
	h=To:Subject:From:Message-Id:Date; b=WLgUKQinzDvAt+hnePY7E4pwqhzQXOCIPhTDrqIRS2L2ANj0nDHgQcfBOyjqJkhg+OBQYkov6hyM5gn+KHDmRKA2gYe2iUNJsUoPEtLQv4WeZLTWUqihrDrtPwB2OiX0JxQRf5LHLlLGtGQxr9d7clpSsBcyhebnL+J61ACMgOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujrS3LbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujrS3LbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A0BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791375033;
	bh=jKo1siQl8HeKwo3NyDdI5VWyL+J3VSfkKQ6UsvYjQCQ=;
	h=To:Subject:From:Date:From;
	b=ujrS3LbGMlVGhdep0i3XzNi1oxLejvwbATrm7cKGcrpVtBhJENH2p3TuTTlsCL68z
	 3ZAG68doL+JGiW1W13+BYaAcdRKSpvSKqUvvyzUyP9h1n5ASLfHFwxbrI4HJCagX6y
	 MjsV7wl6r+J1zED2haGxw3HXgSecpftiuUveWFu5kPvEigv/Ad8V3wl6zfSXcF41C7
	 zAVz3+61LjSm2DoYldRcbVOAUy9nGiQVzUKbEC9ONvybTjEmH1xDIlewMRK8t3KKEI
	 0aU0WQMBuG2auFoyh/3o5roC9OGfnYyD5PbUHh85I8mVX6rWFuSbgJVWhEgEIxDY6w
	 4OddY86hC5+ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE292CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137503370.24155.13707628260560705636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5904c4c4e8b6d4d29e9732371aace3599d5cdd61c967db2114e856d4484f5ad0
Date: Wed, 07 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791375033
