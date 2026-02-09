Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED692DEA89
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770605634; cv=none; b=hDn3e7VZyXKDGE2PUJnEi3ye+46d/toqdsg1TV++fvbiUBxj4WlVjEwhdTW0pf3Lnw0aTzhksPfEnB4Zm+rbG7RWKZnk2EshjLZQTtQzrVho/aaj5qczxV3m69E1fL1XVI93uGLE+N7TnpVDnqzbzzoipptCdPsjZSM6JkHYInw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770605634; c=relaxed/simple;
	bh=OuZSOzC2ZIjy5Cyj98V/8EIBlWWeYX+TGZHViwxhmn8=;
	h=To:Subject:From:Message-Id:Date; b=b2OpDdz2vXI/6Xdr+4BEupo3RhCdIMtwqCCyfWrHfCzLwtTKFE+BgdOeSsxU8hFjAbzEZbpTrGJw+G9LDxzZawOEU7BBMC/pAB9FY5pJsrtJPACZhQTG1wGL9sMsos16Dbx3efpczZtqOAZRo33kQEUE2VDlS5IGLAMVWSXIbcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBGH7jjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBGH7jjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB86FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770605633;
	bh=OuZSOzC2ZIjy5Cyj98V/8EIBlWWeYX+TGZHViwxhmn8=;
	h=To:Subject:From:Date:From;
	b=BBGH7jjpZzb7E7JLwZCNqVvOqjAetdnjuj+ddryWHydVtdFHLnHqFO+9yvNJXxIc9
	 dYDKuPiljECa1kV7WIDiEU5PZFmlb07JcG8ZR/HNhXhp3ExdybqZNDaiYG1AR1877v
	 mSp4MY7oagz+kfmjl8yYBftR73+KMSmcSA84zIxHm0kMtuul0eY0e75z5wWZQ2Tipb
	 +pTkITjndQpBOtPNw32rS7Y0FD+cOIWuwP0f9tVOuVZyluy3HrgDe8u3r1utFt7gQ7
	 lswqn8JqzYNEAOFMg+s0BMYyZ+gXKTH8b+m8BGrkbEpXS+ik2HFWd9RxUmOZgT0uo/
	 BjoxgGmBge2Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960CBEF06EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060563359.14547.14082017270989958453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b270361276f194c300d088614d09d4e9c39a655257c37fbae391585c5f23af
Date: Mon, 09 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770605633
