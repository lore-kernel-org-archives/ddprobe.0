Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3843417A2E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745236794; cv=none; b=KIc/8UChFJjd8cA3u1oTp31j5Ni6GucdAoc1VVLS9ThRHt44sHTixQdm4jaXRhNJBQoYnetUUUpU9EGHgvGFmiRvZOVpLGB3j3jmqbrdLbAf+nIwrSxnDk66r4zryqNjhVcKVNoG0JHt1+fvVNKkLvDUtTezKn2qkjNoV5ki/uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745236794; c=relaxed/simple;
	bh=47leV3P6I+SHpYCuxOkO67brnQKgD2aEncVE5RYxi2s=;
	h=To:Subject:From:Message-Id:Date; b=MOiujVw6ZM9cMan2cEOfoJw4PZ93vyAuwlal8yKY6nBHc8Lk/H3kfO0MmiC3lVWuc9pL/V54uk3uZVBn2RSwwCEVHgyKNs2GA+rnYeBixXTBHI/bFYVjdGWwPjJWtNRUpsF3rGJo3eloJCeiUBG22WYXeRiqHKxZGB/l1yerMVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKIKXu/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKIKXu/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EA3C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745236793;
	bh=47leV3P6I+SHpYCuxOkO67brnQKgD2aEncVE5RYxi2s=;
	h=To:Subject:From:Date:From;
	b=KKIKXu/KzjUcNGyxQEPMN7oYPVmjD9oAbkExUYmR0l6yCZ3S6KZw9O0aQixRI1xXk
	 jc2YBaCIaGT78ge3bCO17VmeiVMeUE7HNp9sqtzQnxiw1J8xvk9t/Sh7NSAOTGzqPK
	 s9Yrzkmf8amBW2zoXiksscxLneeCUrclGe32Xxq3XF+BFLmSFekJ6J0x9dGPTtcoAM
	 UpDP4QaV7Vdr5v3ZUTuABFFai9kr1ptpq6Ivyhz7NJD/osBm+Z3Z8vbTCLyjWy9lGQ
	 mCoNgyz/D4BIqRN5YN3+nnbdTmgnhOB+W0XkHYbbzIRtbCpQOolrJFq2bB1nb0iSrk
	 GHR/uHG5qwYrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95664C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523679359.17204.6506764055926765826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2effd9576681c98ec3307cbd958796d954ea0d9139ee995f4c1fce6e8439d21
Date: Mon, 21 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745236793
