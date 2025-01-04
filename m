Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534B911CA0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736015154; cv=none; b=Zt4eu/F7YNyJDiKRLmaIjxs6cU8DNk/iLe/bhi4IPcyMNUk11fSjH54ppLgHldUbBiLMJzdR3zZOy+r83R4qJGJeAzdn0suakxqOv6KlaxYSDzlN1poA1PSuw8Rh2v1FyDH9IzjjdFjRxd6cAfSpjs21kKFAHxMKTSK2DWRHT88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736015154; c=relaxed/simple;
	bh=mXe+5hLz7JLlwLRztjWfkD5XtACXInvoUvnsoHIFEQM=;
	h=To:Subject:From:Message-Id:Date; b=TTHrte6HZsbMoOX41hVFbvaBB33aVjUOCNlmz8QoNx2RoKr3SKYpeXQuukOAJKK4L2yN44X5vzvGL6t7FOwnltlbj/aoKiWFeX0NJxUPai67vRxRyWGeDSkNnD322wVs7DKIqRKcBcq5FpRWPw/+INuuiYcDWvWOeCazKKPr3IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gz3HthSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gz3HthSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BE6C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736015153;
	bh=mXe+5hLz7JLlwLRztjWfkD5XtACXInvoUvnsoHIFEQM=;
	h=To:Subject:From:Date:From;
	b=Gz3HthSZioHmpfJCiHrTfddSjsG7pqSQCmRA5Mb9fBNyOAbQUfVOUS4dL2Nn9L53Z
	 3G5nrihNd5cvxgz/IuoTLbgK4d5LFXxb7JhrRZSgjig1OX7Mdidx7MpVndShJJDVOe
	 U5jSjs1gXEk4PS1tgomSqhFfyF+g389nH49knqA/hNmTmbrYqmlS3lVQUve4D+Go3c
	 Jju28HmjQ8NzS3eJxF6bqqSWyo9YWc51iHhn34Mcb79O5utA191gfoWRcHFnz50D0Z
	 hrMsAsk7L5B/KmTfFhp49TXCO8q1qh7ufV61TvxHlVHeilR3qKIK0vlV9JaZlBtpgU
	 PcLTLfWUxB6aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B109CE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601515366.20857.8856529965102942000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54c7fb48dfa66bded63296cd0bf781a1061797a82635f2dd461a7ec79d8074c
Date: Sat, 04 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736015153
