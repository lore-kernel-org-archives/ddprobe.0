Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBD9314A79
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781282194; cv=none; b=oGK0FHV/zAxUjlS3Ny7BTiCIMp8pDpc6nqBRexg+iwEuEwWxMoq3H7/6iKu72lbykA2PDkPAMyzBGWJGw8L2o1MnXpmjdfDf/FS07Xl50kWMOWw7E7u0xE1J/v03H+DCF/4zo5ELO0OkZ2ko7F/P3fr7K00suknTLngD/KW4rx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781282194; c=relaxed/simple;
	bh=eF5NfOHw4tHKzZqcBCx09MOHo5p+w80wBJgEMq0yYPY=;
	h=To:Subject:From:Message-Id:Date; b=CaOo720LZNh4GK0LnQBWBQjUSJtSl9IGklbosA2g726W3CjFh0SK3wdtiG50pjRoFPl52lZox+kCpDz+6f0iHplHSH8cZ8Pg7pSjZRoMgEdneIzYvsSPw34d7FlCJUkl6LD5aeVxZaZ45vp4VGl+dBqPkBBX1peQyfqxgzz7Hdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ct0wV0gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ct0wV0gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24BBC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781282193;
	bh=eF5NfOHw4tHKzZqcBCx09MOHo5p+w80wBJgEMq0yYPY=;
	h=To:Subject:From:Date:From;
	b=ct0wV0gt2nOF8IYAqECYx2pig4bs7tYxlr2opesFkh5NebWRGrUxfAkdv1WMKWbPG
	 RlUPvM9Zj66ee/awrd1cQA0VKx62b1luPQezn3v3ZOfTxuKkeoVvgIXXKoBRvdrzAu
	 FvWTqKXfqelBTV9NiyoR3OTSSdCKL6r/dwC7eIkIiEr+onqzlN1GZh7xdv5NrK0bIw
	 gKCt6kgXkkTCWiVyie+5P+lxrFSnLyrRaEkrVCnLdo+sds2lmt1oVWqYSdrHf+mMRY
	 qcFHk1ZUEDuedm0cO2Vpg/whKDf+2tN7gP6O+Hi4DGQNe6sExHnhC6a79KThQtHcjh
	 Vlt89mZ4kiqjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A890DCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128219368.4249.12755910739655095209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13865ee9e09df06ffa83e52ddef8cf7a90a489a073cfe88b7891c83772f87dc6
Date: Fri, 12 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781282193
