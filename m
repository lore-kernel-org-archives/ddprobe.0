Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3403F1C695
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741811936; cv=none; b=rAYZRtFPy/+01oLKsvR9vosLi892DNANnnwYSJH7aEDl2c40llCM29JqXnxWha9tJxQZf05tmgsoieudOIf7aK1scSJTwPAlzZirX9aZIprRVnqkE5TqPSfJ6WRXFQFqpDcuECgdNG5Be0O4sCeHvdiqJHC7ufOh3/mNTE12yY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741811936; c=relaxed/simple;
	bh=foEICZaeXTESvtFQDKL71TCY6q1KMG/3xCJZ4Kvd5wc=;
	h=To:Subject:From:Message-Id:Date; b=tCy5aii3uXtFCskvsrng+jzueacVNmyJsRMDYDcUSXuKKIBaJUcCzMpUtAb56jlEUPghhlNDsKqtgXyHZAoaZDKHwY0zmDbYntXwjoR5rBkr+832+a/Sp4/sq6WkEp45IL/Ov1+XzcDHnmtDamb7bjBcdvgQHinE4OXhtnnsnQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFPJVxbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFPJVxbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6363C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741811933;
	bh=foEICZaeXTESvtFQDKL71TCY6q1KMG/3xCJZ4Kvd5wc=;
	h=To:Subject:From:Date:From;
	b=OFPJVxbOtPTH/2rfDw9f0bA17W6C6txEnQoiE0mZ3O08VFfsTkJC58cefKTaRFiEw
	 x0OPI+s2KIKat6FcwbTLjmaPhymiuYY6iB/Y9KrKip7zUjAvx0CizR7g494UAbuZSQ
	 53UbGox1rSQVsibPZ7AGRDHFqhFWzPxBhPC74vu87Blw29/qE7KFFMEDJBK7Q8horm
	 PrIElU7wwnGN+NjO9VMnu+lAISWbOFR+gCMKbHWmccknSb6riWW5nu+BMqxha4BuKy
	 hN5p5TF73macmY8NBlOcYw7V91P1B46Ncl3P2AgSAlNt+qxWiIrjZgZG6jcV3WfFss
	 VSWf3Z0Vyy1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBAAC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181193361.23080.14061302433701069985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65420a9af0b68177df0a9e2b98470d62c5eae7a1627f8a64254fb57479f7a555
Date: Wed, 12 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741811933
