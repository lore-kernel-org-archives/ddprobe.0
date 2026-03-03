Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D918305057
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772569494; cv=none; b=oPAASQegJnzAWYw58s5O9SDs2y4fvK55cCf0C2zQgzmze5gYiy+jDBph4J3SUGeP2eZArxjvBC2FtM8yOr/6cn6+EHMijol8IZEKZDYhr4/sDRTEvkAL3J0Ywv5SfaEvQipn3mdyUwx3GWlmd+M+ks9WqHikXzjrD0a1xQDYs00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772569494; c=relaxed/simple;
	bh=cdykKkw2QnqjQX67J3yFB+qziHRcfR69t5foTSPkZLs=;
	h=To:Subject:From:Message-Id:Date; b=hS4HHgVmR5u0l9LsMJjsLULPUvi1+VGJyRlZvE4lUqNCCdb13bofoAdDb/0V7cRjSCTd342s+XPjJjmko2/oWWSQfMb/4VUfOwAuxlNHrPbjoFzP2R7PtC+V1PXDogXkWOrBHsy9xl9KwZjX+vfv2yXfl4kITXCjYm1aHZO+6lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEZcaIr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEZcaIr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE506C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772569493;
	bh=cdykKkw2QnqjQX67J3yFB+qziHRcfR69t5foTSPkZLs=;
	h=To:Subject:From:Date:From;
	b=lEZcaIr62e+2wsoVWkeNwJVnCAoeLTrmQ1qdkGsvNQvEDwcah7Q/lwgYlsteiwEWB
	 3E0sDxz+fFpNzFU3sXfCs+VytglfuYisU5CUraugvCpKwtpFt3MvVlhsLY/neSSDnf
	 +qkWVk25l426Sr8DNf69RH9htoLTKtZwHEKO9w+pfAJpU4taUnSHjIW3gzufdd55kZ
	 u+U+y5JOzXqoB7qmbAGY25YcJ2dnM2drs1t7d9GhLAJTcf55OeVadL9G8qMQaYh6cY
	 UNj0bJDABfRRQiQBCo04kwRS+vSM626cw6A4/G9Tsft9XcfJqJ1qsWkK8K0rehmhEa
	 lU1IQAb3W4RuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0A2EDEBF1
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256949363.22157.882659760749163110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae057e8e6c67b6f95a7352efed89115acb3915fcd333c864926ede87b8fcc541
Date: Tue, 03 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772569493
