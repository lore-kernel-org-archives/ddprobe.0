Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5382E888C
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763472715; cv=none; b=iWsP6L8blIwoKamTxaIvZ4W06J9EMkQ1oFaaE8sLcHpUsS6EyryCsTz8WSUQR5BqFYd6scY6WfKwjjyFvRKOqQbmnNLMaKv/gHpkt98uQgSqdwP5T49eXz5Y/aj1wYORiUiUYb8N/JclNnu/5mnPg2vHebsBEN0MCVND15WSPK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763472715; c=relaxed/simple;
	bh=Keyk5KG2r+4pH6uHTmW4lTi2j8mhYOMtL3hpuKfI4qc=;
	h=To:Subject:From:Message-Id:Date; b=Rx3dWCtf49EBtS6iCXYEDZ5mPCYpO019ZY4ZJg13gkuXyehyFOXOHz2GExFARuX72X8JAyakldsCuD9KShiS+puvVIGq1GPzDMPGOR1gQC60ORLkMvk9D8HfspKr2qISJS2lFNMvveHjvGqJxQNOdu0iXSpJCsooXbLW0sMRRv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGa0faK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGa0faK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3027C116D0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763472713;
	bh=Keyk5KG2r+4pH6uHTmW4lTi2j8mhYOMtL3hpuKfI4qc=;
	h=To:Subject:From:Date:From;
	b=CGa0faK6oxMfO4Z9uodPZM7MUuaxZ60Z3zBSWENYofufwhH1FhD0Wc6zZ1Smq1VUr
	 0RlrAc+g01GL6tDI1xKFPmHtuujDRsMZ2gPZDSmjW8q3ZjEhfKHTTuOPW+GK3eRiQv
	 1+WHpXCDuHecqiJC6ruGqKF/GSQvBI9uM6cYk+5BD3Yek07RvgpyLlswbQxrL8Qq4C
	 N1iLwkCfYVc77H7UQfQN4Kql8dt7a2yQKqf2reugnHk4bQx0WwIQ7ihwIub4ox18ck
	 4XfdqqzxYgiUOghS0FBbvk4OfDVvt7wPH/UciHdiZbUUXthk/gTUJdeWZdeSNVaDxa
	 c5QlCXx92/DXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91292CEDD86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347271358.16429.6675911839176572315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c59f8e198f65ef7977bee17c3fef3c477e18b155dca31741240bac59776f5de
Date: Tue, 18 Nov 2025 13:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763472713
