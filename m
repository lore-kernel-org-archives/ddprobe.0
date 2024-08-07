Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF50192B8D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723008954; cv=none; b=AqAciDHvOdYKCxa6knK5xtODIpRhVlyk1z6Sc+WoMVg+TguaL30ArUZVnI+sU7oaeHGsIYiOC4lME1hT5kIR97b7hA98TilEBqMLxEwS7RzJJc9DgZP8eNTPou39+wlx6QgWtL3h0Eg6cU4qFZAvl9FbsM3xScv4xUsWHtDYqMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723008954; c=relaxed/simple;
	bh=f0l8vCabnq2K4hq09XujSEkLKMp/EO1PQElwrj1f3yY=;
	h=To:Subject:From:Message-Id:Date; b=ekLEu1yPghBtVKvWB2D29YOr8DBTFe+PzpsnAzc/AE9RpyWPzXjNK8pxqt+p6VvrAAR5jLbHxhQBmDaZHTv4FLw8efOz2NFslTB1t3JYol3/u3CX65eFB98Wlr02pV5r3RDnVoGeeF1CVn3Rix7WoUTRIOhkkB+YP0zl5ZidVPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N72W5P8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N72W5P8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB206C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723008953;
	bh=f0l8vCabnq2K4hq09XujSEkLKMp/EO1PQElwrj1f3yY=;
	h=To:Subject:From:Date:From;
	b=N72W5P8n3E/HzJCTBlhCxXmWOYMCRcu4ZWokMAcLqNhmJCh4qmyM8+jjOKUqx+XSL
	 PIqZMEDQEVXl//43uIfh9pDRSHQf+VMdDlgiyRStLOgOw681VPrCte3zGFKoHhndr+
	 9k61uIwJpVQoW4SwxvMrFAzS2Ujr0KJEjKsQwfAyp10/y7WnLunyObfVoAcMW7I6QZ
	 raKGxd2JZp0SCpuKqcGkKVFl820WXV8MP7ptX03AdtFGbf8X29UBFsZlbiksD5Zlyr
	 U7tl5Y9/S0ZN7tXkJuddUOadKZ5uLp08W4FxY3adPTRQlF02DmSY3U6EHw9JEFhxj1
	 d7f9raa1IYpiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC5CC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172300895363.2967.15085442746055740204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21276e4775e3c8016d608b9bd213ef18d79ffb7d90945e124eb8c2a02ca0191
Date: Wed, 07 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723008953
