Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189733218C7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760528394; cv=none; b=CdZ+2awhOneWwEA8lSAeWszs1JuBR8OlQkMxYwhWfoVEvI9h+8s/YhIF6Tmzc3XKzTL15R4CE8qHQ9BQ7EzZMSlReN8mFPzKeedEw8AJ9IiChps1N/eDGgWJ7INhnuO/NdQIMtElYQkLzTuXMngMmy81vYnBdasL9rCgRjDfwTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760528394; c=relaxed/simple;
	bh=gLbteUlSDPZPGqxDVOBs4rNaqQh7G5yYrdB/hIX97yw=;
	h=To:Subject:From:Message-Id:Date; b=HnG5Fe4Uq5LePwPd0OKEJxLda9Rjhe4J6ZuKj1Cx0UZoRlEMbWndMmNsWCXHpZCRDZLTGB363VEkJUEFV6mcWTslmM/qoCGyrEnoZ5EEZ/SZTWN3+zGd3pm147VHZKO2HnXN2pG7egZGf5gMDdzJK5tbdVYrxGcWzieK34u+4G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AN/mKFWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AN/mKFWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D9C19423
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760528393;
	bh=gLbteUlSDPZPGqxDVOBs4rNaqQh7G5yYrdB/hIX97yw=;
	h=To:Subject:From:Date:From;
	b=AN/mKFWyDvJRZd/KjWwyVfg/d2hszGIrveQaaRq+MfTmPdiqiHMf8seYb6xTxjBxY
	 y6zjGwooD0NiU9voAS/+TAuQmBTbcWleig3sdthNXdRpL9YqTxK/gcFos2gw6H/+CP
	 hYu0hSStN8MIr+66k1/8MOwhTc66W2q5A1eUaFPm5ADKZ/CLbeeJ4mAlXu/OCev1/G
	 oXfJjTWakZam48VeU6B+rGWgbT3nnqw5BxA2cczDz5zF/zdxIYa1ow6lE/3iQT6s4H
	 Ippad8avPr91BaN/uDBRn+FKWPpPHpG9gcws7BdgKIt9wQW0zwuETKfDdFVeVxLjiO
	 soB/Ci854IzJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9189CCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052839358.8621.7957853363476640219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0e8cdf4d42cb7bdf2edf825cbb367469b2444ae83d58a2ee78ee2ed4fbb6ab
Date: Wed, 15 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760528393
