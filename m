Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344EF2DE6EE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751581194; cv=none; b=hUYQs35nhdDy9d1iDpNGLjt7yAAANK0UQE9Q2E7gdQPqcrBxCeKCPEADMVIA5zfZwxgcYS307iV8sgBOdR+2zoS7slMvvhqxHFpqR9dmA4DXy/GZVWMskAwQfrE2HLBZQbI9CJcZjc0L2Uphb0VsuMgVhsiImE2NFm7R/DhqSHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751581194; c=relaxed/simple;
	bh=zTJIhkDIo2hIUCVdCFQ2Tln0L6x127UDNq65eJvtmgA=;
	h=To:Subject:From:Message-Id:Date; b=Z/+Ghr35uy61snY8quIgDOUiCVoflUY9B/dpBX/KCSY8GxihmvDLOsaU+E0in31Cv3cihKaPFV+1Rp/KxXM34EtljuzzBf4jBh5RZbXbyQVj0tYNSfRlskwy0ipCVRcMvxPohXbsp1AormGus50/5fO3vfnhqpm8nQOMAnouLhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz2HQVuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz2HQVuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F008C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751581193;
	bh=zTJIhkDIo2hIUCVdCFQ2Tln0L6x127UDNq65eJvtmgA=;
	h=To:Subject:From:Date:From;
	b=bz2HQVuPiqlbvmqKWcofA3DVC6EG6Tk452k8NyE91l3hszPInxzhRwPzD7yg/bZYc
	 2PDn9AUhkfUihHAb3n3/AKkql4luSiwrGD973h3m0Fct039sahmFpLj9veE+jb0oGr
	 fcuGr7e+ZWwTFy3cftEE0zgm+KP6eSl/wtfLYh4uw8GMBlGRKP5P60Df7HR+nTPmz4
	 7Eod90R91DKJjGJ6Y9C+icMi/SBqb7yOgtcsjD1SVPvRBDvjI3gZeqaHABpa9izt57
	 RZ1VDIf36pBPpHYHmWeTjmAqwoQqUJWgTnJnQgZWb0KTD4nDINfKzTdLv25zBBuvb7
	 TzBNjwdU6bn2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE13C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158119357.23445.15948899912430045282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffd987ae230c42a522211044632a896b457fefa0b2d47635b84c4d08f2e1c65
Date: Thu, 03 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751581193
