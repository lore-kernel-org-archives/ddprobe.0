Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF5B38551A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783552114; cv=none; b=lDcs9JTsamWgxBH/MCwlFCO4zENaL8cM+pL7R7Tan30Zsz67aqtpl/BBOKDME2sW6iRuoyhB5IRroihQOLxbmAEQfYjqMGgTB1VJMQWqkJV4kOFEZnPT4twDGXAQfiCngh15/7hCJFUABz5Ij+3nJGIDbkVfEgMzKVRknoUsrg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783552114; c=relaxed/simple;
	bh=g17wZfnB1D1c/k3kzfVnkchW1+eep2CeXJHE6TaUM1U=;
	h=To:Subject:From:Message-Id:Date; b=G5tQpT5HXsB1dmZYoCeDvFpCXzilXQlVx8qeGDRAkNYwotMlLroJpmz5o2F4kBt4wAiMIPYdj39qjwO8nUjb/pJftyPgvf9j4ZFAETMk2wwpYY2yzx7UoaxE7BY82HKYKj3Ea0cvDJtpzpXXM5qWXGQ1Tsm7wb6bAKh1NsE+jlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLONj7Z9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLONj7Z9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D022CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783552113;
	bh=g17wZfnB1D1c/k3kzfVnkchW1+eep2CeXJHE6TaUM1U=;
	h=To:Subject:From:Date:From;
	b=eLONj7Z9iLA4JgM7SCKYL8TWuREFavrW55tG0FtVwYcSuMAlU0PNgSpS2hVfcWEZf
	 PnL9jfqHYYVV7ao51xqHm8ZC14MBpqMUwgXYPldxD79m27ML6CUoyHcFBOuE/66DjS
	 gqXv9p+s9TWeVTsI7SNE8RV2QgubfN320KSGy0uNB1MgkXW1I2LDsvX9OLkXJ8y10m
	 YmJ8D8sjfpPvTWf789mcd1pKnNNkK/cFVl7hYodDHowDy92SU0KlCSKz0E6YGoi932
	 qJhs9Vd6T/wsQvFswLGP+NUiZnh26qr4fj06HulL0bkW/fcLJ2zy7wC/4RL6NxJ2fb
	 Hdk/kHIWH2EEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4F3C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355211368.17348.13509278453182403591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c4bbb8201acc6bd171c7ef32fe5ecca495510aeac9a788234a64b8035c58dd
Date: Wed, 08 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783552113
