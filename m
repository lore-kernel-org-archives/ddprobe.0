Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7FB2737FD
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753825794; cv=none; b=jwGuLcaIBOvOPBIUPJ1+1YUrM947HHd0EIBeQ9R6MkDjdBPQD7cc3o6nDbL2CnvMgAP3mQLgx7YFKJHP2HXlKch1avZ64RnxfBhELPkoNtfRjC2Tw2ZB4fqWvpPhh5X7K6rNiDxxDIAWRfSa+5yDL0bC1vjYfzibKoNB1wZiuBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753825794; c=relaxed/simple;
	bh=9nNeN2/nnIa4yKypPV/maHo/rq5WcOLrZ0PjLu2cODc=;
	h=To:Subject:From:Message-Id:Date; b=CNpUKyVpE9tyfLY7RSFLcu9h9QVv7mCAZu3cNetZZ509jyDSpuJwEq863ZbhaCT8Nv+2CaceVBk1TpCCfw0B1wrBM/Owo2elIW/JrB9jwQ+ePgW8FR230Ma4XB5V/P7ptOMAvpfPAqy6osSt75lHYlxbLLH1Jqnrh+FmS6MNq6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDO6ld+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDO6ld+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9E2C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753825793;
	bh=9nNeN2/nnIa4yKypPV/maHo/rq5WcOLrZ0PjLu2cODc=;
	h=To:Subject:From:Date:From;
	b=nDO6ld+KztnV1B7jfR9ftjhAsSCk9oWuE2Ll6vvPaJovRB8/atZ+OgMu5SwSg5BnK
	 MHPHH+QJuK4Aajv5eHOvB8ZqmTp6PboRqRqSOktQmtuRR3QK5TRGDJvDlfVCOcLjAD
	 HgWtJiLRivS+WVWZQOYYv8+vQXFcNPS9qzwEULT5Eh4CoJIuwe5RiyYi5ULfSNFybF
	 yQux5dug31teDsXLpmtE32c0a3jQloAp+MSjgPf42B7QMZwiPxMb57xd+wT5Y46UPw
	 8FzDKSNaN9NTH1B8k5mxhNM0K6NYETFkp0vnioXTgRfeQ5CCGilfL6z6cYwsq8+JIL
	 9MJ/mQbxhuzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F16C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382579361.21850.802705591576977272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3ba36bcaceb0e513a73247aae329c206ffef3b675c0de61cd034aa6cb4868b
Date: Tue, 29 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753825793
