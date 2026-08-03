Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3677A3FC5A4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785760834; cv=none; b=vC0bJog5XuYgZydTX0vDl4bgrLq94XOi1yJ5fOGKz26pCHFsD6f+6JrJ360Ox4kdTiV8Pq1IwW9En0tjsQh/NNs/ATHkEG5xelunTOYtzmHh6xnJbgi2gRf0HuPKUlthHFXgI6Oru7hRavPtje3JDiC/3d75O1Cvm6DJJkAl8sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785760834; c=relaxed/simple;
	bh=1F9XJBu59pbFmykjL4odmIW3UXUIn7RiDymPXp30+MY=;
	h=To:Subject:From:Message-Id:Date; b=jDLnkNRkAlg/YCqVNPCy6J9Saodnf3i4HcQu5Dork4/jfi9ThsRonmMI0L9Wh8Gr122Ro+npTrrmRJx8pAWnXdB7ig5zF83ZfmAMZLYH6WsMewFwwRPvBnrHwmk7iZmPpNZCab5c2eDPjK0dcAg1Wc5DI6F+0BaYgrusKWI1K+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WubMbWbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WubMbWbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5F4C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785760833;
	bh=1F9XJBu59pbFmykjL4odmIW3UXUIn7RiDymPXp30+MY=;
	h=To:Subject:From:Date:From;
	b=WubMbWbZsLqtVbstVcAMU7lTNLqySbkQ/7qQzL0hYwMv6sWATypJs96sax22heQJH
	 wymww/Y9aYuVz9xcO2yK0a3ORtycpKWqrltV2EqdkzsOt7AKTzSz3P53AqutlSrIGl
	 NGXhLz3fz6UKi3mlvvjzotszFgKeTWGD55Yu4I9mNy05aTHhIAU1iyTlClr8nwjU5a
	 rpe+cVI5XyLfNmq0pzN/ODWrhLu+50a4N452LLK2FB1xqz0jxC8E4kCISUzIUAnlma
	 /+GRduG21eAPNGVPQi9z+9zbzEpj0Jvor4t+FzLR24aMQXLVKRTrEM80XaHn2+E93d
	 nImtixQPfdzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC011C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576083369.21512.6626538885241441264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfb464bd241bdf8582f3f730fe13f48d07fde4963b7fa00deccd9f9b330df5d
Date: Mon, 03 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785760833
