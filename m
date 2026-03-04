Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC2C3C3BE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772645694; cv=none; b=TzSO0IDCJkKSbwd3wt2C4WA43eS04eUZJwnO+/vPIy6w54hS+56waY/XIHEZ1mMsrMNNTonF9P+svIjGP3Wjq6ZH2hbNzgW27xnZlD8JWA+RDbQmrdlQu6II28eIXIGCJX0KLqksAuA1f/5tkU5Ej1rMOrnN3WT3/aK9DwpPtQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772645694; c=relaxed/simple;
	bh=zwqNxOFSzA6n6MfS1WwN4p9/11eCmJo92o2RVPg7eUQ=;
	h=To:Subject:From:Message-Id:Date; b=YN+rjI1ub4zkThF6NBkmoawOzmZ5JGnfQg/wWS/oUk6WANomnxxuTgzuT5UmESWAYQ6Yl7Kojlsad20zGQxunU/3OyMEp1R/QVTOb8DvXaBV3/850MEs+BCcLyn4Jv/pSsIGF+S0DEmNy7kmLRw1TNdaUb5y7PVTNcvbsLkZBz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krttmmwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krttmmwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E012C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772645693;
	bh=zwqNxOFSzA6n6MfS1WwN4p9/11eCmJo92o2RVPg7eUQ=;
	h=To:Subject:From:Date:From;
	b=krttmmwJs20Eo7Q9X4G0TZIGH12ggBqsiHnzoiwD91hIz4BKI7nTCzH7dITeInYDd
	 aQC8immu0RhJ2zm3u/ZfycLZU9jnB1haWJ7lMlbn0k3SKgD8OjaLdXyU7BnFSIg+wR
	 Z67ZnLGhOWkkv+7J7DJOkrTqnJjiPIYs4SBFnvtkDZNSDM6LROgmeEN+VXqCKiLkpe
	 CUEq1nvTX7xQgTQENvKTTruM5IBfLA3RceFMeLu+c/IW+497M298VSI+sJdHJBf8Q+
	 2LuLjjkE+0g6wThOZ9hPx+E8dvEaRfLRWLtPltmesuB6DJxcnOAX8tgbeAigE27gqR
	 buc77VpaCWD/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A29EFCE23
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264569358.19361.9317634454397279255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112a51433daf45bc5b33a3ea52302e011e9fe9e46da7b0fc70a662693be5779c
Date: Wed, 04 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772645693
