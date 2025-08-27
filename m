Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346AC1C4609
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756278594; cv=none; b=SSG+5rPVaAmAJFcxkPLKfUPcbTfjnI+LbmK+ctxNXU32rzV0fJMzjhw9ctq1aza3hylM0h1JmzzXlxbNZ7CK5/ew+ZwRVXVZxtwm6y+cjIJuupYOOFPSVIF80oUBAzqN+PlWNN5+aKqcn1SxkDoUpRv9JU6FTfDCUNxlUqcHT4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756278594; c=relaxed/simple;
	bh=BvXa8ROZ6c8vzed4bpxR6OUdmq8QJxawx5TSkl6b28Q=;
	h=To:Subject:From:Message-Id:Date; b=fBhezt31WGRCZNhd8kXmV2we1ejd2xa8LvAEY3GaC+jaSt9uikQ7QemowR3o3JRo6rZMrwX0GqW+1f8AigK9MZvfb2ZxIb6vUxtskm4xvQcxZ3YcgsS6rsOhzytQXaLBUXuP4xzlm0mwC5czejsH62hTbJN023lQFMqbA2krOeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7hcG8nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7hcG8nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A885DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756278593;
	bh=BvXa8ROZ6c8vzed4bpxR6OUdmq8QJxawx5TSkl6b28Q=;
	h=To:Subject:From:Date:From;
	b=D7hcG8nfgQhb5A4aHg/u3dgxBV6rHhxrRrrQ8gN5QbCFiqRtDUuxLGtiifWtYvWTj
	 QuubaZ5p/v/FMJamtihH4kIMCMhnvd9PTkxuiTSc5A5SBkzGIVfHerJGGptSftxJqi
	 Vrj742ppYcJCqJsu+jzT7gNTH8H8IySwVZVH/uVOlqBR79c0dA6lqgIOgS6cyBoITm
	 IO+De//wa98G4LojiyVQfXMfIos/va+AvJvlZpWOHFBvnFLBX0KdnN0B9dC5kjyioA
	 ZgAA7YroiJEG+piACBKsK+pfERkCADRBZwekGdFHkAu9rlghYU667o1BvFfhQUXZvU
	 92IkLgF4Iv3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B13CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627859361.8452.5369317637193041131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261041857d04f123c21d237df9c7d67a505af989b3e760e093e14326c0d8b05f
Date: Wed, 27 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756278593
