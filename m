Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2306515746F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764653574; cv=none; b=lFjKNX3Z2HOc8Ddcca3jnvwR5oZ98/Esei/xTfXFhCw8IohSu1qrTJbQwuGx9oNE7TAUJ1c8xBayfhiDZQNPCBHnRsB90gyL/G2YHNMeRCp71gxS231RiWt323+NUO+JrcqpkOmuEUUc/Y/mTURHqGqRfbp6OmGwksIIPg/6Ro0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764653574; c=relaxed/simple;
	bh=JPUqgruRH9M3NlZwAkU4q/A/Ieq038EY/m9vFcMkEi8=;
	h=To:Subject:From:Message-Id:Date; b=hHFCkeT3Q8zZkm4lAyOjZVtOkthZaRfvzTrQF9quWngJTC5iaOEmIX7P0p+Wx2mfqnEJzh/us2fmS0LVFr/SQqO3HwRRq9xzUXT66qqZ6EQt1mhM1NUI6g1RyvJYX4S0cpCR2IPZ63Udu8dQlRcnvG0P/jjMqKGzITTFgW/k6dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KC0Cdmpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KC0Cdmpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1ECC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764653573;
	bh=JPUqgruRH9M3NlZwAkU4q/A/Ieq038EY/m9vFcMkEi8=;
	h=To:Subject:From:Date:From;
	b=KC0CdmpgxCoaA0DhygbdOXjkxr69s3dDIAy2PfmZro7fCJ6RVbhHxBFNGVmiBueY1
	 omrINAdy1jy4njV6Bh8TmEiz6M+4f1lf7lANFczve4jjAnnW87tS6hCFGo6x1QL8lL
	 LKVKmCIkkMWjPf1VbxAJ7ZrTkU/x/17fgUZWMabCKPmUUpP7hYlMZF0zH9IVNyWYZR
	 JR9C++riQYzRdrACIEYrF3YKxZ6R+cBi0pWi+39qwLTkr8QeMlmqzfXoJm26slYTjs
	 B3UcterUwVHL0kl4CKYxSh1P/t30//Ra4qovAEO8DKDLBVSLtZZP/SxTyH9Pa6DKd9
	 21kINcOIfNNvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98047CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465357361.14950.5205745948080024964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9515d89f32bc059171687746a01b3e10a64c98c83f44dffed0977dac2a5878fa
Date: Tue, 02 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764653573
