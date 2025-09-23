Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAD526CE17
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758661194; cv=none; b=nBXjwAYnIO1OSqX5Nk6jfkW6NU79GNCgbuNXJQAsZwcAqWEddKzep+YljRjQyI7ilk85CvIGSZPUXmorevT/SZt0CEKPe4/BTVF3Dq43Bn2k6gcudYanP6QaZpgSrdJY37OZ+Z9yowIRbA814Hn4CJJ2+bZCl5WXSODbKtszmQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758661194; c=relaxed/simple;
	bh=5DkVnjJdXxlO+rBvDxF2zBxzdgsBzV7q8jIDJA9h8NE=;
	h=To:Subject:From:Message-Id:Date; b=sVCO/hp6u5xJMRi9OxrB7ApeaY25/eMdzMUu1iWDMcs3KFRpRE5gf+BdWmBnkIV+GkBgenqkpLZqfx3rYbQz+wFa0K78JY394wRSKfwWyW7Z/TOBS2x2stf08UsWSh9jKyeN9f61KyHEWKToeMfxs+ZLM/QPUEqyN3ZC00auXSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA31dTrK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA31dTrK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A278DC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758661193;
	bh=5DkVnjJdXxlO+rBvDxF2zBxzdgsBzV7q8jIDJA9h8NE=;
	h=To:Subject:From:Date:From;
	b=LA31dTrKwn/wllYDqgyNEx2sZayL+NZgTKF17qEw6fRrztlwD0C1yCtJ6sLwr9dz/
	 i+cund7vXGz2/FjsT9/tIZnYrhqlP1MS+J/IKQisIUQ6y7AAG64FYZWzMVwzXUeDPw
	 TXZDIyIz0aTHdq297UDTj3vuMf0VzqgBg7dcaghmF0x61kMSffy4raUTlPQvbPZ3QK
	 OB9i7HwiPHPv2w4Du0eQtSmOPy2gfR9wX0gW3OGwOQD5zA03ebGpsUtsPS4nqaaiyA
	 RH9/Xnrpb6R3SlaIU1QQvG2dwYmN9pbFGm7X2ARqg+r2UlM7QMdTYmWG1f+kx/zkEB
	 m/Jm6H/O3KEtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F624CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866119357.1649.1283621555619340743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abea03f6322c8cc6e0293d9100866208377ed672b68eea4356768f1cdecb3a0
Date: Tue, 23 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758661193
