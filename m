Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A45131E49
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755995394; cv=none; b=Zbn71vqvPkXtvMz56nof05FXaJ08+c/YAjxsla11zKA0kkaTfnB8icGQlrKXd5juKqAv6Wzhki/sUcYwjLjsb7veEehq+oeGA56i24iIX5DKuXKjo4lka4MW0n2zdbiFXPzjShm++FXgNIaqbzUnVYIWsUH1ypIwNArRIItZM8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755995394; c=relaxed/simple;
	bh=p6RHwEUK8XnR/HCMcF/nxSyfbjRbBxhossSuGeV78ZE=;
	h=To:Subject:From:Message-Id:Date; b=qMx4D+EM+fD+P8d2ACc+iSJbPVlzpFum/YU4MTrPharlt/2ZiQ7QcTYyab4Za9Ato0708tlXymXjd45G7waKefOXBpgCiG3RleFZOoGdPDWKzy8WTXg/LbQx9vN6wfxbeQ0qL3rDHop00wWpqVW+5jf0E5+XZzWIZvTEuFHECfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSWYohdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSWYohdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AB4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755995393;
	bh=p6RHwEUK8XnR/HCMcF/nxSyfbjRbBxhossSuGeV78ZE=;
	h=To:Subject:From:Date:From;
	b=LSWYohdzQBR4w+uzNT8XCt6nnFK8WwAc/ktJ36f6grnrGYVjYF4eUHuLHDpR4qkpJ
	 UW2BaSdSAHiBReqEKk/gjteyiADM+DdNpF5/efiS6N4iA8mDOSdSMGZq0gXWJS0pfp
	 2yuHEv6tuM6TmBRc3qjfxfqHtov5MOuZy0iM7PnEHV0pau7lIwe4OWoic6nkupzPtm
	 FEk3A9yzZWCQyOIGuDxsA3QjsqmgOTUTv/EzhK4rvA49b824p3bbyjLklpqEp6yRaV
	 TXIxjNumMfb597VB4Yi2HIatV1/cuTiAT3I+dLL7r5tVVE2yZm6g9Jvc+U7l8Tr6D1
	 ruD7S2tjMY3+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D3CCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599539357.1243.17732943526132935982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c54de5bf9c9dfc3f8ce58d1baacfe8c0edc12fbeda86e815e15dc1f546cb97
Date: Sun, 24 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755995393
