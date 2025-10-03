Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24282156F20
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759501794; cv=none; b=J8/nR+NxKxApVQXhMx7utUkMDqwfHjOQh8ettE/EIIKQBpyvjll0T6narr9QX0r0pcsXwjCWeGiwSM6c/1bxSK0o5nPDEVFwgHftDUN5lv7m0RUm8HQaVUkkbufKXoqYLhVdPoliy23xI+OGwoZHy55bKcvWzCKjdIiGzmfEoEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759501794; c=relaxed/simple;
	bh=v8+ifOhmxwuf5TN49Cv1SHoQUp3ysRm0tpin6ZMsSGw=;
	h=To:Subject:From:Message-Id:Date; b=KNuuDoulBkFy8Wm00aX8HZCvGyDNtq4uBLREQeykxTZ0IjgFNYB8zSYZcGRY3OQRyqeaz0YCtzEd8wItTiXuMVSr4fDMAgqwdnX2IkeCccVy3nO8Ngzc9El61IPs7ChnbiNABeBTuxF5gl2LmsYTiF15k5HYSq3eiSJSzSQu/Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXGYEEKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXGYEEKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1820C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759501793;
	bh=v8+ifOhmxwuf5TN49Cv1SHoQUp3ysRm0tpin6ZMsSGw=;
	h=To:Subject:From:Date:From;
	b=lXGYEEKSoq8n34JVQ91wiMiwmavpCwbEl7ZCU2XIXhgmKQO713bWHchbaU74z04pv
	 kHjdKlObTDEWy75PvNzbfDIBlg+arppaFgJ8Ws6T+81Y6CXvi7Nm04MrgZaorrCVqT
	 TVwLW3Ltczy/he4kgWdkjXUZdLDDe5S/ZaYEtkJeY2IxKYbGobbzG+CN8UrHdbrV/x
	 +vNGegIS24I4I8b9vgdONYE6B+BGwF3WrWqIrNA87NLAUrHTu/vBobsFlSAsXMNmFm
	 2k1sCdnqd/nPKhiJfrgYSfJOR+gDB7Dd+5mvXykBNJzQ9W89cAtWuz1yibIrO59xyz
	 TT3WSA3OwxFng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18CCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950179357.9939.1870587879760907811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f816e4e7ed54ca5157519bceed9d475111485aaaeaf74d25c61e2f66cf2464f0
Date: Fri, 03 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759501793
