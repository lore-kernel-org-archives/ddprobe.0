Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428D678C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720451183; cv=none; b=oWmvUPL6YuytcFJpvjmMHPjYpXfOkamSDboghTsZrMRSziYYFhHxhsQNKld+e5Tzn7b5fJpX7mIxH2cWY5e2/3k5N1lRwwZ9ObEL7hsVdKYW6dYfHLubu5k5mSafuQFEKo7CdGak4fVa788V27Z1L00pVkI4QW53+l8pT4072Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720451183; c=relaxed/simple;
	bh=f51gEPDhvM/Ppl+qXvgXw9Qp+gbdCe/H3tIPp2KB9iI=;
	h=To:Subject:From:Message-Id:Date; b=L6ajUsv8YUQFP58bTtIUCgNyu6Jqaj1DxH6z0UoJCVsCq43/bi9OQG1rZcW10A6d9RBD3VahaoBRrqixa0yklUZ5lRxcgzC8mqzJX0AdReODtUiVMZr/nLD0U+yqJRMLz+odopUPEAMNmQyzUm+wvd8gMeThaE0TSJaNsa2gZkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4Zp9YnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4Zp9YnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F65C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720451182;
	bh=f51gEPDhvM/Ppl+qXvgXw9Qp+gbdCe/H3tIPp2KB9iI=;
	h=To:Subject:From:Date:From;
	b=g4Zp9YnHIjZ2bJ8zFVZ4M0w+h7PDb8TjjfpSiGcNOB5HHKNsoqXLwEWe9/LZVAkJZ
	 5etgro7f+NkWjWBYhYkbwzSREgdBqq1FsaYo4XncZQsq2eVn1WAUwLw4IoSY586veD
	 LFE4l/+qFj4R7FdXBYyqKpGHHp5f/xfIRmrfzmChtt4vPgHL1t02VbSVOio3ZmANx0
	 K36Gz2vHo11MK6dVx26fVtDbKO4hf4Q/KAlFKwklCjn3Iud2EAkPUltOrApiORqHve
	 AIPsG0MRoV5b6Gq+NsWmsPzdHCqJe5TqcGYdOPc0bihyNZHIIKQyOL14B0hcVAucJb
	 eFrPk9y095LEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FADC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045118279.27735.18328986150484568874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c02ed7797b072094c10bba7997eb4c33647b130a85646ccb1d1310ca6230776
Date: Mon, 08 Jul 2024 15:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720451182
