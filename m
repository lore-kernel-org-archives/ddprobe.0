Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3706E15B554
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736639154; cv=none; b=iaOpbYCo9zDoerPeE/mwGNFZ5oeWybEj51l01hu2cdWLXWqsgNtIreMCU1hYd8xlxAHLN1d0IohHQ9o9HnzDCqWU8SZOtPOaLCzm3o1YVbK47VPYIGahboKLmGF/he8vE2NRP1dTygOXV6z7VVAyfu7iobKSyuC6RpqxPHbza8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736639154; c=relaxed/simple;
	bh=2LoZIk/fGI+EIe43fV98IRru85nf6RpzlvfSRvvWxkg=;
	h=To:Subject:From:Message-Id:Date; b=FQuV768paaBfKtRV/GSOWx7Ug8fA+KiknJ0n8sQDvrtzGIvn/hxVXOZFERAbZ7r97yTtTe/qhdW3eYyosoCiX3A0nZRqdANyJQ8F1BBtar+COtplg2N9nznuf5dpfX3OtXCftU2E74uT3irt4d9ILhxxW8mj/5My4a+baMTQgF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaOQczpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaOQczpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9616C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736639153;
	bh=2LoZIk/fGI+EIe43fV98IRru85nf6RpzlvfSRvvWxkg=;
	h=To:Subject:From:Date:From;
	b=aaOQczpdok2Xy7qiIr/DAIQk46/NsV5/NYhS8kAxhGlw07uvUOvClChbhxBASviRj
	 CL5qybLL9P9bimZ8IUMuh9liUYotomgXNul0OLn7a8k/CorLnL9DO/R0eM/MLYyUcs
	 0G1KnTi1rXjmswGGGe8GxSZAKCddx7l2ye1ymA0+cv+PyIs1IOVQZuoJatxce7q1h0
	 1RuOcPOAtglcY6ku37qBLIEkbPo0cqmYzXhAUezLg/7SUocanYvKkJNEN6zRMmm5LZ
	 fTRaSKBTxzyatTgwt/komQn3TGnQleiWfvVSrdEQuDPPa03D12cLriGR8n4fxMo6Wk
	 qaW7mEyp1LHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DEAE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663915359.28000.13596692013708682955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a93b77b2dc5b23d2adff96b612fa057c820f03047f5b936f1582382b29516a
Date: Sat, 11 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736639153
