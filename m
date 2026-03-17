Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C1F35C182
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773785094; cv=none; b=sSnZW8PgjAslQVl/OBEKQe5T6Sfv1/M+Qs2AkSKJXIkxP0qjj6JZzblL7/lHwo67wy8Sv6RRiGO/3qf+JjfB13m++02OPAudSwkaxEbsadxZjfytUCxs6kCZn1oEwYvtbHEyXkl4OEmZNwy4C8btJEGIdzpH3e/vAscMiHzMYD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773785094; c=relaxed/simple;
	bh=3Ze3qMmXrSiOdUi5k0rB7CPJocCAqRii3+WTe/0EX1Q=;
	h=To:Subject:From:Message-Id:Date; b=AuCKDDYLKHNDfgRI/wQUGQM1VhieCrdKA4ZnCpCLkRabGYddB+Ij6PPPLVyyxSfbjoRLBquI3ZKxvWbioujANHCoLYs103rWb1TOT7DWvrMCVN+pDYvkiB9oFq0+UNLO/HrHKbhd359d7Y/7BsAWMd/yyiwZ+R0ktvypHDM6kCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxT6Pvcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxT6Pvcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0151C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773785093;
	bh=3Ze3qMmXrSiOdUi5k0rB7CPJocCAqRii3+WTe/0EX1Q=;
	h=To:Subject:From:Date:From;
	b=oxT6PvcsmRDW/6mC05MEAtgX/xjA1HXQj3M/6rNu75W9PoF97FKxSUmekHCHnlUoB
	 h/w84Gb+0XAioFuCCY9GtsQsiMXMA4vdy+IOeVCoFF7RqXEJwGzm878+RIkj6qIgvW
	 4LPShdNShax2xQP29zU43PtQS3bEZuBOMhHO8jLcWDgA/RtJ/s2qC0Dd6g7vXd2btt
	 5oA6O/Ykbh8crA5DrVZRQhTp7MqRffiiQrx+8L42nY0hAyBpujgigR5TMea4q3gD7p
	 seFWoJK7InsrVSF5yjcDSxRQBZKHIQiT/OpVdcraiNWhjo7kXjpnGsh/0Zop5guVbh
	 l7oktT3Al/Ibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DD6FF6E8C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378509361.8829.6151319524181780208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ed5b26653ffc48aaceef6d8f6ed986199ce30ad2e21e002be5d4cb15fe3760
Date: Tue, 17 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773785093
