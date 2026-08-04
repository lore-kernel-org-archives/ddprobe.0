Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C87D36AB4D
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785843634; cv=none; b=Tt9LDtbK50KEvOePSx18ZrzQcWlE9MI62usr7Tr1y9KrCoRXB0mI/tmEDaMJwco5YEm2pEa9/RVrFJTyLHi4CgzVqMTCBJS1iJUMvXP4Skwx5FAtYaqeUpkdveWbHy9Pew4LhOq5OUDXBZzbGwaconSnHDSjoSQZFLx3kTkY4ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785843634; c=relaxed/simple;
	bh=tczsSp+L7TU9vndTOY4TLQF1BtvLjKV702jAixTJG30=;
	h=To:Subject:From:Message-Id:Date; b=p3kos/YsCzD0K3qHsucP//Fk7BPJVRBVuv4XyXY2koFClzJgyXXYnCEt5RdRqpl0t2gGew+XCOtjC3AFeB1u3yvEkxGXeThL8rA+m4iMHxqfnAYkxnTiVE93ap8loW7VneH00cPwYO+ZI1uI6Z942Mn4qKi9g92yMD3+RLMvL7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZH7DvkKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZH7DvkKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF44FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785843633;
	bh=tczsSp+L7TU9vndTOY4TLQF1BtvLjKV702jAixTJG30=;
	h=To:Subject:From:Date:From;
	b=ZH7DvkKXATV68BOA9k1O4NFgepUy4pXHwAdxkoVL6B0v89ruOrPvy9YFAqcQBrFAh
	 lxXOQLsY4UMoucspKf+VPvIvkDwyRHQm2WlFe0RYlcjoo8vtQvUbDjS7BaKDsQCHO4
	 Gvt+MoGiIzD21WSC2Sj42t5FyBuze5H+ai+59aVEvHcfw0ZY00hoyDw4ZThlKaleqd
	 GXgrrNvEIMeZtjzUr3rtZNldoTlcl6YhYZHhDJ9KNrfEH6fMt8X+aXo7Etm1WR812i
	 j4wMw5xQYNE3MlW5Ump4Z6k1ZqiHyyVaXvp2YwjdyA4pmYooPH/+8ic6EY8FHyCe6y
	 BRm11jkToR7Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A7C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584363368.4869.12566686661908117559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b962acd59c55730cffc9a913e70978caaac14272e29e33f057c489e556c70bd7
Date: Tue, 04 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785843633
