Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF6E1C680
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715506343; cv=none; b=m7b/1ewjvnXjbYlhAw3vjFTaaL4l+doMzFJpNxeyVpVKoAV1w/BwsDiXURnvDjiEh1RXIHwUY06vKRvv2i8FDuvGNuK5HlWNexxamJHvonBbvh5p5OTbc1bXiZA1qNNMzQOkJsO/lx1Zzyjii9xCe6PTlO/RzvWkd/voVuvsq8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715506343; c=relaxed/simple;
	bh=FYshRdBzPOq225De0pexuVY+r6bZBmRUrInEKy8IW1c=;
	h=To:Subject:From:Message-Id:Date; b=XqDJ39MvkIV7r5zuPBSir74Shf69DQtNU5rWzoJYKIs41pk5TkkCAJ369YeYucCcHftDvSoCYGQeccWy27yH5gp+ecbUNHRH7RIPQqkXrrVF6W03fW3e35kQgNsQaff6e8YLRliWmd1GToLuUjIYvc+9w2nzJmlmlPTPEh6Q5+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgLZ1u23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgLZ1u23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C91C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715506342;
	bh=FYshRdBzPOq225De0pexuVY+r6bZBmRUrInEKy8IW1c=;
	h=To:Subject:From:Date:From;
	b=XgLZ1u23hCQ7fmzx2+PrKIa/KF6bWd/G608CiEyXttghTmauOhn202jQpa5ynmLwT
	 zYnEQv5YRXiphfHD0PFMnbFuWTF8seqDhQUpckVWsX55MZGTAgct7hAVtiqAqkG8xD
	 Mqnple4Bu4Ao3zjz+8gQL6kvlm84QiWspl16fvqqXjEZAw/pZI30KmLtW/hQO/GIYy
	 gEXFXXPTtIA7xzsRBM1x0cdEHZe6EBKc9+/S2Vb0OJeE2FuXmeo0QdsgbzUuSmop15
	 Vo7WqlRo/4uzLonq6JBkVKuVd2EDA8bZ0CAgx5zhtdsZRjqhOjWRIcPaOiJjTIC7Kt
	 39/3zY/4WfdMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3721C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171550634278.2032.16777371002162491877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd02aa60fb0d9dd22199aa25a872560138eec45f80d0ca80c71b70156635691
Date: Sun, 12 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715506342
