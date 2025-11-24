Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156631096F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763974914; cv=none; b=hXLzutXMwfUWj+LM4hDvF0cCQ7zTBWd0NA1QQZp9ne89PvJ/YnmPlhVqmNjpo9oK8GENcmP4QTtIuC8m931A59XavAddLNHuC1flTKNMNgFGh30sAjQNpQZlBQgTNf5/+cCrVFjVz8vqPVbF6WHdOHwtff90pGalqJE9fz+khpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763974914; c=relaxed/simple;
	bh=4+Ovvx8awXjKRnzV3BP4dOHAiLS3bZf6RHMEhODBdH8=;
	h=To:Subject:From:Message-Id:Date; b=oCsoiJ9tyAnIJIVVTFAodzQa2ANfI5jtAfzMNOn7sIkCfH3pJ2sCJ0hmKuWv3u1KfYFyOjcrGbqI8O0RP5cNiiABkwfDIXp08DSmEep0RWkDtkaUDZabLG0Q8vpDMyb0Bhj9oGkP6LS+41c4nRYlyVQf6Jo77rQyCi8opDMn8GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+zyqjeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+zyqjeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763974913;
	bh=4+Ovvx8awXjKRnzV3BP4dOHAiLS3bZf6RHMEhODBdH8=;
	h=To:Subject:From:Date:From;
	b=e+zyqjeANbHIsG00PpZZM/UqXb74LMXKGjWn/DgJ+nQO+Nn1yUVxmU/kw53uvwJAy
	 V+JT9EEHZk6Rbll5cIyAMsBv7cQBb6fmP36CUf4WezHErRa6OXU+svovUUYCDokz43
	 lYIkBQP3qLEnxX4s08TD+NmksZK14wdz6wK/fPk2ZYccK8v9NSd54eRoDeFBzuFiHh
	 lBklrduDIpxDyrp4Fdh5wolK1rYLMB8jbgjr2iZP8cv1bcpGjJX2xCeo8SAgPWLqGt
	 coVdsYdzX5C4uWiNjDJmH5DWbvm3astXxdDonKbBxZI2VXItOIExjX0+aWKiRK4KRj
	 N3e7lOXdURqyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93142CFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397491359.29514.16734686285098631014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5de4883911bd82fd16c8d943dcfae3ac759840e1bd68ec9d2891a195981200c
Date: Mon, 24 Nov 2025 09:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763974913
