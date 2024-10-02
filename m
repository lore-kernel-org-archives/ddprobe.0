Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5B81754B
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727853354; cv=none; b=Rf1AAzTnsssajQeFD77FUxOWsMgiuQB46RoBGj8B4vcrwezmk0tpcqDvmaHHd52gVESDlEnzD1vsAyTTLvBE5ICSrR2fqIoQeO5rbD/vVYCWGyEe4txop1E+QyvB2HfZAFWVQZEcf46ESfWeEjIAsLqXIzez1MvlqYX3uRBDcqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727853354; c=relaxed/simple;
	bh=60dkbhfy5QAifoOheDuN/Ub73Ves1y/Gr68rbuwG1/k=;
	h=To:Subject:From:Message-Id:Date; b=LadEqJmpnfdCuGVKNnrODXFakGCxCOfogx4d3XeszA5sw06sBdzv9uB1DNDNtX2bduyumdXPeRcXfC2xWP1G7hnam7w0gAontS92rn68N0zi9BViv4bdfnHILbZiVJUoBiq+MW9hIpPTtnWPuqJ+YjGDJaVMOwsG+XhXKcl9fzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+iPWvfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+iPWvfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1BCC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727853353;
	bh=60dkbhfy5QAifoOheDuN/Ub73Ves1y/Gr68rbuwG1/k=;
	h=To:Subject:From:Date:From;
	b=F+iPWvfZvWnIoIsLLK7jrNc2H2zmFs1i+O9htNB/VrVq2SMhmkeN9gnD0Y/FOW2c9
	 oJ1tHhUSI0CbeKDOqx2jZijdjdVy0kFIFNSzJgg56H01s+fXL14QgvSyvQAmxQp/wa
	 xvHKtBjIiz8Fo2wd7CTR+fYZvb4ir3D9378YSRl+A915xqA72V5Ld3vTSCVqVl41uS
	 x5tizg100kIfjN6dioZDhOnBwMHokBVH/rX8HFV9RMQhg6dTrelz2Na7e5QJGiv0c3
	 pbCk0/E2i1mVq3btR+UK50kASyr9sqoVKad/tEqpEnucsU5E0wnpkxOANjFlBF/kXV
	 BSLIbqIBgjcXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97095CF319D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785335360.10912.7341442451241814900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae670bbb7a25daa636178c54ae2a86f3d7d04ec10778f0d92b6177a395e5891f
Date: Wed, 02 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727853353
