Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9A42E9730
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761861594; cv=none; b=OjVbFRKxBrW1+Xgvqd4r21LMGgJpKhwIGhLAlR89gvIUpR5g0FcRAYSaWeCQ7zx8aPzxwAyinZhGDV/QxnTmWJS6ns2x3A7dJG211CXXe2PRDLN3JHe3wsLrx9ZSep/NFbDZr3+cUUtinbaQzpks6zHRtdEuDYrH3qOcIWzjQ6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761861594; c=relaxed/simple;
	bh=55hgBEa3HpTVfJ17UuRbvvRvy9HBB7yb2mktYJB//eE=;
	h=To:Subject:From:Message-Id:Date; b=pdWli9jSmgaRMIdbewPJC3N5u2ASjaS3bHO00+MPvUH2j63XLSs6oxth7iQ0b66+bKrXcGbf9a0kGvT4HigaXB56cpwPYm2B3bcU1iPbBajdV0YG9k2t9bZCqjoQHp+D4ucQBpz4g58cjcnjA4Gf+avien/8IKnyQPJ6GIlWrb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/lG39Xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/lG39Xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0898C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761861593;
	bh=55hgBEa3HpTVfJ17UuRbvvRvy9HBB7yb2mktYJB//eE=;
	h=To:Subject:From:Date:From;
	b=S/lG39XstI/JCooGC5RiMjsfYSdd2cZyV7joCv4aENJhfVBv2wg+FvmcTKxFZ2S5N
	 BrXk/aB3xG1Hg7n1I6Z4mN20Q15avx1zbcWqoWT6wMxJhbe+/mcMJZo/jsK9fEzgCJ
	 xVf4rSOil0z0l9akCX4FI6ylHOmA4/q6be8Snk7rm8f3xdvU8tj+T7oIkWTYgDuD6Q
	 N7VnUaSlaam+oduOZoVJ4STTltL7NEeK9R1m/yIYqbc1qz6AV30UjRApZfliG4pc84
	 zA4QtiSuL8yTRc06s7tXlf64gUMAbw2Sorz/KIk5bQLjalgSxSHpwcVYHOArA617mj
	 rufYm11ag7MgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9204ACCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186159357.7683.13254759149845190417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b36b9fe47aa4ecb071ef23072bf4da509be801991c2e5e0ff0b7b692cff35bc5
Date: Thu, 30 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761861593
