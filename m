Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BC82E5B2A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777649254; cv=none; b=okFKd4V6EvQvbDPdvwh4Yms6syIxwjGUWeOUl62Ro9pb1e7iSVQ4FSWHjzrSaoZjYPbqvnJKAoaVnFBY2w7YtSPOkl72mhBREZp5CkwP9mokkEuTZ6H1yrunBWqc7mkfXZQk/nt15psOe535t6xvDtClWzcem+9wKAjoBuSENNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777649254; c=relaxed/simple;
	bh=PUTOg/mzQgtcBiNg0uu/9E3PgfSQy0KBr97tbCNdT/M=;
	h=To:Subject:From:Message-Id:Date; b=WScLkfnNX0XUe9pKCYEhcklwCGkIy+Efng/ot6/6mWHlYEkKnIfv3KFn5SGzJ3YxBRiKBJM+T0Lg4h/Op+YBE6iWeL/g+WtslqiVDvuJBjZFUSv1yFY43B/U2F4tSnBgtGM4nezLbSYaYAhdb2g/sPU0auAzKiArwo9uDKXMZfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFiLc9Az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFiLc9Az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF64C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777649253;
	bh=PUTOg/mzQgtcBiNg0uu/9E3PgfSQy0KBr97tbCNdT/M=;
	h=To:Subject:From:Date:From;
	b=NFiLc9Azk6XniMomYdUEaiA8byMAaPdvnLQwCcLU5nFU4cdajh+SuZJDCjoStjtCF
	 DENYto+qmydX7TlnSkxUpcWnZhU2j1nP19eBnOGr0+OSRrxH1+0LxY0eg1bhZRPE6u
	 BgBp9wKXN1gxuIxjKkAbgeZJOnLL5xxosQs0ZuwhcOjYWDeXH1IhKCEOSySttDK0MD
	 wVZDkpn8EA13BT2qrL/KNSwOfmA6tdDd+qldoatPrdVWfsApo2lOADocIi4BX8zxMx
	 EM2zJ+2dmAOU00/yOPHxSf19akC1Xs0kiIIDvCCkM7MEeAikhowP4sWYaGOGywnwC0
	 05en/5AU9jfdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D6CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764925368.12825.9938283027473861133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726a6ce17dc016b9b46cddd0d946d1ef5edb43d94c14e7c2275be3c200b25f4a
Date: Fri, 01 May 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777649253
