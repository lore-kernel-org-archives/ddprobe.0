Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200EF1D5151
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770640434; cv=none; b=qA86jLrM4rcuTH/R5bU2PEuD2l3qLlPEAzcQv2o0MEd8nxv1iHndBcRXehjywCKtX4mgqzKIWKIufiS8S1Wi/H7UccD2PhByC+l3A+67erQQLGQ0cIZ8Oqr/QWAHU1YTg1U0VYHU7TR9KmM35NMH/pMSLXI9JWYYKzIrcbeLP/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770640434; c=relaxed/simple;
	bh=b++bAyIfWh6Yj97+tawb1lrVjJCf7h1GiTUjncG3x48=;
	h=To:Subject:From:Message-Id:Date; b=JsOZguLhdOH6dOaLqHwqcD86pMru0ynE78ZfAucmkJU3A6nfDCmfIgoq/QUCFoO+R92bhJP2DkqSfERhtggsyhp3NrlRpIh1IMsMGaqcIs0L9OE8kEFBvmMcc0mRen61mwi77g58F7GmZqZjB2g/jzEPPzLYTbsh3+yJ2bpMMCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3w8TJhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3w8TJhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A970FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770640433;
	bh=b++bAyIfWh6Yj97+tawb1lrVjJCf7h1GiTUjncG3x48=;
	h=To:Subject:From:Date:From;
	b=m3w8TJhHZyQWb+sDZ0idxlAofcqFdpVOfLs5ckd/1xLh5chCG2uF3oCqz+SOyu7cQ
	 c9RcrCl1w3uX1VeTEd8Z/mFDr66NOHc8JD+sCng+Lfecv8Yfc+MuVXN9XebnunuduF
	 3bWErgLv8iIM36SUNRQQK3hebqzsnecy9wFCtHOwPMlZYhF1rbjKYymA+T+QvA9kcG
	 2mkKDXdzYfdMTtsLjKRYKjdBdY6mYmrpFyW34DJQhSlQPzMB4v16HXyQlJE+F+v4Kc
	 wvjFnIAMKpv/mfZfZceawtv3g9iwtPc/SrewcR/UuudS2h/FnfARXOBuwLWAbLyosD
	 QiTbTjV9ez03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E76E81BAF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064043361.7499.15154283833071771869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ba02241cfeffcb46c25e97d81b0a7f6fbe0411fe0183ceb8869cbd8b2a4d05
Date: Mon, 09 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770640433
