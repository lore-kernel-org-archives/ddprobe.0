Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A91194098
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747645195; cv=none; b=VX/TKK7Ha42ePLVSgLBHaa0ypFbPSZFPIK/m7JACc1ZPX/KUbwnRfUSCVHKLpNvmr7OqEM0ZRU9Y1Q4UQcKqZtPpz22+ugwdTpQm/6qsksBoXhE5pEJZtug/JVLI4jhJmM3726rKJteF+tgqGDK6HrEiHo+FmR/pfMDgEPl4XBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747645195; c=relaxed/simple;
	bh=ZY/NNmnSqW7lhwqv/Pen7x/dlFu+z5dJvI4FrgmEd68=;
	h=To:Subject:From:Message-Id:Date; b=s6PUUp9Rue3Fj7/bdDsO5y34HeB4EsTdGsw3bichGRDuJKUb7xfhFZEbSXz0CD8sRI+gysumTr+yKaMxiFREghghIJKM8UFGO8WKkMOJABXXC9uNgyQq1tVHHIu0cAysbx8l/aoxfzBgiKc/qc/jiF2D05U9ny0W8lg1WLh+/IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/eQB5N5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/eQB5N5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED35C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747645193;
	bh=ZY/NNmnSqW7lhwqv/Pen7x/dlFu+z5dJvI4FrgmEd68=;
	h=To:Subject:From:Date:From;
	b=h/eQB5N54bXwypcTHikUX6HWSem+0s9HiAUAZxg8yruRGMam/tc1gBp37nNu7WxmX
	 h9D9XlX1qErJAOJfMOPzfPAk87zIJ8HkIPH6RkYjGQ+l24iY30MJIgeus1BxcwSAdm
	 sTdjwawRFHclV/Gv/biCJog7jqyFKmr499zXNTUnqQiDKdzLPhpRUf1QCqdzex5s93
	 il5ADsc1URyZVLWMjNDzK6NEqLHL6lTRstnSSMia2nVwqmii5fZz6NxFX5djXQa4fl
	 icTTFlWt2zy86QpHPJ+Nu2BQNrYbluEUoaGd/DSQazxuaMEcvI7Y7yKlTHO3OLIMPc
	 9qjnrMq1hOFbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37BC3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764519357.2254.2415890009583418197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f40741b93dccf89dc5e53db7872976d6ecb4442427db5b58094b04a5059a08
Date: Mon, 19 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747645193
