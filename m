Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FBB03FF1B5
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786571434; cv=none; b=mJ0W3dIpR4qhZZsqcJROBtAqGCnP77ggulsu30GPC+9i5daG7fv5oYaZjW4mXKBr+pR3NbroMluNFfkxwSY7ZWCIqScvL4TzA0atcDRIp21VnzAsEn31ZV4fe0DCLIz8Rv/3gqX9jRPrXWVmKBb/Hc9HoXWSc7gS9xRxXGcNlXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786571434; c=relaxed/simple;
	bh=57nhOVb85/hUX3sT3C76mAxLd3ak8badgk3gvWtomBI=;
	h=To:Subject:From:Message-Id:Date; b=KAO7NU7/32SIezIDYMTk8ymM7aH0Z0jqcDrDSpqh7NcAcAc78vGru0M8O9FAQZB4KhF7OiGAYHOJeefcAVXcUgyDhuGIMX7QCuiJpVPijIePCfAyy+6g9QyKVT4wW0zZKyHHALlcc0C2vMFZU0o1lIwxd8mx5EJJrP/rsuzHTbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3zVdN2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3zVdN2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D582DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786571433;
	bh=57nhOVb85/hUX3sT3C76mAxLd3ak8badgk3gvWtomBI=;
	h=To:Subject:From:Date:From;
	b=i3zVdN2CPoBkItpJlw6DAl25BSebnolo2iHda1t8nKfMfpN1bcRSkgi2QVJ7/dU1t
	 b1O7yMekYuxBwI7WWXMQguenML1IZlFBISwJjcf6tTF4C7dFCk90BZP4mNXTyvpafg
	 TkrC3CnMFx4cUUCDVhHrVp7XzLIQagd4FMgMdyBytXwH7wKMAJ0ASsNQlGNex4LrRS
	 SFPCEyuVS6BGNCDfP+RlJ0ytefAtIJozo5rxV8gajniF6Dh6Zf3WldQWL2dV8rBOgA
	 KEJuvmfbMU3OlsHyC3cSzFw27e+/1U6U5x8nDwC5cfTsd4eB5S70Fhze7gdeLU7IwO
	 l9akCy8OaAH+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D34C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657143368.24811.4738174041905321838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f706e21dc72506d35666f947adfb437bd7ab66e18b54f30cb63f4d8d144a10ca
Date: Wed, 12 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786571433
