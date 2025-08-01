Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3282251C5A
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754066995; cv=none; b=LYvapLrJaNa3I0IgbIfDp6H/hT05qeKd6ReixXCGbyyetMcRipCQPGlJyaTBCExjSaLpKmvgJE6rKaE8T3KwGUXEbOuePURBq4GCSp+sORixGPdqhS4jjkO5oUKkFsPs2Ld5cJOIG2e+jNhy9FaaMOt9iXZRBXxFMihmEK8f2Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754066995; c=relaxed/simple;
	bh=6qtTuG1DQcuwynzJKqqmfFWhiVNQSJ/Gq9xV3YsSkAA=;
	h=To:Subject:From:Message-Id:Date; b=JTYIlUPtoVOWDbITuqyi324iqryFO7Eu3M9d02DtXEx7Eqh5WR8jxctUigRctndcbA6tZqbkPtq+awGzQ1fCOnwE+Q5G1LBbeeTPqk+4QDonItdedGDLAYSwJzK0eGFEuEpc5+OX8xInpDrwuURfMgSHFXVImkQhdCzaHnKn68c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUX8EwKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUX8EwKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BC9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754066993;
	bh=6qtTuG1DQcuwynzJKqqmfFWhiVNQSJ/Gq9xV3YsSkAA=;
	h=To:Subject:From:Date:From;
	b=sUX8EwKgApuT2ZSV2QFX39yMtslOyeRy74OdFC7mQVBDi94Qonff2bqXMJhRlCe95
	 k47pUn+ZYa+CMIHs7Ju/g8gNui5TWoV3amdBiOqnoplR6oG1AX3M4yYZK5rI91Bu0F
	 83QWPRE/YpWfSByAQqnL/2RYxbICFajaO1CK440f4Sbhfn2dYZp3brhLP4odLpc+d5
	 4VVzexhWl3AxRnYqaBBTex4v9XYDCXNhRsaIO1Czhsa4EpRkbh3zD1/OJub2aZtm9/
	 svrYNADPO1t9psGU6kEHk4SXSKHFAQ3AUd51ao9UFX7Q6kymTd6m3dWtRXOlfhltPL
	 fG7Ad4VcxHYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A3C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406699357.24071.12651765963788082038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c489d8b2f42ee4cd9cece00f964cc71e131d9707973b58d65bdc5c8c8771c7b
Date: Fri, 01 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754066993
