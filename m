Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41516194AE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717676843; cv=none; b=lSE1H7grzRqHXzwaJfClSwA64TdwShkIrrXZEFBV5M1G/yrnp2Mggua0sASc8z/KzqY2NJCKg7UWC1tO77YWCDVyS4hLWESSuvdqS5fEFaWQEm2a6DlDErld0zo8LB8ndO0eOLqVQiDCyMDfKdPfWBym9P/PMAw/x6NbGGZ0CA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717676843; c=relaxed/simple;
	bh=b/ND5MnKZHsaF6ZGeA7UnlKfSZ3UffzLiyGjeiRkriU=;
	h=To:Subject:From:Message-Id:Date; b=lgI3AFnYUrWUdeTR34xwgBnnD1liToegebTCCWrCkPM0B3+hCGsQJnW7yB1NdBuJQd1RgNYgky+DsrmEYqUZ+ssXW2+8viHRU1YLZLkeFL1VcRZfEVtG4cvr/72kv29pZWT3FTihPZLGQXp+2/wbiMVjcxz42CLFOO8eWHbksOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HX/uKCRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HX/uKCRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D278EC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717676842;
	bh=b/ND5MnKZHsaF6ZGeA7UnlKfSZ3UffzLiyGjeiRkriU=;
	h=To:Subject:From:Date:From;
	b=HX/uKCRotd9q5hYxRVsedrNjxlP5G8X6zn8LX+YUhtKCywBLcmlr++xpvRs9cUV5e
	 0S7AMPh5k6AZ17iLkvdLF68zy30y6cnvE9Rgxd8EIz1z0atQ0+27GZmXRTfrvShN18
	 bY21Mj6yYlIk05PqOln5bjdR8w/C6VNwuAab3qEdHv9vvLSg9rFUXuwA9Nm9oyT3Ee
	 7a22XS9ilRmZpvHUL7VAN4mWz36/qgABxeiZBySnf3IUwOwV0eSHMDYNnRawUOgDVj
	 +2xZL/vj0tX2O6kEGJIc+xup6HEiI5+83q5v8r6h3r7MUt25hIGhBYWy5qjypqiQlT
	 XYVArh9QukFpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F6FC27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767684278.28064.4653337602991519142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8884f8fd2adeec7c1cc49c5de6118e3db0c294f0047100149a57314bc2c9e900
Date: Thu, 06 Jun 2024 12:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717676842
