Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293621BC9E2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750757394; cv=none; b=hFD4BTvKLUgpIuqgzg83rEdpQf2kvfG0KjVGfLYSQy66cnbQBhLDyy0GqJg7kqzIjaI5pRRST4yzeplfkBM8e7qBf0NEWZVuxAiG0TLD7Eh+zLoSVVKPsQfTCsd+amuI/pDoUhGH/UQAziEXx7zvBV+RsHr3nHPVnQdI/X5BVdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750757394; c=relaxed/simple;
	bh=vNUenpc2h62n+MNpXj4wSNOEqgLiIDqQ9a6vQReWYsw=;
	h=To:Subject:From:Message-Id:Date; b=C8uGGOnZVhtcqRPpezDQkY8tedmN3yKaUQxl+uKIR79EGa7E5zDHxQw55HqNJ3pvNo5M2dMehvl2/ncHxbtHkxuWMjwpwX8/wW8Vw4lcUVUhYUll9qAPVa21aFZGyAobX8codV+TwnsZ73WbW7c3e2n61DUIrKeltJlWDoDTecA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayuefZvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayuefZvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB8C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750757393;
	bh=vNUenpc2h62n+MNpXj4wSNOEqgLiIDqQ9a6vQReWYsw=;
	h=To:Subject:From:Date:From;
	b=ayuefZvyl3HJx/7MqFL0sm9mclvt/ISlfTO/lsLLvyyGierywi0avMgXkWgdyqoIH
	 Q6p5knsGEYMcPdMHBpMFOATLVQYADFkLL6b5D814X1RK7cqvMYKbfcJMZ0Jq81rJom
	 +rOX3Vm9rAhrKf3jzEuHswoJY5PZkUzR8uE6sBGO98IPO0X0be4VR1YBIt/m9EtzIg
	 qJ79j1epSRY/G/Dynw+4WjjWuayCA18/lzB2Nti5ha+Oly4UxlPRiYbpTzWleqMYsI
	 VKTslLrrCcLsEXMgmh1j4v0UJ20RbgJmuoscxWq+PBJb/+JJXsohXfJAuS2qguUTgR
	 2cOL9D4T9WU8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBAEC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075739357.21892.1292595578415458131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9aa0467cffcc7460e195dfd5229f935efdf12eafe8b34b8f3ca31e4fc82fa60
Date: Tue, 24 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750757393
