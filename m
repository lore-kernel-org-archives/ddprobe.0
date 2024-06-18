Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E736A33F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718717963; cv=none; b=cZMAIvgeyAT3EHGykZpAFHthrafiqeHHn805F/7yMHVnw/ukJZs45f404FcNwjNEHDgvTQKCbjjbWRyhMtaupj0Gt3U0D7B5yjBFPPzwlsic25+rDre7qoi/AXJYC1G99mgRNdMyr4p+6DCRFa0p7pWvaIR1Ujduy3ajzpa0Cxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718717963; c=relaxed/simple;
	bh=KZR9UImfXv2AUN0VvV+NP4vi4feiF/z5QY/DhPUJaBY=;
	h=To:Subject:From:Message-Id:Date; b=N1z0sE9b5/C6+6j0xXJVk2XGOAFyDV5wJa5tEI74SE3y9p1gsS6cFv8MtatTIfbT7RtZjEDY1o8HiP2LfyHaU0hnHA7NQ0nZ81vueeNdf/7N32RuKVj5F54NIEAU+0I4cnMrfxqtaYacUoRMvUCQpo30iotIsbMRhn96prYABM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5gboztq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5gboztq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5289C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718717962;
	bh=KZR9UImfXv2AUN0VvV+NP4vi4feiF/z5QY/DhPUJaBY=;
	h=To:Subject:From:Date:From;
	b=T5gboztqxRzjutsyyCo+iv28N9QgX5D6eQHEjb0wmkVO/lrXhHaYQy1nYtviLqvZF
	 qoLOmfPZf5W/B4rosgXEzslp6j8CuJgWqcHPL1JHHutBPrv5uTqWiJXorhwaDuGXbS
	 bjcbFEPoegc1j3AS6QdkO/mlkU/n5cxmAj3lehy4K4UNV0XW+fmaPJxL4k0vq75roz
	 v3bozN3tcXTVigf3OTmjEvpBYBxe/YeRcQeuoaBJdRlgD/9ZWj79Rgz4HfOFPIfNI3
	 nUozPEPDrHx7MBrmFYVwGOqC27ZbxzrslKCwl/3c79xlyDabz47tBB3MOxiERp3bNU
	 a0EWDVQdUFU6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C039FC2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871796276.20413.6389011087801968765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a09c9e5e05bfa284d13ddfc43c572280a8966ef755d141569b0bdc281b5290c
Date: Tue, 18 Jun 2024 13:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718717962
