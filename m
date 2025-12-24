Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FA02580DE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766609034; cv=none; b=pna3f1V4ugJM76ujHhZ7+bCTLGGRyr3mkAysTz+siFhPXKfU/S88Llumgp1E3zea2BsRlqDSFPPQVpbJPA5ahTN04sNLOt1WWFA5ju0H+t1f4pph6HoqN9yvWLUh3wH1TTV7W5ipsbB9xLs/1xO0iIwFSeBNwc575Fe5aLF6TLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766609034; c=relaxed/simple;
	bh=GDSH3E0wFCNWkWaFgkvUNX4dld7B0EYZuVX0GoEJFhk=;
	h=To:Subject:From:Message-Id:Date; b=K5UXgqdvsOoBTQjLmeecZrPrthsFF0KupHYSbFRcjchESassS93H6bRdT+J86xU/QFcRFLJwrLBoTbA40FSx3EyLuBusYjNmEbMAVSu5UR4rt34dVvRA++wETzvqSYngEV99JgQ1AyPIeg5qQFqxIhWCnn4216HGLRWXMhhJcAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4YtwVOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4YtwVOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BEDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766609033;
	bh=GDSH3E0wFCNWkWaFgkvUNX4dld7B0EYZuVX0GoEJFhk=;
	h=To:Subject:From:Date:From;
	b=c4YtwVOmDjR1zfhAmh2jz4WpzZci3cTqcfSeLte+CZX/UoRWd5vYrpFU9GP7EWurt
	 RQIlAyEqYnHLo+ovKJsIdSHXGbxKUVobbcPnyC/4vCRrcWAkmofnVba4ezyV46fE7K
	 7WxnVnr62IHtfOpciCYoWp7nbPOHc8oVZLOAv1xMTRQlDBULl7R8CSHam/LzgCprUx
	 /aDbqT+UfyLVNNvrkKaL8LlI1WPH+hoDWK7wBOk2BditdTgtjfElyYOAOzwiroZthM
	 QOSFFUOulJvbix3n1/hLdVFEDh2L/Bcki5eWGxaluxa7RCcSz22cwcjJBNjNslxtKx
	 UOZwrJdXT8ohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95898E78493
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660903358.27802.8394172219426590356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a790abd56cc3c2ba1d25f03c3931b5ec967cdc9c55102c07b79e17b085632a
Date: Wed, 24 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766609033
