Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AB515572E
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 19:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713208163; cv=none; b=ReyBNLUXYuTus0bUxkUHtyxxTtS/8l4ah3m69fkAAj869RCTsMj38hGxB587T2YR1N6pv60VazePeAOzOy9jHGjrsWOVkshR0yKdF6JhYBkxf+BsQssTfNwjgXq1vPpL04xJ3f1vT1C7S1yPJ9k8QjsuRHxUrSax7B76ukNxouY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713208163; c=relaxed/simple;
	bh=oWlRLxBwsEfNVcYUe4o395kQQraDFG2iV0MLtNfYgqo=;
	h=To:Subject:From:Message-Id:Date; b=Fx7sbJTEHTsk5UjzIt7OAR0ucjhxl4FHNWNVZ3gAOJbJl+yNgesFN3pYrSWmROjKK2F64sRsILuHA30VM1QUg8g/Pu+SjWfCS8bZA1jw0rtt/bUBLw1ZJjvfEGQ95DIhK42BksCEhTYRkgiUtoSWzyTTWcVlhCZk4QWuxNEblF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+7PwaQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+7PwaQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01CBC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 19:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713208162;
	bh=oWlRLxBwsEfNVcYUe4o395kQQraDFG2iV0MLtNfYgqo=;
	h=To:Subject:From:Date:From;
	b=s+7PwaQilXPix/gAP5zT+QqxW4+SBtL+GQpk2MwQGCgniCp8OJ/rnGDpHSZRvfBJg
	 sFMZs4IDIy2PMTGCBkaOLDj+l1CkwZdvAPM9WPls3UWRXPXOE/F1nbomoyPVFA5NJZ
	 zG2bo5Xm4F4eUzmk7agnynAo1u7cAA7Cy2ZkwtDrY/17f+du7EJilApAFeM60dw0Qt
	 RiX7sbQcJWqKA03F+4PSGL6T4iC9Ze78QweYAHncE5nMWtsphLEK2c0QOz5Zv90XKa
	 Ljb5y+3eQyb1IFt9TWOAMsQIlv9IP1ACxvL8wpC4aeSa3egqAZNsHeZgXPByDn2ojp
	 lo4CuaN+4iAJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD648C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 19:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171320816275.32625.8757994273123589671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebdb2bee508aae0adabdae352aa531deb8e988e9dcfff6476be16f35e5e265b
Date: Mon, 15 Apr 2024 19:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713208162
