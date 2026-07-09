Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F473A6410
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783574914; cv=none; b=Vxgb3NWJ81GKSRR/rQ/C68o3mOYQxkQZ9SaLd4ojPIpIvspak3DprFatWltiYJLeJna3VKXZF1N8YEjAdrBs3N7/yfx8bhfdOkUYKeNLm0BinkR6bpKrS6n0Co8jKYLzmX5GYwxXxNTsQIrhQY0ESPUP3JGgjfajZt3+zCylzm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783574914; c=relaxed/simple;
	bh=VXcrcwIKZyYhqA3FyUqsHMG7zNTxMOVxpEZXO/wFpos=;
	h=To:Subject:From:Message-Id:Date; b=HTw6rVSY0ownWNjhMj9FjWI8kU7P4nA8plSDmAofz2TdJyIu+L68rRNoqMAe9D7eST07qWf9u58/Hi1R1f2k1Be/jo+xrd2f3RkfN8Ruzw+fCQmfqNZrN7hgNhObdpsW5DcjjHhnfaY2z+2i3XQNSbUsSlNq/d3EMp51Z3a8EXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJe+GSmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJe+GSmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBB2C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783574913;
	bh=VXcrcwIKZyYhqA3FyUqsHMG7zNTxMOVxpEZXO/wFpos=;
	h=To:Subject:From:Date:From;
	b=ZJe+GSmviExi5JAO5Mv4APksU6KuzGzJ0Z6rcihKaiP//YJ27kpRaDFnxdUGlNlAa
	 VnavxjRQzkrYD4b0mG8JHprXeKgJn6bkdJ91r/YA0cTZckg557h5brsVcqZQVv8FwH
	 zv//j8oltCN+Pim9NU2V3AuQyNh8N4qagPdPPd2s7jCAo4BxVGYq1VF7OfqgcEBYdB
	 9UpQeRnoL0gbfWaOeus4INClZhGFSC1KBiHnjqMz7t71iV+9KaQtjPGY5+YFsuA3QZ
	 MbKgivh+NRhXLb1nRiC+Y7fPMLVBSsOLV9VlTQmpeQJEAbmOu+XIoJy+mcqmxAeH98
	 rPtzNe97wnt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC40FC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357491369.25612.5515668180385335019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44af7b23a68cf7d8c5ea860cc2953385bd6878b55c2f728536ff960ca8165ff8
Date: Thu, 09 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783574913
