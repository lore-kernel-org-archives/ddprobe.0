Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D582EDD59
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755787793; cv=none; b=LJOoAx4ABdUFbBMaV7pxlTLbBRxOIzW9cElYYkGecXqfLGI4Z8IkDUsSnLgtkMZqVM3AdN3bF1UuyQ3kHqAdVIsNtoXc8zTZ4ULHKRwAEXhyfgnR544R3zT0Ofgpla7bGB2LH+gQKkD2d9PQkiUwSnkb6ipZ8Df4dHK37Pzs0uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755787793; c=relaxed/simple;
	bh=vkwpVeDD6q0dUTDGqix3kOOUnG09x9Iuy6fhlwu7sdk=;
	h=To:Subject:From:Message-Id:Date; b=in/iyhhcFSLo1VkSLeYLsZC+b8BXjdtWaCq9HHspptza4wiosjiaYSZeqR13WSC0MKC5+r2S6bAJ1xYlvNtWmTMWILvGA2coxzr8BEmXA7Ok4PZrT7Twa76NtyXQm3WqzqEpfK+2sfHfdZj5dtsofH3BY5BBanUDyPwhnWaYBwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAUUDhzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAUUDhzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E98DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755787793;
	bh=vkwpVeDD6q0dUTDGqix3kOOUnG09x9Iuy6fhlwu7sdk=;
	h=To:Subject:From:Date:From;
	b=lAUUDhzbF0QoFao49L94K3gq8WUDinEis3oQ7LvVGHc9TbKwP7ZO0PExdIssA9ahe
	 q8ihSb2yW9D3qmMUmP0PNVZEFTFGWYa6wiDQIVtZ5PQUEgz+Quxx5Ap/ujuASUlk+M
	 r3gkCngNCpvi5UfzApXhE5TppTU/F0DMgCAlndndxGXOxr/6PXO5XY4q+Oj8sca93n
	 GELulFnfDaL+asdfvximPUNgzosGs2fCktdueOGhfKacRHCgwxAweZDU17UzlSlC9u
	 ESnxOON3AxzVjQBllbldphXf27u1udjjXbWXyWbGdA5MkZWudXlb769nDFo538hPMe
	 CQiSWNWPe11tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DAECA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578779358.29178.8789238739927390577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451c8679e7d65c0999b64e53320276b9ee8389b84f7b5c1b6e70e49d0c60069d
Date: Thu, 21 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755787793
