Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC192777F9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767518634; cv=none; b=ZLHcBkHUrFXP338s1MHxPFEE1j1AdNBP/BmhweRBP7MtGOrcjt1Ps0nbOQ1G3fMILajT25aIkWQjWki9p56sAuAbupFjt+eu/RDe0Q448CqfPl/4HjyhU98Nye1xG+P7zk6+rA83G6nc+yScpWyNXMyBz3nkN5Ge6+rv2qbRfhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767518634; c=relaxed/simple;
	bh=Q3F8njSiflQjRnBMeNUZjoerhcr5gCY+vhsIpyLRqyY=;
	h=To:Subject:From:Message-Id:Date; b=kVVs1FqLDZnZBKMcY/NHPjzrKhCHHFcN7FhXPqHQ0JAMktUe8Z4Ulv5P3Z7wIu48N/t0eLNV7g0kc3c+rEDA9gBO+IfFUoc4cnJGpM/iSc01kKj7M+wjl7GgOOkYzLSh2jU4Ew2ZYtgHzI3hJR7mo3eCxwKCrMbqD0hPe14Ijlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8TOfpWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8TOfpWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52ADC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767518633;
	bh=Q3F8njSiflQjRnBMeNUZjoerhcr5gCY+vhsIpyLRqyY=;
	h=To:Subject:From:Date:From;
	b=J8TOfpWq1qWj8TgwHN5gKXHqfaSS6B014Y8dLKcHUlovJi6cCybq+DFZ/onOfQYda
	 6SFEAN1Hh5PfvoYhdxdN/CHnOvCieFgx2lX4iGmO18GQ7ubR7ZJc6j8sY9KxNgG1mV
	 WiIwqVKyH1ftppzc1aoAC1aIBXD6Tzq+gDKsb6309sr5G+rtdVjv3qnwlbjdf1BjW6
	 XYCSpTmXGOEUrgVJusmm5aQv/VK88WSBituWCfLXw7Q9kDT3EQjOtDISrjrZKk74Ov
	 yaiBT7Qugtqv8STV62+S2JTZR8Nb3fiSPM6B28JkWdV3UmNmQKAWG87++ZZF9skHr+
	 4FDLdB+ezNcdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944ECC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751863357.12708.7622651593157871148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923c61b733271390faf4a9bd1517bb8c88ab083ec0dbaf5c9e49c2e1a02d0a12
Date: Sun, 04 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767518633
