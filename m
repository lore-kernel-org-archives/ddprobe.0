Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1E6645
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712125097; cv=none; b=ShIhAIHpO5CIwx+K9wRqQDtnDIGKf7iL1T4qWWEegdv4SPjXMAGjVXReYY/0uOte0T7zJ9WKwJp6dHOvDTZxacACSFMdDyD8yRBAc3ilDEk2L5G2XueeLLzof5hFPgGPGL/0k1fIfczPZBkcWDmHs4f4Q/NdS51J03yDuD9M/j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712125097; c=relaxed/simple;
	bh=zmBUJzHwZ2ik8QHIsbTzDlq2SmNEoVXof3L7QCINtJ4=;
	h=To:Subject:From:Message-Id:Date; b=HaP4eYxZ+BXm8RWel3a3VTg7PUW8pAOj8gx6ejNwWcED+5MFvh1ZhdqVIMHo/sRLCvJV9LaUHrSLQrwi4GOf/ohtulf6XTH9xDTmCfZDETzIbF9fH7lPVCYSq3YRe7bv6J6OTboq/hWLByzd8DqGWO0d5qWSzKtS4slduZF0hbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VztM8Nx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VztM8Nx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3DBC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712125096;
	bh=zmBUJzHwZ2ik8QHIsbTzDlq2SmNEoVXof3L7QCINtJ4=;
	h=To:Subject:From:Date:From;
	b=VztM8Nx1DWNBMb7DN4SzOrIyQa4qo8Xu8EGxZjVBfwiIrWHbaFUuo70kp3B1SZuVL
	 /Lfj6xE8G85LFEcGu0SMlbo4lJH/4WN70NlXMO8LeAFz/Ieoptdu5StwCzbhzQhDLV
	 y4kKh3Y/D9Hixc/ng0C8p6BxKvA0Tdm6ALcs3velqaOkIQQ9I1E11OE9cG+DgmYDwx
	 cFB8nt4hQNkZrRjVI/w92fhbd2bvsktTsYxeoJYhtSfnLvPutzHSoRIDxEgOnwewDO
	 COJgCRPZfotq52fNur77rwo04pl4v8GLJmPzV3hLfsqrfQxRXGdMdqxM++qaCBfSBw
	 Ss9qNGGQE7Chw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA69CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171212509638.32128.16985132841087577075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687675918287a8deb5c4c09b34c7c80f743a08ab68a5b8908b1c8cb847207a2f
Date: Wed, 03 Apr 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712125096
