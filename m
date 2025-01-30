Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611F8B660
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738241754; cv=none; b=uRZ4k4pzq3R8znTXFrt8EppKq8T5gF3KGOIPlF1aRUS83E8y4P7Tt8N6wWcqQ9KZxzOE36j7t03F15pypJbvkTfa/mhRURUgF0elDR4lwCs/nFqHvUWwIPFqdyYKGrtKgyGftmjTrkkQc41uBgWTjlSQCAtojYyVFh8KuZ6wnK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738241754; c=relaxed/simple;
	bh=v4LDRtq/A++9IWjOMQ38oSutqmq1DZGvXCv+fomRJ1c=;
	h=To:Subject:From:Message-Id:Date; b=iJKRGp8d+akYKP+d8wX671NwSRS8sR8NEWMU5kqvq08dmztM1ocztNtRetsuf6mIglaFQIK1Qsoh8mNZhyk4oz2HJ79pKlBgE7atO2ZMnnED1+4sr/vj1w7vbDVS1jZN6EJ5SkIGNrl5ioQvI9+Gjn3zfYKCNvrDBLjYMjbp4Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukuh0jhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukuh0jhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BA4C4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738241753;
	bh=v4LDRtq/A++9IWjOMQ38oSutqmq1DZGvXCv+fomRJ1c=;
	h=To:Subject:From:Date:From;
	b=ukuh0jhgDYdYBLKKIPtosV6n3+TqojlpLaydW7rRvnXFWLoVtH9RHvK35KXeuSbCn
	 qQLvF4wT54uDog25oCr+fPWjL+hkAaEKg+bii/Mr++MopxSvDWdsxnR6t/3f1z75wm
	 L2LIm61CQFcXf73Pox8uUJ1s6aDeoQEkeTfWIsZmW1HcGsnFQ2yj1XCt4a0mxD3Vpd
	 5mKYU+2mEaupZqH41nQWl6lPzO+F7XutEQ+MHIfzwAe1vdofffvIowqCH8B+XE+eRw
	 9wwhuZskkCuUOk7tBw7UG+nlDIEwCjfW3NIk8dntw7dG+7vgrupk6rSiu/8aJAe+NI
	 vT8AsYbWn4lzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9468C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173824175374.24773.11184173583946137292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19729bb761ad9e83fcd2fba624839b90ae6ea8ac8e6a656f41c90474e9fe9521
Date: Thu, 30 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738241753
