Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B28AEEB3
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736207755; cv=none; b=fcxSMsIhOg977TyNgvv7hCBJ34pAd2F0pqVXUgdg7USfKqFfzcpuLK6ESuXxDYtCwQJaVMI4toMWIlDU8hVlgEh0wu6laEmd/g/P/PG2FfvUk31lXrVT/+iQEAql/3KEQ5wce7nH1HKoymFwwY5xYGWMo+AKEpI1XMFFs0i8w3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736207755; c=relaxed/simple;
	bh=4cSqbKPzbQ9TIaLFyb8ltl0Y1qh3MNrPUB0WW6lM3sM=;
	h=To:Subject:From:Message-Id:Date; b=kr0t6oVRefNdx6FF/CQvmjqG0SFNhX81I2C2rEfLVfA7JTDoiKnLvOe9o9tfNnmgSR37mJr9GSV5M1iAqpk6IKM1Y9/qGbR1C+XxcOHZZhBDbgnH4OjbNBBROsP5bukyGv2CWV7HnE/10+z2w18WyfIxGoKSgC3W3eL5G49frIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHn+hdS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHn+hdS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2B9C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736207754;
	bh=4cSqbKPzbQ9TIaLFyb8ltl0Y1qh3MNrPUB0WW6lM3sM=;
	h=To:Subject:From:Date:From;
	b=XHn+hdS7LpwI8He/mzbkRLEw4L0ZJb/qxxyEvxJHOE7SSzklkdKubVwYn8RcS3gDa
	 +9E5CqSv+pj7vAnT0J4LCwmljI/WY4J0Yz5ef90gdL/g5PAr4xz+I5sVWag9zU1a1D
	 0SnEMgozP66GhtnFFYqNqA5qcI/xTxtNmKSre1N1mfrzsfBaYElZhFw0Ku61wGKiAc
	 4ustEmXQP2EdHkVWEjSBdwd8fUSlFBu6MWOsB6jIV8mrYiO0fN646bHIcRxL1X7jRi
	 7nQMyAx8O+e5JVCgFb0oXFTlBmyMB7DPQ0k8Geh+LeK92CTip+/spIKM6ras6kxYE1
	 cXno1i7s9lVtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A909E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620775362.16476.6968305122810434166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4906e2a6c71b0db75afd73fb1ba629dd86c590407583eb6b57f13531e702f549
Date: Mon, 06 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736207753
