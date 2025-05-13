Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBAA293464
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747143596; cv=none; b=CPzYIJ+iqDOy/M4oiGo/NmSpamJwvqXf/r5M67jV2yO+KDYfmcCpfgAz28Cp0plZ5Iq3j3T01VSxLR7mhkkmld5YwZJIM8pXyH0fvy2YP5AZEvgIKvM+5WlmiNKFwla1s8dz6wKDGjpcrqaPx3k4+qDGGfsf6TfgxdznZvNHrPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747143596; c=relaxed/simple;
	bh=/Ld7gGUzsz1dagtCJZcY/7cw0Sh5tqkYHFeYLtRhg0E=;
	h=To:Subject:From:Message-Id:Date; b=WwNNdjPTVIakFbNx77l/HXKIZsfJ+m/q94YQcioRpPsKYtrTRHo30p93LzuY5b4rVftu2kBOiF8cyqLPWN9y5Q/Fa/F5sMiQiHSkRGVQHYuo5+Zvn6wR9mCFDD/gaFM4gi8LDQsp7DFv9KiNmdpffIDA8gcTXLqkCUx6eafig6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5cwwbXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5cwwbXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4E8C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747143593;
	bh=/Ld7gGUzsz1dagtCJZcY/7cw0Sh5tqkYHFeYLtRhg0E=;
	h=To:Subject:From:Date:From;
	b=T5cwwbXUlXQDW+9j+4/a6qN+NWsr/efJ6JHY3SS8chcfOY9W5r+bxB1rw8FbfmiPf
	 RPgzl5JwAi4sSXipuTpbugg9zovomBwSNHT4ljO/6H+Ek2Nf1IfpuhkkvU4AkzgQ9D
	 ac5tn52sHTB1dtbGSFKvm5AhEiaeHZ4qT67qJGkE28W3rP+5znhh2fXqW061pAyM5c
	 7ZulQ+zsVRgxnLXXaIHs7whZEnS5b8tVv+7K6brjej5z+lMPegaKiKTRlQvjcYJXYv
	 pX5sTkijpaMpg9r/0fSwc8GMDmk9Xb91cwzd5DYUjKl0+muftu6t8wkcsHcIYBoG+I
	 EtGFi75Lv7aHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9019CC3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714359358.2047.15084117916717616381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e66c6d0b412dd9debc752b89b5f40463d4eb0e7df8895ef8b558ff2b45be6b
Date: Tue, 13 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747143593
