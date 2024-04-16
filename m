Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC0F1CD06
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713239963; cv=none; b=Ix38VC3r5yRMa34dvb6JE5cN293TUpDQTwEASjET5IJMRxpQLWkf39vwkvZpW4l7CwEzYm0jZocZVhEmKbBGa/shJUrPmBcc8K+xhidToxNvt7/b1wE0J6j0EAg5N2lCe/DvhytaF+HWX4GoeYkvjJFSQYaDYng/n5EYgBUmK+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713239963; c=relaxed/simple;
	bh=K8FSxGIPNTo0WX5xbMWXnJ2SNel3Nbf8U5YU1CdGsA4=;
	h=To:Subject:From:Message-Id:Date; b=qhs1TdB7faaPpNOBhyNlUr5wMFldGRwUwQBFyWdNpUvf/9R4OGTb4rlRtaeunTS82D/F7+OFXuYixrxgXVM1QZ2AoCzcMMRfkX9Ga6bNXf5w5MSZX+RXlmhEImBYPm5ZAjYnrgR4QhE1Kt4wd+dmpd4qaeU0dXYlGMTu3uDoMeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNiildHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNiildHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7ADAC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713239962;
	bh=K8FSxGIPNTo0WX5xbMWXnJ2SNel3Nbf8U5YU1CdGsA4=;
	h=To:Subject:From:Date:From;
	b=aNiildHjlnwihCoZyKqcia8Ae5TKQP1iM6tIASXhw2h29xhTC4iX7U4nNZ3wuh3KH
	 BQHKjTgBA1vBd/KJ2GY+448t1f2wXupSdC+YLomjP8MefBYqRS6ddVIwL7BFUjyQ0/
	 Z1IiEeFaabH6Hrr13IVCeuTp9m4azsnC9ktvq9W9xONNZDRBpB8QqQg9NxKrGf7w+X
	 ZkGhDDsnQlzBmmjZB8gb46ZdnV2OoiNcrd1Zz4dKnHS0zc6XH/pHLtqDQ1eT/9MoAf
	 s/PvjoHg8QpmWKNg+jtUXnuQXuIVWN8zDIwRtHKP7FmoDLzhZEsYKEm0eeDKdBJRd5
	 VKgZYVjEUnYWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CA9C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171323996279.5742.6641088690416153566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e1ad80ba03c95656ee84ece1cb4d1ade37c45829ab73fdcc684943f2fd1ca8
Date: Tue, 16 Apr 2024 03:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713239962
