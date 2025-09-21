Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BAB26E6E2
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758475793; cv=none; b=FcaMarDwRaU+1846beqm0SUetxTnmb+IhAnUfvDmgbxygGXAOHj9kWEdY6n4vD1gOUwa9VR0HvcEDTk8eo8aAYce6oE1RKKZIz7QtWrrjXBHPP5inoOgSutVBVmO7bvh6VIVerwMnOoXwUop2G8NvCBpsbKIl0aE2a3EYfdJZDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758475793; c=relaxed/simple;
	bh=jIYyHVzmZIzLwmOXMUxXsZBbtPDqiZ4qMNiqQyXN4oY=;
	h=To:Subject:From:Message-Id:Date; b=oBM0mJHeWcpk14HGFgiAozmJCMdmz+WoxCMCSiwHNTQHd51+ketbEb0vsSLi70Ad7ksv3Ioe0L8GnT+Jab/s+G4zwRmfLHmVDeeU0tJTg2q4lgjrlv1UKfJoBL/4yXRG3BbnGmdp7OuXza9s5GCQg55q9WWFjhkrUIHkJbzbapU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MztfhLXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MztfhLXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEC8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758475793;
	bh=jIYyHVzmZIzLwmOXMUxXsZBbtPDqiZ4qMNiqQyXN4oY=;
	h=To:Subject:From:Date:From;
	b=MztfhLXPqfFF3dqsdZzb+Ju7pQdTViFsxj0E9FMRUvs9je4qVbhWvsLdThAjfFkXa
	 1cd1L7qmtAijLAEc7ouNEYNP8Vf3CTmmeC40UXAj0x5dsoJ2E5WVrzDyZ+SIdPyyPh
	 afk7+izoGgJjn/td/+IxedSM7ufsfdd5jqSZlXm5/eS+IL5stwa74K0XoQNg2FuKNE
	 n20LO0ojqfhvq63Q5YFT+QBmeLtsGfUINMUA0pUTJ7JerlU7Ju80gNa2Gqc6CPATQ+
	 WIu6CmCvjZjfBIFLc7WNeFzEDnmHL3sPjnTo4pvhBPw6e/PpRv42CbIYpa02xKFD2X
	 urQ6Z6dFPnEAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE9CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847579357.22579.13622693011658742596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d0728f78694959de9c0c63da0a3819ec7f74a5543140e20382c49e03aa3654
Date: Sun, 21 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758475793
