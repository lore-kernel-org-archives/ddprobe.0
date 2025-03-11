Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A561684AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741685934; cv=none; b=oCjO516m9D7pGKvfVAbS+w+NIpWxsgEFL8Lp6/Y9DFaVtUwFjq6bZADVykCCxvAmw6bJ1LaZ8eZeavBAqxyvBd2DxVa9WL1A+U6KAxX0BN41WyloNtGiypWbIMLdIX6qAzI6wTNQv2ZLsLOymlMZjxYvpVzhGizKll4aQK34c1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741685934; c=relaxed/simple;
	bh=DVe72NblDO6WHe1bKWsl7p+rkYKuDqCUgqo0EmpnnDo=;
	h=To:Subject:From:Message-Id:Date; b=heZt2kEUdKxVuY+Gj7URD/n4nXt+VLS/waa/OiNMfOa8ufXooTOSg/PtevDHnt2BBhqcpB4bS8gCm/ifzHqIen65dpb8en5DPaPzik4RzAeKmjX2O1jrvXBbZ02b1sN1wMC5JHWZmPqEGevDVvbZRwNUUCBSmM0Rv9E91Kujtpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHTXLIi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHTXLIi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD761C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741685933;
	bh=DVe72NblDO6WHe1bKWsl7p+rkYKuDqCUgqo0EmpnnDo=;
	h=To:Subject:From:Date:From;
	b=HHTXLIi/QMvpGIm08YfQJkpxBcPunXeNSknvfnrMavmzTTdxuTqf2tSfnCd4yRS23
	 GjDhjzxD+wusKkcNqtRC4DTd8DLU+XeyYwsqqU2jkSOqTeA4R3fZgQTylcXxSXpKgf
	 jo3ch1b/kFArZ0b0c1vUKgI3HMhPa82iFBM3fONOch6QmhUIpB/ilRjPzN3PRbfbdH
	 s3Yk7ckETJESoGX4rslPg1xQ4jDGivM7rOU4vjU6RTDRcDpo7c+NT9JR/K4qPz9lSD
	 8qZbsrWibyhU4oTMiquKRkwWrPvyC/yMKK/wkHCaoT0KqfVI49d6db9Yj2Ro0dGE1h
	 DUC84WVMNjYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2F9C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168593362.15395.10624504187607938965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a7688e6d04c5cf3a072443c007e9192cf6252ddbe72bf1752b4969a35b39e5
Date: Tue, 11 Mar 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741685933
