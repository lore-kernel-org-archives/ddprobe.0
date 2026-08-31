Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3A143C7D3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788192634; cv=none; b=bJ5EZHFm9T+2BtCwBo+11o6z1Z/fVS6MS3wOe4CSQcsVM8A/83Y/siEyCpkYijM1NOgBYE5wVQxeH8EvDH4RoA/bH7I+HKajF6HuvNF8UrDUwcMk+TbVf2vEHxvvKGhKfPWN4sEymKHziXJviUZrJ/SCH7frhOcK5QXrxmGQkSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788192634; c=relaxed/simple;
	bh=mmrCZ7XIkK267zeSqZf5VEkKQIbYRM1xYo4a4Pf+wtQ=;
	h=To:Subject:From:Message-Id:Date; b=jXlqUCKlDVVBtyjNAV8xjLfbDbuDeNVIjJRuJ7zUY1b4cfS18ZMZGPS07Q6PxuLD/LCwk1XTWaVHZDeCNpubLsAG8/60t9tBdqN2UwcTTeqtUo1czGGT3AaC5LmQL3IMCasvnIs1yXaFgXvzE2n6R84u6WBRNSbm9VVU8uROv+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwLz+5Ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwLz+5Ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1DFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788192633;
	bh=mmrCZ7XIkK267zeSqZf5VEkKQIbYRM1xYo4a4Pf+wtQ=;
	h=To:Subject:From:Date:From;
	b=UwLz+5KuG4PsmoIpLc8UWIU72W09VOQqg0464F6IqM6kSTPt9BATwtl2VvGEyKU9D
	 5ypnu0IAPQvSUUkFx+eioKX/3IhUtxyCCHtbenot41HIiK8K08GhicJ1Ax1h9elmID
	 FQrnxuV0pBhicUW9Jb7NduC6cPAI1t9uck9PMN285uETiy1j30f/r5oBjA6fb4bQAl
	 j551cSHcgQfoxmBHqO+WeKLTUQQaslGa+jg2JbghyonQxY4upyzeg9HbwQ4F7KbdVr
	 DoH/xKat2wgT3XXJ+nMP43x71RFp4tFuwSGeVvfs/kU2uPlEaq4l/SlCYVJz1OuAf5
	 FkYNpvSRl8w5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8219C624C6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819263374.17936.8133070394327514322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224166fdcdce8dcf705945613031e05880021dc866ae72fed94c92e324fa7a3e
Date: Mon, 31 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788192633
