Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2648E17BA1
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758509394; cv=none; b=MshozPm6xgv9kbXyF/KdSL9uK/M1bDrqmFe0O8INd9tOg1gXremPt21dM3x8sUihaYoVypdQ9R+/1E5KXGH4TddFckR6yu5ZEzXJFyvBdUagBxruMuyrS4nEWtL0UL6ASyFaAaSvMwEFklwmfjRhBzlZwYrH5ImPBvLaOHaO2io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758509394; c=relaxed/simple;
	bh=BIqxmEQ5rLleAf4t8AGGTA+LP8Pnpe3yCA9aizeCWGY=;
	h=To:Subject:From:Message-Id:Date; b=IjV+dQHVnfh4HnewHrePZjhw+Nc2UyGDkQ84EazPPQtMdqrhXp624B9PqHVzja5Smh03KdtMHVNyuopASLbDaMIVW8e5fu9D+aeQW3KxfPjQgYpZ3zsi/Xcnz4bd+WUCuXhBy1mSEZ2Qtsk7C7yq+ngdGHM7a5fgrj/T5I9WVk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv63QE8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv63QE8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB567C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758509393;
	bh=BIqxmEQ5rLleAf4t8AGGTA+LP8Pnpe3yCA9aizeCWGY=;
	h=To:Subject:From:Date:From;
	b=Nv63QE8i5e+o7NrTnGvz3uDy0KGk76JJGQ895Ydxft8PLkcbDBaAUflfUR8nS9hj9
	 yFpDTjHYoD4WX5tlUrzsLhUt/nCHf9X78HkQui5dp64IhDuXiTt/O3IAi+EDgj4uwg
	 0poztZhDmhQAiRqcvDx9Kp5ZPBIGMe/UW9/wmoA1I/sHNcYdHyNQgYh7go+P0A1XQA
	 /hYAExrU3Jx/yt2ryBdRAXNuxEhInCDMCyb1ffBOOu7acJiDS24MVE0Ar624MzlD4G
	 fywKX2ycPgxYXjRDqHRt7meGsoR+mCvmicorixG/1tTskV5Kd6IkbCXnaY7WTaV2F+
	 l7TsnGjzx8f/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F92CAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850939358.7775.1094199068455073789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbd1c4b2082f7de7665a46830ee20d0de9f1f62a8b6e481c25033ea37e52961
Date: Mon, 22 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758509393
