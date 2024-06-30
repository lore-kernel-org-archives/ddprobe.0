Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56AA29413
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719719663; cv=none; b=JGUC5/dY2cDATLLI+QJXnPQp4gTbw/dFxSmWwN1vMUI+/X2rYRjR2Pk4xUyOHeVEelgap9MKLPPKbtfPdeGi8DhEf+jBgC/GHXuspkOabEZ5ZaKX+PM7xjthjS8+rlMewoAqI2joUOdl61D30JsGhtPfi4rOcQ/ESbPqMvPnc9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719719663; c=relaxed/simple;
	bh=LmWHhZvm/4go/eMTIEHIAEKB2XR4cfY+tbkf6u3A6Pg=;
	h=To:Subject:From:Message-Id:Date; b=FsW3MXrnBLuHqv3/CQZbBpb7svqZ5YOQc4yFvX+OnixizqdWV2MS640rY23as5fN4lOwplmKdyB/Vlyn5Mvn9oTaf5OEDWcqhEbdGkmnrTT64kSRyA3RNPNC7bJRNRGFHI8i1A3V+zGP8Dtt/JBSUU6wNJu8zrY+27CrxC8biBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOwwQsxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOwwQsxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25E4CC32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719719663;
	bh=LmWHhZvm/4go/eMTIEHIAEKB2XR4cfY+tbkf6u3A6Pg=;
	h=To:Subject:From:Date:From;
	b=SOwwQsxfWVbf/QEm++w9M9VmKn3tAfyTkr7wQsUO1MzxeRwy2Ui5YaL9nyubUbpr4
	 gVl/cEBnetBkricoZa4ApYLrs7ENdaRJtyg5hq5XtiKN+b6eYdWuCSdwBkrHz58pmt
	 3iWQIZw4rmPwqxmbuH3Lbs7KfwTqOb47lw1+lJUvUSDuCvA1oCaxwOmKC85ATXUTSn
	 fPB+K1dT4Cv5jgxaElqOfKpeSoVENoPzweGZ8oeDns7FBq/4c8n7ZO+u92J+RNxF2Q
	 +99OSHqGR/HKAv4uBSmsqFiV6ID43OzZG/VcbWQEznFDTGwdCqxYAizICYGdo3QVKv
	 38N+Xo+tcJCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4591C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971966289.11506.11773789583694310748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873fa8eae6db55740048a4e80f65e7496ef4fec3b3c6ae7e0a783ffb2066823c
Date: Sun, 30 Jun 2024 03:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719719662
