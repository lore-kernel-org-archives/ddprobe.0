Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57345EBE
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725237354; cv=none; b=l6ZKjp3SzE005vOT64SEbzOxmrygjH/cM/d9N7jCAu3aNTpjfWvjgolybXFM1JXrg4qqtlAVxH5acnRw1aEz4nyr49gboaxky3xQsCuWz6eujcDyjoKzZmVe/UozMqQHwM6IhkWZq1a1c3+0QgGaoarcalxM1b8xd5M3EwinKxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725237354; c=relaxed/simple;
	bh=KVeJuS68VwVH0usw3abx8qVO6fT2p107JPNIXJEKZ88=;
	h=To:Subject:From:Message-Id:Date; b=c3TjBtbm+O4Na1Eh9HV1dJqsOc8jRRCWbbRwbpuKGVHPUvXo/JLPeLk5Z1jB96LPZbc406xeXM/4IHVAjQbU7rVFDAzU9ZEh2wqNq0uCz/5daA01t7veQ2mStgruAeuY5pEfd2koFQ+5MDf8vrpzj7Fw+fb20XbmmhUcA1aPDT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcZqVm70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcZqVm70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF003C4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725237353;
	bh=KVeJuS68VwVH0usw3abx8qVO6fT2p107JPNIXJEKZ88=;
	h=To:Subject:From:Date:From;
	b=TcZqVm70fDS8N2yAC5Pdh2/WOUdNRrVarDNuKLU/T4D6+lHfvcODTSAJQcdHtTZDJ
	 qdqxMAbyhhr3AW9MQwk82YkK211OUG5YgH9G+GAhssUs9RmNoXy4R7ExFdWRQAGhJ0
	 oxUULJasZMRm2D2HiXu45aoZ3uEWPAwuY4Gapiy2jiDnyb4UgM/kEbAMvotwq694SE
	 hEDGIaAlciBP5XzkNh+IydIrmNJ3Kv50TgJcG3UMCC1NiS4ud7qNkPgUelPmatd7vt
	 newuBkajBeapnz0NPb/jA+vWx3OdLT8PjX4kv34JFyJVTQX4l9Vq1eCM4IyPtLYMHG
	 rmxXrS+HPrwKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A109BC54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172523735361.7287.17278349831089248854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd37a759ce9addba58618f08946d4f3a0913c9b35ad9769fefbc3752e505bada
Date: Mon, 02 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725237353
