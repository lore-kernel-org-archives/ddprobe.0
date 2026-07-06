Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D161DDC33
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783309114; cv=none; b=uI9kNvlnhDq2T2Tczk3EhTG4yGcuECfRKoc7i1DmbPkRUIER6sN9xnudJZ6oceMC2HTcOjHD0qZaWjykGL8Ma3uvqsq/3QHtexB6u4FS+1Wp/tcwN8fls+GN8GYAlHd8+M7bO6JzN1eApGtuLPGW8lvBZFEmCvIFd7dQ7jAe8M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783309114; c=relaxed/simple;
	bh=3rdS1vbses5Gdv5TPj1VQM9swuHuXOqDdELj4iImFPU=;
	h=To:Subject:From:Message-Id:Date; b=dgvzOCLNh5Qe85e5GjDV/b2wM3QVbDDtlpSEUkrVmQYdNqJCs80ylWvj+Wwl98jtagAaLjhK4n4f/LA6uTsZr6EDm1fs3LidrD14fX2/zY/oLUvdt8iN9Hvgfqd43ldMViagxRyQoDNPVwTDMy6OhiR4RFMtFMc8BKUSO2HpKng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUH1gPJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUH1gPJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1922C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783309113;
	bh=3rdS1vbses5Gdv5TPj1VQM9swuHuXOqDdELj4iImFPU=;
	h=To:Subject:From:Date:From;
	b=cUH1gPJn6kPjlaDuGIBhljgJcO85sHXbX1Te7JXn/yM5IyhsPwt/0ARu7d0bwl7Wt
	 Erptsultzt1ZX35ho9KMUW6hORHClxYdOASQ1sm9XlCeDpKJtmCopl+yzfpYc6uA3G
	 1SQHmsbAhbNunbGYbmvtgoAC6eFeDndqW/dBdozlQ9TkhCXCsjsMrxwzL6Rr/6oAgL
	 VPSWV2KUh0aMuhSiIsDzhLaWciSO7w/ttToVkJuT6uTTgs65/mFvlXTRJQRm+EfVIy
	 90/lGATCTF6aZA5rS0jG9SUktHLNbEgvIaJxlXRr9bUmfdBoLSP2IEnIi/qtGu5OuP
	 eGUqhEObuiVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9ECC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330911368.21655.68540429477334636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082d2bfccdf0b3b1dfdced473a67e342902ae8e332c914f557132f07cb0826a3
Date: Mon, 06 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783309113
