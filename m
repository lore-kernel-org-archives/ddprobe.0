Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F533624C3
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777889854; cv=none; b=IWr2FssrjUiwIikNOEfFUzX6Gs9xzcK3Pal5ECoIj5Y4ydQV1I7KIFYrhIDv9LA8IPH6oRqOc56udHo4IOXmHPbVFfV0Y1XyZu9JrAiOqY7WCoOZC+ndF/fLY5R49eBim6cbxrCFiNvMgHRFO+Nt8pFFFdIDfDg7Q42cgHFYd/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777889854; c=relaxed/simple;
	bh=uZc52swQFiwcYpZ2D2cUGFWeIohPhmQXtEQ8TnfF00g=;
	h=To:Subject:From:Message-Id:Date; b=JssICTfbZKba5ZNZ4gQHPOtGvHIXLYuyPWch5UO5R+bfE9vEipEc9XFKaPj4ffSWq5PGZB90acHma5B5hai8jVEFnE9AjQr6hdZ3dTLa+HbNiP4RxkQLBt0xQE3wuZuK/U4ER77/UQZORkPFBFwwniJ8skZ7L2sZIchk/aS6Lxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWPtff+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWPtff+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3000C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777889853;
	bh=uZc52swQFiwcYpZ2D2cUGFWeIohPhmQXtEQ8TnfF00g=;
	h=To:Subject:From:Date:From;
	b=kWPtff+FYRVvpbi5zUAb0hpvwufJEfU0iSvOqn5QMMPmi8zLwPwA6nH0lIh5QtO+2
	 xYcvEvqi4S0c7U1gKyjvn70/c1FN9+Ps+YPk0xXp2ifwbTEEcwcafXehZhUYxJNh9t
	 D3+Lvqo5JvwJgqkj+6PZP9XgIYl164H/9kOVhFQWX34AsiDc8iLFM4v73QQavwC9R9
	 jHCp13P/dbiP53t49cF1J0O31TxZOyzpXK0+yjyMwVnLwbUBhD4jXe4nveJMiURNSr
	 07oe3gDn7XMSPH/riZ7SWgFiFtAXsurYU5gYh1BwCbIa/1g21BKxXqH2/ano2Z1RNp
	 lvmwPbWfBQQ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8FACD342C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788985370.13701.3607501437440160005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd9d7f5b721ff3a8910f730f607a92bccf430eebf13adc1d547a8be8235108b
Date: Mon, 04 May 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777889853
