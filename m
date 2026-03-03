Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C75F381AF1
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772561094; cv=none; b=lac153wK4NesxdWvnKi+XX0VizjFKdate+59wJEfSvzmMialAOW9bI7j7ts9KKaAgIPqCD+TPL80UrGbSPpXVDGLH8G2t9iHXqmkGqCE60sJ+1dqOBQHAFh9/1n1SLC0VBePJdAuDSToRlafozit87ADoQDEH4/hjzK6pCeNoAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772561094; c=relaxed/simple;
	bh=byO3gc9GX9uS/CpY1MJPIWhbsokSdhfgbVxeNNIhO98=;
	h=To:Subject:From:Message-Id:Date; b=ZHvXv6mWw74jhkwNjnwSomkP4Arm6TDXghLKu2Mvm5Q4jZzU1Szy2/xleqJaCmM2JA9YeTtVF7PLsas4175VurGY5CEeNRTJ1Awd5ezLxSOSjM8Aqr/LFgzUBB7VAnNsI8vi/2eYsxgwc+oWnyJKMTx3x6nryhR2DadmZaEBmow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoJ93zAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoJ93zAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C8AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772561093;
	bh=byO3gc9GX9uS/CpY1MJPIWhbsokSdhfgbVxeNNIhO98=;
	h=To:Subject:From:Date:From;
	b=IoJ93zAyhLZ6FZWovC/0qP1t5GwHQOXqdOaPNVEvJVKxt3qmE2vvjjsIyj+UqODTd
	 UMCA3AkG5CIvf19aRVv+4XKO4FJoUa9nDDAl4CEPNYfaUD/6ZmSKa9b/in0WJUet5o
	 tWLW4EuHPaqy0NKWxBtNSdOTH7rpzVavTMJqd0LtNgl6enwk0tTbQSVBV/fTPC0sL+
	 U3hvWgqEPYaKuiU31rEHQInUMg27WxAp1oDKRhIxlKoS1WonFWi229r3tcaWZw6Hyd
	 1ucVghyGAL1IS7kzKLqzzKIQiJIvf8qkIkCp/gO2E/LLCspEaxAMip9TyAyjTLsSU8
	 xCLSQ2x2tOSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C2AEC1425
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256109370.23860.16567470689305500977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696425649eefa382e77644cf91bf0855d7636878ac00cf0fc5379ab60fd90675
Date: Tue, 03 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772561093
