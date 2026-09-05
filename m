Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2F1165F1A
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788644434; cv=none; b=AZo+4QmiMlVWJ/fFBFVcFRV+LkVO0wS2tMw0A9QBxWuXf5Gt3v4qoXPELcLRDSh2KcCees/I56z9L1DfwHYUXZxEhHEwQMyJ40LdVaJHUMazkek7ujFlB3//r23joUab9VDzx7zjEbOBQl4Em1KWjwQQs+HvsCo2awEi834r6oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788644434; c=relaxed/simple;
	bh=o3uGIPJG+a/Ojc4+g5mje/ltKb+PUvf6mxawljOgnFQ=;
	h=To:Subject:From:Message-Id:Date; b=n7/3uxQvJhO2qoqFc4Rjwhzt9FemKNR57e4G+EVV0WiOU1+rwiwqk0UU6Ojp2mLwkOPyhq6RzwVMdDZtvK4117QDfFkpP/c4T36Dbv3nXCaBl8bK/B6oteW1K1507V6ZHp44bZmVVH7iS93Q6SyKG7B5oB1iOzMP8f97QEeS+yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3dt0K+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3dt0K+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D386EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788644433;
	bh=o3uGIPJG+a/Ojc4+g5mje/ltKb+PUvf6mxawljOgnFQ=;
	h=To:Subject:From:Date:From;
	b=E3dt0K+1+WnslikyIgLgFLzmfeVjyYx0Ta0qloRD2gzGivAUh/OEdKFN4b4k/oYG9
	 rcHAw172EIuCcfR8BC0i0MNInLV4/3NrGhdM2N0MLNPwuUzg6ZRDCCcBfcpvFvdCGN
	 2xVvXbx5E2hLOuE7/LZ0Yy9tchwZ6EbOXaqtc8x3t3G3udzLVufnXQQmRDTpH1fYB7
	 ZYM0VokCtMt7Fylh/hf9Jagmvvd5t7XOjMLsnX/o88iuiIxKqEeFmWl5KsgCPQM2nf
	 5Sga7oIAYAUM1m0nBIUzTa+GXn8Su7SI/9ICghC9bmhSDoMSi3N9e0U1iZgKJIhYvB
	 n+pczknqyrZ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6D8C79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864443369.31584.5812640093696931213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc86c3627225cf7b196b91181c1ea921bb2a1ea061eca389fac3540985c84466
Date: Sat, 05 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788644433
