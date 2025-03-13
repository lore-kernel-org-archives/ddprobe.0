Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D880F22612
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741876733; cv=none; b=rhAiac71UpU1iZuz6pV6Vj96/gAeOm/twNS+Oa8n+M/pgDlLorMvx2jfheuFaFMYxt0qzIjuBALh7U22Ueimla5od6antQnmUuwfgQzL+E8LMa2YeD9OCzmJv3d6eYadXIpBD65jzSE5tkduVSjFFNAPijafmpW1BJl6OLhXJ9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741876733; c=relaxed/simple;
	bh=pejFk4qC8pz/o9OdVWhXhzeMGNkRTbVVGgVWsYRvcyg=;
	h=To:Subject:From:Message-Id:Date; b=uq1l0nDQlRz4W/G0YA9pibYNTU5EGMjaW6Iy2Cf6FIIx04tEmZgoK/RwsFFCPCAnkR+jNnIM4gaXYRab5FJ7CvP/VwS8hHZR+Wtmg9snsEVSVSWAasynB3FLdkqkUCamgfywCKzvffA2OHxYJpzKmY7Ub/JuxA/2Gq3wwsYn/ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPHTrFoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPHTrFoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB35C4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741876733;
	bh=pejFk4qC8pz/o9OdVWhXhzeMGNkRTbVVGgVWsYRvcyg=;
	h=To:Subject:From:Date:From;
	b=DPHTrFoByZeBWhjWJecp5nsV9SupBHVIdDY86yIWPMuJZDULfECXgiIxnr6gilvGl
	 qADj5f3BVPif37/pacMSyVDkRCgI/DrmeDej/Bmw+iWYtG7n5AW6Lc1rVlt+g/RyKH
	 gPs00VX7b6P6PM7XWiGNoAWxSgp7IuTRph7VQ+QyjENBQ/5tHQ5063l6Sdi+2MnX23
	 6RnJj5WS09qM0gAGswiOdGmPjF6mCHOq94AKKjkOePQ9M44esYKP3a4PtioWLgxmuj
	 aNGSaWABkwSS/wd4gqRIKGWL8mJn9q8N6AbU18WP+J2DNNfwYTJH430jQ9bsEYQceG
	 lJoNwSltgnCtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A44AC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187673362.28820.6986145624831185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c3190d1418bee08db8bac84ad3733812f85df7f92a78f28f958db18c30cf81
Date: Thu, 13 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741876733
