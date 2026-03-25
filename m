Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104DB30C366
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774428894; cv=none; b=YZxFgq2wd7PqFxJdoqmAYR0JYojH3yPyozBONdnH1dlLXLo4QsCAmj9N/bBBstnCFQxlTpR60Yovpeo5akBRZcnrl6gAOFn+dXwJU429PlkDjBlVNl7Y9XAUsimndmV2jstAh1kfNpD6Vtf+F6c+8lVpARt2/ooaUpeGAwQxBCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774428894; c=relaxed/simple;
	bh=iaj03RfvTk8oC3wrdBLcs3/iDH4tAHomwQusoIv4HK4=;
	h=To:Subject:From:Message-Id:Date; b=Ceq7xwtCQoawgwbJlPbExE5oKD8lBMg2ObHBbtqm2t0WIqYkMEwzVdmgMs2fLmhE31kW0M/wQtER4DSmwmgKj0P36jsO1MFV5gUF3OuaxiK5tGsEBF6vb7WHR+blfodhU147afq3f1jnpcowXpiqnKYB5JaOMEwOGbSd7UvK85A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jO6iyO4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jO6iyO4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9B9C2BCB1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774428893;
	bh=iaj03RfvTk8oC3wrdBLcs3/iDH4tAHomwQusoIv4HK4=;
	h=To:Subject:From:Date:From;
	b=jO6iyO4iHW5bUpr0fKpNktYotOySt9+Qm8xLXFNNANsZoBaeBeJm3sX11RVZE1okv
	 5CLiOOga31wdV56w/CvlCdJhFM/fI7Xu5jhU37mUCNq3BkRAtamDpsYwHPTfbNSXy3
	 inxBonLfF6cU3cPsi4rGREJqBYWpyscZoO3RoF5U1v/sOMu6T77ijx5i/Blc33grLR
	 ravDzC1xmMNshoiTIejmhvv37tXNiXDDZTj5TPF+nf4Ag01+Ty7Egn07XJGwaaQo4c
	 nUyvrMfQfThb+XeHZrHsdxzpkJuoGN8+VNhsNAOSFLZU6fvU/Zq2GRKbl9SBbBVE2E
	 4wHvf2VWC9lGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04D2FEA837
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442889364.15549.6508940159539318619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16b54d525b545f89a2cce00ecab3d738666097c6fe120f00cb2f49ed35712f4
Date: Wed, 25 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774428893
