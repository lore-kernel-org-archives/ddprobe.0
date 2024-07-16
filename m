Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632D3C8F3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721105123; cv=none; b=JlObYYzbrqmfHnxc1ITSK80MXOsbxmOCG2NzRRecbxup8MsjYEMn4VMhniTf7e7udfLiQy/zgIZEmvW9seJSe6IRv3POLMd/wAG8gYmIvVHpDe5Z/Iu0UtA9OOPsT7zLtZINngAVYig9M8Am9iV4XSQ/DBnK6NrT5kdacuCvlDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721105123; c=relaxed/simple;
	bh=M63+JW7g+LtkkKMCV9JeVjYiOrCIZ8X7h05wYZMNIgE=;
	h=To:Subject:From:Message-Id:Date; b=hZNV3ntgIS0ccICPGczncDCLo30yvfKrXPEBRQXEclRuM+lXgjPsKkL89qPXhmmL4+a9w7WbKucWeHHRm/ko2UcY1+eFaBDGqJ6Sag98cvmMZ+ia4BAXma3EoJUsiBT9SmvqW+/BvAOqyMwKePxueAp89V3kGK9sV8tEYrH5dtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgKFfgIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgKFfgIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F79C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721105122;
	bh=M63+JW7g+LtkkKMCV9JeVjYiOrCIZ8X7h05wYZMNIgE=;
	h=To:Subject:From:Date:From;
	b=qgKFfgIuedJGOve0njEaews++DS2Yg9p9O5SgvnWDpxqbtVQDcfW56LPyF4gYcwap
	 F8nWyRTbu5H7LYtm167hd+SZjapKsC5PW3TxQuAkM0Pr7go3/jCgI3O8QTv7F6QiI7
	 G5cjhTAKM3H/gqOUUQMMpbZDT39xiZ1mlrd52rcts2Nbz5UnF73S4f9OSuggNaGrZN
	 tdxbeFvlzR29wsyvCIRpaYQrrZtS3DqbzuQ/kj5wC7/+6dIianK6vIQY0i+B35QJfD
	 jD4kaG4VMlsHocp9lJ/XTNwwM8LQVGxpBRAx6NJsKFHE5QLTG9bLYI7UFbrpUKW7t0
	 Fu46qay+qFEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C129FC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110512276.20645.16605089105564509383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765acd215b870c997d63e5671cd5d3b35da4f8819df90486563fa54bc0c03b61
Date: Tue, 16 Jul 2024 04:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721105122
