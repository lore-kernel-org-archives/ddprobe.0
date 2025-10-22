Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EE5309EEA
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761132594; cv=none; b=EyzdWnflsuFzifKc/oBBodBCSFsGuAAJrpaERWLlLh+Exw/gxGu+HZc56Lrrsgp3vrBY8lypfgz7wSoWkoHhu30KcqYkW8KKRvAygUrlSY/2M0tbggHR9QjmB5XIX+8+1IdVLTGGFmEJHXP5j+ds7XgBi/szgN2gkoOO290fitQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761132594; c=relaxed/simple;
	bh=MlWbIy607/QSap09jxaI9othEMZeglVbJUjbJQiVb7Y=;
	h=To:Subject:From:Message-Id:Date; b=DD39VSUqnkIEZ4KwfpRQ/lWfioJUCh3IVf1SRaPwlb6nSgzyvQDlHDQfkiALdI3wdLZs94kPkeSfEI4j6kfi1iDngwrP6/3cbCymmeW9tfsBYnbu1bwK3V/FwpjzHU0TK2LAXmnQF1xeMBKxHRfQIenFOrpEcSOidrxjRxyIdz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWaiOQWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWaiOQWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FADC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761132593;
	bh=MlWbIy607/QSap09jxaI9othEMZeglVbJUjbJQiVb7Y=;
	h=To:Subject:From:Date:From;
	b=ZWaiOQWn9PCciU14IZeLm6S5k2k8kvXKg+LYAHeR3MRevxhe4cm3o8r569wamwjd9
	 WPBLWXyEhuCvdPqDM8woSXHOeUiKiExUieZvglocCcZAoLLsz4N9zi2nCR6vsuwBR3
	 hZ5WppGdhvIW6aZew5StKkU7oIYnJK+LvFTOgiswlIWovtMp4cNDBm0sNOWYF3wj3L
	 WXq6lO2Aecoi8SkhJfqLWw5hZBJ7mPqMHy+W7fuVini91/vUD8ox2618xo68QhfM9R
	 1iXwnljCwgas6LIxClkxPjc4oL0//hMVCaWsSjqkLv2wLU0ahrlzYc7vNaQjFnqZde
	 hvFTLtVCHz0BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BF5CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113259358.3618.9737730719752993052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7af629762cd95c7749ec155439d7d6547c82260e7da87743e10c4d5b8b13cd3
Date: Wed, 22 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761132593
