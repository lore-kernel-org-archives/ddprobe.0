Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4087538330B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786428634; cv=none; b=l6vlwQ5HRwpxKCz/lhyd0UqEi53RpJvcKzNhnXel4LRM8if+/h3si1IAFtlMuDq1M07CeeZpHgaGSj3ChuJHSRKwCxc1M2FIBkWgWafPHUQDpyU/QLsXoRBCdP/ySPrStaJBhAyPbC8sQkmvBHKKy/XfDEmcC5jhguzhocBQH5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786428634; c=relaxed/simple;
	bh=/5rrbRAo+7986DRikwO9fRjfiCNYpKpJUgyjFP4JG9E=;
	h=To:Subject:From:Message-Id:Date; b=a6kPGapaMp/RxzN5cPGNc85+U4i0w9k7aw5iTpcsokQcCA8452NaTTPuGY6DckhzcRZxq3t5qebJEb/KL4AaYkH9SV0P46O9L8LJAW9MjCYArIERpWIj5KAI4aQde0uWJdwQNF7Q46JaB2cx43X9r6RMbnJXAPxfcB5Ek+nj4Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM8SMq8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM8SMq8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8DEC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786428633;
	bh=/5rrbRAo+7986DRikwO9fRjfiCNYpKpJUgyjFP4JG9E=;
	h=To:Subject:From:Date:From;
	b=dM8SMq8qKnDYigwIn+pjUWBej/yY0ZBZHDXdezRealZibHx5d0kcMzZ4eJztnRKrB
	 Pey9s+mJkoMcdzTRgbb44YixAxRK4g8wo/Ik/k603dF3M8an2TDftGOBN7vBDmyd8J
	 eS1g4hbC6MvkmSIgWHUXWM3ltAnBqLgDWxHSEJtUAnPKQLMnqKimCc9rWmlTlsQ3vG
	 FR248Nqs5cDyN+qOk5ZQKm+TAXZslC0an4qqBEg0SzIYmSyCQgi7uho5UjRd+wEAER
	 EMGVkxKzULM7lCzFkZTa4jax6/fO3aOZSoS8G0e9XOt04qx/Ps47iWU4nYtY50y9jY
	 WAPeqEPvhMelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAD8C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642863369.7257.2228500796179495221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd42da77125724fabe5f53a2a5ba64362561d3493dc092df21f935085d14595
Date: Tue, 11 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786428633
