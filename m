Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EC9363C5A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772859294; cv=none; b=QzhNxj97uKoXOP8hUkkVqlxyeogPMrPbva0eHIF6MNaLGEyDUTqiF0hFgVbmi8HPC/6fHU9GQ+uVFZL9tQ8dyJj9Y7P7gx0iQnaUnLwQ20jI+dEncAOpPO2BeFIBKUK0+64e4u+S5OuVLHfaWzfXfaITNztvr7Dv1z/j5tOpSzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772859294; c=relaxed/simple;
	bh=s6lD3/q2nAHzGDJcbH03saQcHg/eW11RMKae3qNo8/A=;
	h=To:Subject:From:Message-Id:Date; b=d1/i5NSKKg3Jzy6ZQavTcrHyW6EksZ2sqbAlqEMyCbZVwQNcErCWq4KsBXO85BgrY1TMHZTX72CGmtFDKor0+bXBHsnFnxpyUC5yeULIFCLtQHVPoD6yMRxv1B+erEscexV3uHaJI6GggxwBXAHeJfJ2qwVGzoPr6scW6pOg6Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFKvpdrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFKvpdrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF7EC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772859293;
	bh=s6lD3/q2nAHzGDJcbH03saQcHg/eW11RMKae3qNo8/A=;
	h=To:Subject:From:Date:From;
	b=rFKvpdrQKUu2QkVsnUU+xtVc7/cQoKFzmzE06GoF9EjK0yAJzGMnIWZ5LAtL4jZvN
	 ue9Iey3T/iHX5+UY66xYWosLcyVSyR2jectKswTG00N30TUPXNjTGgGljjTxdW7Rw3
	 qUXvwNFJoiWVHeYqbouIG3qUzMblIq7Lsh/BNhurZltCUxiYKahqYKNk5YFllFUq8W
	 BsE32/xiLgARFDrb+ceL7wLe9cdYCF1f1L0A/6VMTRndjtZntqytBTcLx/GF580fwG
	 sMi+eFQbtjVkCzawBW6KWv9CUIsuPN7yREa805grNz4q57mX+/pVbF2SiQUMeG+WMa
	 4NcTAmZBYobcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991EBFC9ECA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285929361.15922.14435363760401441210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66c8f896b5155eb35e6b4118ef9b3bd1629cee1944b3085a0be27954e1d1d6b
Date: Sat, 07 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772859293
