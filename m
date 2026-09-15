Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A29025B09E
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789432834; cv=none; b=cc04Ffo0j4KyKMU7+6/Y/Orm7vuwen3dzkV0UkTC5dDv768WBZdf+ZXuP8THgwlsvyOEpkoy8AozBb+CxQlgkRhEKo2FR6vhX/WU6YiVSA6xVDIp6Chle11pwGcwb7XCC3ZqEXLsUG4QV9YUWwCmCEKvikaAJG1AOB5Ud1039xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789432834; c=relaxed/simple;
	bh=QTsD7VQk4RwBXDbURscnAsJwQjngXACW2ZR5FHchPV4=;
	h=To:Subject:From:Message-Id:Date; b=k6wl0fnqjzR29QnCdScOm4PbeqJTFA/XV2tETJ8WeIT1w7JueOPsSND0CLbONCrTMQ7nXinwQ6LxjWjepJVVu/Iv4KII0uCOUmXx+0ynzlpy8VMx1wO4s/Hwr9h2aYIeNMCeJtkBw+5ATR+F494aKFZ21i9EFLqlFiTRg6leKiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXrI68VO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXrI68VO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B13C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789432833;
	bh=QTsD7VQk4RwBXDbURscnAsJwQjngXACW2ZR5FHchPV4=;
	h=To:Subject:From:Date:From;
	b=KXrI68VOi9u/X2/OdFU8ifUUINoCEFaKIxhDyelBN/8C6S56B92GiJFCeZp0FRpZd
	 WPGjfSvpey5ApZlPrgqctwiUm/qm5sisT8T1OloX5RouK1tMUpMpCihjZRXctuhQ/k
	 Z6a888FmCzorv/e0gBLN1gve2QKe68VjrdOXX6K/um3zamWcthkxGG9KhWx20RhEFa
	 a7rhdr7nlJJivOfDKhDXUMkkje/2HUSwLxKipZyP3pLQpcrZ1ShFbe/yp17yuxpmdn
	 stZAylEihsqmWnxZNf8Pf4cAZKQxu6JRsLqQzuUj88RgkVUaJh8kLsGbzuvGNpq2SM
	 /jRS04pAFd2zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD45FC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943283368.24863.1491814160887084537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93edb5d55512a9abd454c9e04a93b37ce5fac829296c3f0ae3c93d86460811c6
Date: Tue, 15 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789432833
