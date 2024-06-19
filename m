Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F86F2901
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718817563; cv=none; b=NI+GjnpdPQXJg5QPkRwlFyTOyIJ3Cq8J3kBnv4CDNFD0IXfwdj04e9GOvz9PWQOt2aY9yaGIQB+kW+iIpLQG42VmOrctUyUPTkKpl1RSmeIyJTygqDmDulIk3nlpZdZB3QdABo7E9oR1/pEjrQtTTUXZa3t1UXAwAwjLTYFjmvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718817563; c=relaxed/simple;
	bh=9TPo+ocnXnYZPHgZfOO1Cpar9CigKGMEkVaMkUjG++s=;
	h=To:Subject:From:Message-Id:Date; b=bXzEEJHDgKkjDiuMl9pThF5ageVv/NEbeJwtws58cmdYtmL/dX3RDgEmrVVkPtz18jT0B8Xpo+dTd5lRzrHq9jen6n8p/Yg4p4p8lvE1TVo5ac96wWGcND/bUKElR0Ywv9hxDbAFrxniIT20M9AXua5j9QXnmQwtWvSL+hBGcFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz1f+Mga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz1f+Mga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45D6C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718817562;
	bh=9TPo+ocnXnYZPHgZfOO1Cpar9CigKGMEkVaMkUjG++s=;
	h=To:Subject:From:Date:From;
	b=bz1f+Mga9BT59InHjqE5cCRYdch2EUA1v38ccIWmGrBraedSuW8UvFrhpWh6+6hrL
	 XUgjj/S57VhbvK5mqiUYdKGpsZOgyQgoV6xYxr+wDnoNv6nJ9NejAk/moSKerJOYaq
	 l9yImGWAUjGywOWoNmhX6Iwd0fbe92Y1Q7iK3dWcaNLpg/f2cU9pybxWf9ubfGFN0n
	 +U1+2scHHsN/MiIpd0PSjahSHX/8Z+LVgJDt12KsyEsiQMyTdVDBADZgXNrWRg6PQ5
	 DYt8mqO70CY0jnQyFms+kpK0O5ysokYra2aT78stG2msojInE/0/vp7D+oi4CY7phM
	 S5gVlUaaDNFPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EB8C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881756280.1131.17515824429739177240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fa1695f852fa30688a8420db922a980cfe679917da40f61df0aace36c3ff4b
Date: Wed, 19 Jun 2024 17:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718817562
