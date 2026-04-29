Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2379A1A9F88
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777448854; cv=none; b=uCdjnc1jwSfjucWK6gPeGv1ZnzR0zO176G+TBxmazjo0+7ORw4Jqt2HehH8YVFimb2mmr0JCyKmZC+YQUYGm5EuaEmrqtEY1uRWLyx7MhxbEK2d90AJ18lJO4t4Bw4KO1u9ALPzavVkmbkPKNJ6LjIejWIBbiuH8uuHb2RLAXjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777448854; c=relaxed/simple;
	bh=v1XRFwFesBTvpAfbcrbjC56+ynQkEeAqvbj3hPZNNyw=;
	h=To:Subject:From:Message-Id:Date; b=FiIvLLzoi9dcUpfVUp7bOQzAAN7PXxFw6fhmcDDq3EDEnweNJbl4ACw3GZqm3GF/UHNOmECjpcg8IUEV+CL0foeOb1rXj+CRjN41BbGcM6eMSCxyPN0U6aCApqCv03lTLW3Ccc/h5VXDk1ERmN6eW6Oef1I2Xcxek2e8srBV0qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3JWcnet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3JWcnet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF610C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777448853;
	bh=v1XRFwFesBTvpAfbcrbjC56+ynQkEeAqvbj3hPZNNyw=;
	h=To:Subject:From:Date:From;
	b=V3JWcnetpCE1WD1xx3deHT5z/1RTfZg/Dc5LIPV5kSA10xAAko9D+AKe2nBCWd9kX
	 wQn9LTYwKiqv/sd9B4vj1QI4LFtI8W9Oy73knhGmSqHTDY88fLULXKQWRVTxZwQCeP
	 NwaXUemZG83Tj98aC9dtvgujB+j4MR3UIE6cON9rU3uwQ0S4ht22ZauuJBhhjp+vlx
	 waeuYnxYHO1jb3hm0emsQr3NvXJkbLe0HD7jXF62u6rbi+5w4KOjnmyFgwyIjvA2r0
	 kM+OKC4pltaxZpuzVEkKBSodPfCHZMlr9dROnJHJT7B4KAFqj8RWxtr/cPTiqXkUwa
	 s8JFEnOEPnBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9253FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744885368.31656.16632361253288765261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4ac556e14286cb9b85d316614291d7e4eadafc8cb3be52fcd0c9d91861be8f
Date: Wed, 29 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777448853
