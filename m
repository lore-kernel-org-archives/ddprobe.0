Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A271509B3
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724824554; cv=none; b=nHlz+PQnvfgy4zl0gtdr/8l2Gd4E4UY5hlcGrD8pEO3nS7+Pmg+51MKkyDhkx6oYRDQFWGAlVoqKWBA3M5hpDZplwup3zMSpiDfwE5KHibXlASIbOoCjh7s/E0KSFqTwtlekxS+Q3rviSvyY5ecgUD0CZlVpaud+1U5d3b4SG9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724824554; c=relaxed/simple;
	bh=WeVJ8q3vD4ZK68kZkp3CBl9vAwYlPxNjJeMafKU2Uw8=;
	h=To:Subject:From:Message-Id:Date; b=qGrv01mEuPk2hEP6724ZfSkqsewdIvByuoc9fBCkWTas4TU/FEC1czOMQ41GtjxRZ3cPc5p6NWpZXQUoX6rB2AvbD5PglC6/CxCoCvFiz2xiQak6Sxz+Jvikisv3LxWgy05cnCEbNajmIk3FGCE3MgZQgDQ9jB01WleziNiWTv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHF2Bzvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHF2Bzvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2478C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724824553;
	bh=WeVJ8q3vD4ZK68kZkp3CBl9vAwYlPxNjJeMafKU2Uw8=;
	h=To:Subject:From:Date:From;
	b=CHF2BzvkoXqwxNdrD3jJVjNn+mrUV1uhPlSNcQ6SPbFtLF2FJsmhIV3rhaaHCEm8c
	 KC+m7lRphIOzlE0DOZueVMts0G97l2RcNjW8QPG/Pd9OenhIpTe4Zf5RB18kUdoPqO
	 vz3irS2zg/wbg73FUPhjUqpJre53J9NaKc6egJDSkcaXpyzIFGht41T2oqnC/2vFGf
	 FQSnvldkS32Hn8eAz7kdzXdDolE9SfYGWfzimOsL3j9db5ex3vbITk99Thl7Loh3dk
	 5aZEBkjgFEYPyCmkA4Ue8psCUcTvOetoU4noqbsLhGHxQQBnqAgeiqwiyp4plzjMqq
	 SIpgUy+pVShpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B480C5472D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482455362.28201.5527050276995068046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c625e148b69c03309f8b1a285df1cba2f7929cddbe2e221b18b66d65176c97ca
Date: Wed, 28 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724824553
