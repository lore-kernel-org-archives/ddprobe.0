Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E61F228CBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749586194; cv=none; b=pbhtKkUvRtWT8BJBRyiM71aWKLutk8kRh6Hw1C67FWlq1b6SS6XJ2/c7p2923YKCoUNBCC9p8RL5OVbdJJ1iADvE5bMdEuvtGw+bVcwqnnJFfuenNW1gX+DX5Zw7/H9V8aw1sXGbEjIoZ7mWeGVrdbHT6P9WpK/ZnHObhjbSXlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749586194; c=relaxed/simple;
	bh=d77e276ofI9+Nn1I3KIMqDUXjDuMHJ4fQg8PlDnOYmE=;
	h=To:Subject:From:Message-Id:Date; b=RD8IR6DOhWeqxgugRhwVMVFhFZbHzf7a4wwFcxAbD5reYKq1KGs9Dd8Edf+aUCLrmQQymBkqpfQTjgg3QhQ6b607kpfTnb0yiE2PCZp+If+S+VYHEmbQtlXo7DMRS4m4O/JS7JftVMQvyNCLcFSEN1M6OnZhZWDTCJoW5dTi1XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spFR+gdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spFR+gdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CCBC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749586193;
	bh=d77e276ofI9+Nn1I3KIMqDUXjDuMHJ4fQg8PlDnOYmE=;
	h=To:Subject:From:Date:From;
	b=spFR+gdYlWYzzIyE1Gl5259grjv3Nkes4WLBSMx71XhvN+aTJjexVCsSOJGlNVyfK
	 S8GiCPsxwLGYjQO+JNLaieTPQJm7IpdpLCpd128OCji82G5I4pcl2gQlrja1X9JY3t
	 J+6eIxVIuMSNHvvzSIF11p8PkYmRt9GcsgFE0uCa5OJlvag7BxkR62ZYhFdqFKlCxw
	 j9Jrkm5GQaYbTxhrlF2296foYqLQS0DutRo+R6gfCyc2MmEVnxNasPCNw8MB85UBGC
	 bdr1LCdAjedMcoDapSIqDvUVdx+OO7wZG5Azfq1Y6hUkzvIabFA+Qu+bcsvg/Vi1ot
	 QvhsyH7Ana4Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90587C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958619358.17437.1910724062411251742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec49c83eeddcd8229b0d095ac033101f4b6a5943b0ba0df5c62b92965d2364e8
Date: Tue, 10 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749586193
