Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310F23A7825
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772632494; cv=none; b=MbJbc8YhsSP+2W48+M5c7ib9q9piBLx7EzCZDdQEDbAbUcdeQG3gzLyNOTHkfoThcFyVbWIWbPZ9FPeBYP8VvT9+HfqcAfrGvzWmvejsVN2blGNNT09lrXb9ugekMCED4pc/4fsO8NHY9LvFlAz/yGVecHWfY9AFnbpunvIVJkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772632494; c=relaxed/simple;
	bh=JQ21BWKltCVUvXpChKN5FM/U3M88HPJAFQ5VyjTgMBY=;
	h=To:Subject:From:Message-Id:Date; b=ZtH90azis77GGEkXIpWLCYEpFHGjS1zYlj1bjacBX9ZnJUCikq/kEyWBb2YTfFwXdtlapFVb3RbXEVyPeaH2ozpdGeu6Game/4cr4u9L0xQXFmLjVRKCKApPxhqaWDjtuVqWn7GPVDut1aoMwEHQ/ZLTTo01xkc1kBJXIjLO+g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J054SLDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J054SLDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FFAC2BCB1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772632493;
	bh=JQ21BWKltCVUvXpChKN5FM/U3M88HPJAFQ5VyjTgMBY=;
	h=To:Subject:From:Date:From;
	b=J054SLDi039YsmteV5vFD4crTX00iPTTjcG1vRtgjmPZaGHzZWw8b5jJMqyN59TlN
	 jUA1Gl8hxuH32KWQXZ7RTSSmAq1iKPpct9axfTVDxAEw3BtTjTMf8M29obPBi4IvZN
	 j0f7Z+euB9e/KdJ/3L36iNLI74+mmOL1E+NNSF/7Z5GT3aa9VXH8PCg7F4Ab+qDpmM
	 90u69A4qI2Sre2lgC1bj9mdCEpOhD2CzY94gNyl3Kez9lHinDMpj4SmyEScsZaj8A3
	 FNtfmhIRxCQ7Jzx3ZLYaLoHP9bjrYp6Op/SckpETkNWpFdx4D+1CptiEYcfePqGev5
	 wGKf1WNimzsqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930D6EF8FE5
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263249359.28459.14878690875074549703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e28e06b4eca466fe0737453b631f648eebef984c084d4f3bb406a02ce112d8
Date: Wed, 04 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772632493
