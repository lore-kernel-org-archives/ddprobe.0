Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0F21B86C2
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723023354; cv=none; b=Q7V1lfIo93BvGmnHj3H7Z4gijOF1BxDGEqD+YVp90kDvvCanL9cckvcTXrM6zEQb8Ib/Iv1et7A61+d95rxHsvyVEBDm7YHyp0AZAB9Uo1kqFNNDRiyxiAeqd0Qo8VVo1Cg4iyzGX4ItG0bV3CU9j6QewtTfT2/m66oMZF8ExlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723023354; c=relaxed/simple;
	bh=T3blwotVMmmwg76ftn2Nn9CK0e7CyEcbiIYOvkg42tQ=;
	h=To:Subject:From:Message-Id:Date; b=dBz3qL1TElaeoccrbNa2jS24RPF6X+Vst9blNiK3jBtMp4xcbEKkbRiVK+VpgSCd/z0gTlWorBLp4xVPtJn8cogOXB57t1nGxl25+P0/uPfedH6IvrLtgm7BnR6fmMC6OhSbFsKOmUa4c3AVEN9n1sqOA8k37f6yYCqQW610vsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NE8BjHyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NE8BjHyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3916C4AF09
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723023353;
	bh=T3blwotVMmmwg76ftn2Nn9CK0e7CyEcbiIYOvkg42tQ=;
	h=To:Subject:From:Date:From;
	b=NE8BjHyQ1gofI/C0WuJKpj9sXrGbHUxTpSgtaAfZbPfKsIIZ5yPxVh+3LYmdThOvx
	 bjHHqQMP2dDDssyZnRBr2Ex1UwYyycrcEzaSsY3k5U90bB158mmQrlYTpAzMh9M5/w
	 o861Hm4rMj2/8aebNqqal0mMTskaX+A7q4EHzUaXYbxi52czS7jkj5Qyud7N5BaAlv
	 0VFXZiAi/0A0sIqjDvpEUMwqt/MPtx0li9Q5NFcH7LcP5e6e6BKBtHktJj4PHhpCRx
	 SO+x50I8oQh6xgnWdh8l99roMT8MJzfF3p786qsfbGRjqBggWojqjVguzv7qr7PcbD
	 Uu2gzkWk17cOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCFDC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302335364.6667.14409886367953672893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042458d5c162bfafb36cdd29757c2f6205419ec8347194629637a1074b95e2bf
Date: Wed, 07 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723023353
