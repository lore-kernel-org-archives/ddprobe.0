Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBC07F9
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713576623; cv=none; b=Cxg/hf7HHdMfMK15wNupGnsiOEQdgU4Ay9jNcahLoaR7gFq+4LlpE3NCi8N1jzVclEZLfaFxeNkYovNwS0/u8mYODqiXGkDepX0GO71y+LFBHqGw05x8z3ggfHJCS8gPP+CXUfv1kwbGiWNkCO+WKuhjO64M/H9/MI35rfFwkO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713576623; c=relaxed/simple;
	bh=gji368vvSk98jeXYayXHiLI5AAbwLU2OkwqYe9QcF+Y=;
	h=To:Subject:From:Message-Id:Date; b=dpBAtfR6MxdPHRnKmj5mtYAmk4x8BFCO3pS9qYVUyGkwQB9VOTi92C0T7trXZ+bDBBK9MoEpND7FO+zJ/7CpmBqPTRCv3KGNmQJffCheqbakoigcLnxBoAx2SZFzJTQjrMpoXvXKyga/I7locYArZ4FFBIRnHyaRZTf7cirBXjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCFnx5Fi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCFnx5Fi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D654DC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713576622;
	bh=gji368vvSk98jeXYayXHiLI5AAbwLU2OkwqYe9QcF+Y=;
	h=To:Subject:From:Date:From;
	b=oCFnx5Fi0eQzjhklp53fdI5cywp6wsS0mWle1NUMyii1MGO0qMUBnW9XZ92kxAia9
	 PMd+EHK+rrK9d4zRd7zMZf3JR6tjPruT4tsxOaEMdGv2OZkOVmrW/n6iCYJH35HQDd
	 Kr4/lVhxJhGcT57lLm7aVrccAK1NkWe479Ni4dS7wsLoygjZoALiqDXk7su+CG99vG
	 CbTb11cpl62Nmp3NQpo2cFoWj2+kQif/4Jr6eAF3fcryXhHhx9uoYvJpBQVwwki6u3
	 SfOKXgrNRILHZQi74g1SH1WyxihWMU2Diem+k+UHXWR9q3wiHteCPaBAFjPIZhyRvR
	 x1kPZUlWpjGOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9F6C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357662276.8075.4577156101400327578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36dd4c12a5b606eafbce5161c1062547ed590321b0f65801af2c9908422738b5
Date: Sat, 20 Apr 2024 01:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713576622
