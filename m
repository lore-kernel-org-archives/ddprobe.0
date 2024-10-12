Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9114414
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728693954; cv=none; b=QbRIW3gaRQsCXttMI2/jiBp75VAviDXrfqAO97yRzGvK0TzHx9mNxKZz2DEpCX0llQsp3zq3sVFvFsKi0Uz97tMbEkE0/uDNrCyc498n7h24WHI5eSE5CX44PY0wHKy7n3VuHCoARm+T4PhUZv3qt+RvdNY5S0GVHIqVhygvcgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728693954; c=relaxed/simple;
	bh=vuYLKzRqZ8CB1EuEKcOsxdS4DyWCZrR/Hh2Uai/zGdg=;
	h=To:Subject:From:Message-Id:Date; b=EhqRRqbcC+lVHnrxk1xqsv107iwJMM39SK6h32kDh5sG1qJuWAfSCfZKuI1hKVonk7NfbGN0aC46LN0/YM+75DScqoZziQLbUD4DD3HMAXS4ktVHTts/zHssWdlvrIXyEWRA7hbhvvFpoiFchxjbOxVip7SqR/21FtCxNuV4GQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlHf3WQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlHf3WQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A35C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728693953;
	bh=vuYLKzRqZ8CB1EuEKcOsxdS4DyWCZrR/Hh2Uai/zGdg=;
	h=To:Subject:From:Date:From;
	b=mlHf3WQXwokghcQt5Hex1vDblZ8PBLDHKMuypSAp4NZORcE8PmYY/fMXTlZedsuoP
	 QDF6PE0NcFBx1iUKYXstmuhCu1tHC7F+Hyk/mhse2KhIJT+Tl+EdO09MuLVll7ZfYT
	 +nFIkK0VQdTN5YN2t+TXlp5e9djjEQISncYfIinAmaW5IFN3dV5+9TGmF3P6qTlUkp
	 ug2AMQw0fXha+nQ2lDUqgRPWehbmi2ZeUWheVrJ8FPFyn3H5fX3ZvFbmDLXqv1nye2
	 EL96d+V587P0L7jCF7t90byoods05n2V57R+pbB3fpfZBE+i9yWjgYsZu0nG48nWdk
	 acbpkmDmm9MJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95223D0EE1C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869395358.6652.9415211045084600550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62c3baf0a0c877346d09b708b580432ff8a2476a1c5000688ceac35fe3b8970
Date: Sat, 12 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728693953
