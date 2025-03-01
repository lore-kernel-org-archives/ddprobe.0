Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42ED31BD01F
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740858534; cv=none; b=bYdEukaym8BAB/WpobuSTtgKrGU5M0F+zM4YkgkonWv27rlzsaNRnI4Egv1ZVa3YDrE+bAAc4fjbEOqxJ/yEFGaUdupeKgLTTrmWIzcFCPZ6uIyNa4ivAVZqGiKW8n5TF1pa0kaTNYhnLJKdWQZFupYuhMoLz+qHM/FLjCyhfAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740858534; c=relaxed/simple;
	bh=lNdGf3uLQgvI7Ka6reyjuYRnG6V5gjJACrQGY39Ww8E=;
	h=To:Subject:From:Message-Id:Date; b=r2RyC7+RIiuZrL64chZvcxWhSMscdGE+jnwqMDx4AeXNX8VK3KSNHJ3znbOS5TnoVP1kEItyucO7URQU7u1ZHR4lFueX7CKbB2el1UcHpHtP9DlxfOpESyElg9N2ECOTv1wv46a5O64b9NnO1WqI4pOUyDb3nLIPeZ++2+sVas0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvH5T3Uh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvH5T3Uh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B757AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740858533;
	bh=lNdGf3uLQgvI7Ka6reyjuYRnG6V5gjJACrQGY39Ww8E=;
	h=To:Subject:From:Date:From;
	b=BvH5T3UhHmyfLBNJ5zhk3NtcbP5mJ9uWXG2uRQuaI94Xw4OJVWRjLKM3epSyM6gUU
	 kd3CRFPkUPmZlZgCjcKYasdS67SQ0FbYNGzNQqI0itJKlCbJ5doPeZnzcuyEtJ5nZw
	 NqShJJXpUs0O9Zw79WJLek2+DzpoPqIOezOL/6FHBGHWVzqFGLE7mbI/3oN3F6CgPr
	 SoHEzZt4/Pq+6kls2D8hiqEE84w55F3M41NsSMZ3kit5lz38mVkot+BdYwK7lULDnu
	 zZXfNgspvSHElAU5Yq5a5bkDQctJ7a8IXkmMMnaiR4vAD2NDywDOXPG4wo7frPxvbS
	 IYH2l9tsr/cAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F121C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174085853362.27301.9462212689473489272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ae3aae93862270db2afcfa8b980ecd98d4a2129d1b94a53332891d952fb351
Date: Sat, 01 Mar 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740858533
