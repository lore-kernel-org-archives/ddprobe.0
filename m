Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1663DD528
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774346094; cv=none; b=GLSkUJk+/X9wkwTyUwjLToJHqTACle7mk/WnfsQ1yEwPdp1oM4Yv9Mc7Tz/uSxlYw2RBDYGu7ikoGC6n6ZDCpnXjHBotWb0ElQxjpTdTo25ACNMcUw5BGgZC+9YfyfCLDL1OBWx+eA7ay/UprtOm4jnXgw7DxYcoq49HG/77L1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774346094; c=relaxed/simple;
	bh=BAlqZJ7QTi/FJCbgStBM8VvofoC9DhZyVl2UfNRO0aE=;
	h=To:Subject:From:Message-Id:Date; b=WU15mxxYGjqYqEGWRr4scgcF7b90zD451lc+HJmlO5Q45anGg88hHtccSMLYjlX+KQco6Alrdat0IRo/jN+KF0ZGul5aTG/eyhuN8iSyveVvG4BXmusX3HYxRIxBaPwNoLItEs5ZzSahIz/esvRT4TOzMDJ6MUAAfUhT1yNoPQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf+rMAsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf+rMAsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A512AC2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774346093;
	bh=BAlqZJ7QTi/FJCbgStBM8VvofoC9DhZyVl2UfNRO0aE=;
	h=To:Subject:From:Date:From;
	b=Cf+rMAsj6XZHnpkfIMRDntF0QD5avsuOlr9x8JXAlNhOsedYGEWELDvT6nxxXlWL6
	 xgJsCqCszIG+mh9bB+h5daGgAeFJX4/8ElVlnWmMKY+yYwDKkWUCruM11qqbvpE20o
	 4GTFeox+9KffNZZP28AY+gR5SOFvnvTXYx3k4Sq9X6+TekeBqfwpkgiOHlM4deaU1B
	 u2uMKRPl1vxxjTH30Ukukg/v2ZEXoOOVArVkPJeUXKLKFJqkiZJuvCirk5vfRxBsCe
	 Ax5KQEZn720v/MmfwblnSLnYA1FMnjdwLlNNGUoG7pwtYtp0NrAushdFHmxLqWEodd
	 TW+gMPKZWG9kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9680AE9A756
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434609360.30901.10337727170547778584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e3e6c366cd0f5f1c0f1f0bddf9f0fdc525b5e812f930505d6b011359349722
Date: Tue, 24 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774346093
