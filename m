Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271791D9D70
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 13:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725455155; cv=none; b=fB/eDcl/aMazpriuy35ud1Tk2ZzLJRyHA3tCWxbW0NFNkgGUPGOjbBVk5eq9qevMEcPMFt4LgZlz0PE0JfPFJQr7581DvhgS9Ervg3JbedjO5E2K249CI5Qew9oOVbFUXuUmMtlCx47wxj6H+Oy2N+PUv2pHs1B5PmHRn6F29go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725455155; c=relaxed/simple;
	bh=PBI8O+DUGIbLeJDD3g7255MOUPKEfIMYQlsqbOEEbfY=;
	h=To:Subject:From:Message-Id:Date; b=sA9/11v5yvw4rqmO5cUAu35eywDk7c/e97zJaj7T5AARj6gIHvl3OMfdACf06Uu7VUt3B6TmbDMfO2FzNj4683L/2i7uMKj6xQPycPr3674qB5Jjb/HPyog6nbI1e+IZl1CR6R1ahqzbWM2ZFm59qvOtDr9Rw2foAOj0DXPemaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPfDEo8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPfDEo8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45A6C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725455154;
	bh=PBI8O+DUGIbLeJDD3g7255MOUPKEfIMYQlsqbOEEbfY=;
	h=To:Subject:From:Date:From;
	b=jPfDEo8cM3kFaAXTbg+gzDkieB77UqyKcBuybrzzDB3YHrIgN/m7qRB/Jv41hVvUk
	 VDKoJR32WTyZVcgGkjKAmG92jHqstuw7fuE8Pscoipv0BLWItcy1waxkhFPStqjqHx
	 CmW13FrUfiZN7KWmId1stuqbd2WPS3SXEaUBTqZo5Gt2i3NrnaAib34FaeXVsZQsWO
	 2tiNb1DyPSJm4vbd9LR9fSAbKf19BEwca2NTfIw6OabRbQYhSyC8KHqE7QNbAUBp+a
	 tGTwQw3rQyDzQb9ORUgAkywPzeAp8ZaurCXMpYhqG8ovjgYT66NcBFc2xjnzXHyHit
	 BwxLGJyX/RiVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94524CD37B4
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172545515359.30897.14441958181218209673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1069020139907e00642a7f5efd0af027d6ecca7f207746f842def92189289fc
Date: Wed, 04 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725455153
