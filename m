Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4328D186294
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743199194; cv=none; b=j9+hn33opz2unfJ+YkXgJtH6ZYKU/9L2vKcZWq1GZRxNOVFfk+1CJx5eQoo0Jr/gbgGPeTKB/r+lUdo0Ja1z50klnoxdfrsHbijmOZOFvfh5Vnc3DdA1vtYWWKwa66Vk0oZ6tcCCI5gshpCzpmKXg9oFK8VIO2XfE8FdsecTkLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743199194; c=relaxed/simple;
	bh=RksfqrJByew0M/50tRrULK1iOV7k3NfhjQIAmkfEJoY=;
	h=To:Subject:From:Message-Id:Date; b=LDiWDQH5df/NWUO9WkrClNF5y9XAb/SrgrfwO0dkJnIS6Qce0wuflO5JqIKS5aV0g66k0UYHmXCkIxtO8AlKL9znsQUQ2HJU2b2HWX54KXGkCBkJ0ohf/DXv8hrLvS48BgN3S/BmbgLDW4lOaHqVCLsly+VTByPuBEdDP/YbaKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvIIXZgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvIIXZgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C190CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743199193;
	bh=RksfqrJByew0M/50tRrULK1iOV7k3NfhjQIAmkfEJoY=;
	h=To:Subject:From:Date:From;
	b=EvIIXZgs4B97Krq2jpyAMfNERPxKXU6htTZD6vaJxSAa7NvMPCTebblF6WDCRwt/y
	 zJK6QVNvKFBRFDXElpKs0mjeaV20ias4X7YIFRPvGtEY1Sa5ro+QT0iOfRPfFWjhjb
	 vjuo8JXxWvkmcuG/5Qx895i1AYs8AkyJiApe0vyVgqHwE+Xi/1rEBzgUlq7uqGV5Uj
	 xua04zNrelhHCnQMHRCXOyZO1aVRWV2RG5Kbk2QpM7/u/rW+ylZNZ2ZiMxCvBoC5Uk
	 Jx+hTMc8qg/F84QXyNsvxSJggQXOamgTF02lqtVfJuXlFbh3Xev8ceBEazy/+qaJQM
	 +KaxaedJyVdyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5F5C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319919362.21400.3533276803760353779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d011d72fd2f5d135e40eacff59921bce4afbdc7b6f463849d3e42de91103406
Date: Fri, 28 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743199193
