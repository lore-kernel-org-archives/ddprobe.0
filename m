Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540E738552C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789292434; cv=none; b=El+7KK5I84qE3IZtTsiENX2wXfYUFxKuq5hiGxa87/pO2lGefqcGu6Vv4G+kLBuzHLqxTEEc0CULlM1PRiW7ash+lvAWsPGb2/c1mdF+STty0swr3pL7dhMPUhQ6KndKVXlND9IPRnRP7d3FScFqpmWo/fFNsi7wex4UYWc6BzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789292434; c=relaxed/simple;
	bh=3lHdCFEKvx/u/Qwy5fylAu07A1cymqsQdqZMGs1Ro6w=;
	h=To:Subject:From:Message-Id:Date; b=okKXizXEe2i6rP36fAyABSb+kBY7BedYbmxtsD3CQ1gjBMGFI/4ft2wmVLCQ1MmpQ8KgSGCdIKuiokpT+6pnHEUKT9KEXZA/DrDxYQvESkvUzu2ZaKTnch2767KeeggxlLvHCiqC6sNCx6qscKIVt1TPkD2Wa4LgBXmqxQDz9a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjikbtsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjikbtsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFFDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789292433;
	bh=3lHdCFEKvx/u/Qwy5fylAu07A1cymqsQdqZMGs1Ro6w=;
	h=To:Subject:From:Date:From;
	b=VjikbtsVF1DS7e/Ur9W4jfW0XAIOiCDu32xya5PAm0CoFSI5NA3cmNmAVjrJ9Gccs
	 mPduaXhaoIpHdm6L1/A82Id9dIj4+4Z8Wa8WFR1yTe39aWg2ktbEndyjNSXhS7RbsR
	 j/6LbWz016OJXc0wIG3o77dO5lBHoCyzH9QAS01iiBN7LxQ9IxJWYINha5qUO0JQew
	 CuTPlQYsZG8Dvfb9/HaZKiHIuT10RSBZM8ve1iCRKWsNSD0lRrlP0Gb3JKC4w71Y2J
	 BMXlfA8wPIXjdkJAiRdGs5PvYNcW93NUkfoajHAM/whIsW27AH2n4PQ6Q9QZM1d2w4
	 G9jlPzB3H1glQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9544C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929243368.10520.8840392211355981729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ea7f7daecd1a75a3e7dc22c112439daf4da72889b4b89c0a9ad3870af4c2d7
Date: Sun, 13 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789292433
