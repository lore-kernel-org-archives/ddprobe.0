Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054C302CC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761293994; cv=none; b=F6QKUlQdKr6raoYJDahmLyrONW58/+tafmmCcMGkpdY7xqgvVDD1etT33Sl+shmWLJeZHsqBivm3U6GbOP5cHe+hxIF05cgvB6ferxm+rs6hona4dXTJSKPJRqfOF7GYOF+qpYYuF931sXWdetwvxtD+wu/sZvltw6E5/swFvk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761293994; c=relaxed/simple;
	bh=WHd/k6Ar+zfTQ/lw3x4M+KM0S5VSEvQ+N9NGIa3bOCM=;
	h=To:Subject:From:Message-Id:Date; b=tIc0kFGbRB53IDyqjuSngHQ50y348s11f+z9JNMaZl63FG3MgQp72SYdmwh8ceaI169nuZXQ1Z/5LwiihRDtg0cPLkojpGsmzPP4xq4aMtsMWPUedcEKPIezwATSfxrIvfGkDUv0I+lzsErkw44AOUOL2a/wOhU+sM9UzEd3M+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwXNlpSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwXNlpSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2843C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761293993;
	bh=WHd/k6Ar+zfTQ/lw3x4M+KM0S5VSEvQ+N9NGIa3bOCM=;
	h=To:Subject:From:Date:From;
	b=GwXNlpSvv8CScD8xLfLe8p6j1k6TPNU6gEDePQ6DslQdAt56FossnRqgYMiAwi81m
	 FDUVy4IZ4rIFuDeffN58UUaffLcP5tUmBG/xtWMNtTAj1o9fEu8GvpaBrnke07eTxw
	 OBornn8exiFRMHb8xEZ/ASIQJPCtk1Q1RbZusZJ2OpSAzeyjOpPyA0ce2ffb1fL6Sm
	 U3zvZTdFDweXMVYj36ZtgPxtaj+coV8/AFtmODEouQQB5ivbbLVzPxj4VRZP4ovL7t
	 MrjM3YFsrjgAqd1HCvjWJ+ECDhws7BFqlYr4XuMOvqglNaTffCW4jQFH5x889UY/x+
	 cVTadvwEnF0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9017DCCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129399358.28136.16966421455597434604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57cfab11ea24d06acab6b0d02ceef9e8a0bc67572133c105fbe8233dcd035c2e
Date: Fri, 24 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761293993
