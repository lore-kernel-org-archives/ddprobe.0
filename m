Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9C243BDA0
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790286634; cv=none; b=IepQkMrA7zkpsK6VmVftcaNiqQQ794bRXm/VTH1xLSz29N57dBnpbVVkwT+Wrzle+DL0LzHJRN2YoNx0ZkqJKyim9oTSY0JEGLngFKPYVi0GcnqeDBggQixwMHZW4DlyccDYaomCkiI0uzLIhTUEiKzeLAP+Mj8bKnuKtwN0iQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790286634; c=relaxed/simple;
	bh=1v70+f+o3qRZfvDMWHI8kGfYWUmCTarUy1fSVW4YeB4=;
	h=To:Subject:From:Message-Id:Date; b=MDiUSP1THzrJi2H5rvBo8xVXldAhnysEDj22nz3Ohp7JpIR98gmlTT/Lq5uNHqFdI/hCx46HPh+w+6IKs2/grASPZdYVfrk24xf53gt5zOaIDeDWH35SbZx3NMWx/+E7zwhmKjqoWkfL9Q38g1oS+ts6vu/0/9oR8d7IFtEhOyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkwieGjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkwieGjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26EBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790286633;
	bh=1v70+f+o3qRZfvDMWHI8kGfYWUmCTarUy1fSVW4YeB4=;
	h=To:Subject:From:Date:From;
	b=ZkwieGjAVq/J4R560aMb1s75nuUm01RlOVE9GF3mwtPCjEhEV7RnQzp6HtfyB04+w
	 z8eSu7oAouVb7LCSDqKhPnq++chKZxtZJ1FYdA3QBR/TL0JICeE2XowcDBUDFrz+CF
	 KJPkXAo7aDBgyPOMvLh7T4G6jqJawdLB7Dhgo7BoRwEuZJ/4vwDIUFTaZM5iiq6MDK
	 l1eO4Lu+BnxPEWmub59JNlMgnwWPRvLI6qIlH3ZE3HYpNVS7DuxAT/lyXW+f231XAz
	 qflDCZZBblJ/lV39WwI60RUEhv0flyifENupjmX4vn3faU+aHpNLhiQopsp5QXdehr
	 1zo9cdK3lqe/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C11C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028663372.9011.15704494923652967612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed3e6c604fa5d93306e0eba8d0cd484a93517f056f5958678b1c001d04d97e8
Date: Thu, 24 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790286633
