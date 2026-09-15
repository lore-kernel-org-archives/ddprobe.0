Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B5549B5B3
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789467035; cv=none; b=lMBQHmLlxeC+HwlnkhBddgDV2UGVk5+eL1iKDfUbn5kNm1EfhTqbLbEmGTi/pFKnEAFBrveObOmsdwBeVE4RRsiDt6DQdunbqZg19K7V6ZLX10LDua6XPxvObm7AfpILXgV0HfiHRn4f2klLabJZhu0iqdpGvrkieHarkpIsijE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789467035; c=relaxed/simple;
	bh=5dRQd/+IrjhDUKV+ixtSf7w15Yxj640JUh4ucIGiQtU=;
	h=To:Subject:From:Message-Id:Date; b=KAA5plD7DngQp1hL3Ykmis2pXGP0O4Id/DNoK8MTdgB02xuD7Ln83c6sZ5qKl7fIrYfCBIeRMzU4kBhWj5cj5cqS1atfGeDkOMzKAlajhzM72GjZWp8zLuQRa+mXUb/E412MhVdGO7IGRAGwMdu5jFxTURhQ2Ol3kEfe4EFRPTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FapPOD7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FapPOD7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22E8C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789467033;
	bh=5dRQd/+IrjhDUKV+ixtSf7w15Yxj640JUh4ucIGiQtU=;
	h=To:Subject:From:Date:From;
	b=FapPOD7LO6WYwMJsVrL5MKp7lfocuY6wtIs0DEWntlJH05hokXMQJhAzwjYzXWcWN
	 DYWrIxEd6MHez1R8JZisfzT3JcHFARSiOd43SJGV2HzRx3h7q1IDj1VOvVk/pspH+g
	 sCjHfw0wOvscj8Dq9+jryjaekfkLuUns9ZQcNe+VUTsz5HtzIXuaBh1BJpMvrL/WeG
	 uIv3FMFqy8SO0Aq/yXczu15zUqSHoeanCSJcPQMb4h9r/4izXbj5oNauu36uI2/7KU
	 Z5QCuS5kRSj5HhV+MLZB9BLMOK1S9/6qlgfGapZ2qgDF0jDLeV4qWOPell0g+pYjWa
	 L/HXB8Xzft+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF8BC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946703370.3353.1178723064059392547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc9fc6f7b785d58252a51497edc1fbb8859c1a17dbab286c1ad4444aa1aceef
Date: Tue, 15 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789467033
