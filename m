Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3B82F2A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749085796; cv=none; b=EOy4XzgYI2hnpCBplh2eYyHKOGfygFPK+XkDJcJOFQlGCqKdmhq1jokpm/5cgjmQY0nDjZC+BiRyNTZvko2XWOXoShQxBMRdahoGUC/GZlYUIQ2fTroKr7/9LNbYr63vifPjkHFjMyjXUeE7IWiSEjseiGSyq3zt4XqsOeJo3Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749085796; c=relaxed/simple;
	bh=zDeQpnSlSX3CPGvefeO6P3JhJLpD5Tt56+/O2T/T1pM=;
	h=To:Subject:From:Message-Id:Date; b=JeW9TIjV8QfQGQHjHWvXrZuj/xdwwQjOlRdAspF2uBSK2jod324S0O0FmFi9Xhm98lAt2Jj3KhD2VxIVbNOYaXOqLJ2D5bVZMWHsVoxEObulDMvNdr40jWrKuLO5qX1+e3/W7cQckP07AqvKbhAhueTL4jl7FQY0MpCArdI1dBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2Ue8dTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2Ue8dTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A860CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749085793;
	bh=zDeQpnSlSX3CPGvefeO6P3JhJLpD5Tt56+/O2T/T1pM=;
	h=To:Subject:From:Date:From;
	b=X2Ue8dTUsqPFzHiGySOMYeT8DOmO0pmdHniTa1zpq722DbiFe0Cy3Xm2BzgtTgl1z
	 q+jqyAGmLhS83Ue2PBbeAGvDygbgKyamxPoZtnCcg+nmq2y6y7EEGSJK7RlNb2Rw6Y
	 fF2M06W3XHQA+EIuQOysWqNXYUfnkQiBuNJvnOou07uWFTzRs9RJPBt0eQixYHUZLi
	 s3rda2E5wEyUwOZAi3vTnTYE8XwirZwi4BH5ZhP8YfgVaVFpt3Axrr+18JJLHljrDE
	 KZHEbT6ZaYupGxGhT+Q14BeqkH1Ehfmc73mquaVW8rgmJfDxdSe4JOiWl2dSn+phBC
	 BJ4h7qhpvtUDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C7FC5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908579358.16311.13566480428590135012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2593b4a5568b60c6f97531d54e9758be4e25949335fdeeff8cbb5efc4aad6c4e
Date: Thu, 05 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749085793
