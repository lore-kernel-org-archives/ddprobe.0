Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2763644C640
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784913634; cv=none; b=VEtgBQPqqZ+kdbeskHmOLHvILQv//mtZGoxYj6MKLKY80T6lOSBG6tTjADKz3ahf9sCPjj70kNGMbVlQP7EjnYX4SeH1JZsDX+hO5TMTEyD5p5gU/cwQgxB+Hz2A54mY/ysMyH8bvo+QVpfLD4uM21xVFAxoGZBSOykG90Fi+Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784913634; c=relaxed/simple;
	bh=XmrBnFDTcv6G+0A3sHi6IwQaC3rLVCa9Ekonk1HObqM=;
	h=To:Subject:From:Message-Id:Date; b=pZkMDGkXcah7G0jXSTVXi1nOnR79Z1/E7nNQfYUmxZI+y9MG1dmFyg/Wmm+d1CqHZbJMONMvkpwxWo77Ybp1hfElSTEeZA6y9C61oSfOBkCZW7b51NbRlsBsdlG31hVXn8jAw5CX+i95GvkAKiRng+0Murqc6LDLPzbfL0tpuIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQm0zTl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQm0zTl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7B5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784913633;
	bh=XmrBnFDTcv6G+0A3sHi6IwQaC3rLVCa9Ekonk1HObqM=;
	h=To:Subject:From:Date:From;
	b=tQm0zTl/2USDnUvHbvbO85V9JBmYi+u8QIiHjH9q55iziu9YCmcpLQ6E7ora/NnLg
	 6oTWrBDsmIArzFg1FK7hZAHUD3AU6fbO0sxtNTnPb48fXDp2dap6Zy8PTPoG3hURf2
	 pt4G+llHzkmyhuDTdYUnigpSxE7L7iufFycV4pUvD2/rD63IJST3i0L0HUEMlXKCPE
	 ezjNYeE/8us2DVx6J8PWex1oZy3lGd4vkrONrwTZx6rQCaD5f2gef7ChK/wX5ZXhdS
	 PEI/5lpf6bxSil5bKsSyzBUaiZKFyLJkzjbU2wWJsZGFX7gWBA0dAFKC+nzY4/ln81
	 4wckGRK9PJZWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8768C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491363368.9183.4393373320269403838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e00581f3bc7648e6568a130a595d96ef9efe66d3eedd09edfd325b5507e86fd
Date: Fri, 24 Jul 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784913633
