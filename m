Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338ED664C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741357735; cv=none; b=OQ+XgqII6tgMI8V2ScAsuCl2fTYqtSBsoD5SSd6L+4ukYDFfBKWrDxeBjUmxdaTEiDlo/oDhlwKmASQQ1uj4/98Rd9KeSQC+rlyVi9gezI/ThdM+akKEtWhv2wPMt4THBLixKDRPD8m4zlsQm4TO0XniL4oIxyjpOWlCBFE5TtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741357735; c=relaxed/simple;
	bh=AGUUqWg0O2NuJqcm5D77Rm2tSax9tcHbv2M1zqDLyKk=;
	h=To:Subject:From:Message-Id:Date; b=qA9vYmWqJbKsD8VmYe3MxTPthWl0dJua8hwP8yovYuzxne0PxnPXwRdJbPUNdb6hqAZbByqZLDYB/MvRO3TSgFgNDFQKOPfuNV0YXuRa+/rUKvlcuflykd8EPv1MkO3Xz0ec8RxvR7x6dsgjh02MaC3/NhZ+ScMvGMlWjwbLYos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSBl2uF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSBl2uF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CC6C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741357733;
	bh=AGUUqWg0O2NuJqcm5D77Rm2tSax9tcHbv2M1zqDLyKk=;
	h=To:Subject:From:Date:From;
	b=PSBl2uF0IbpGGXaRzahYuQUfu/8Ok+yBNgJL7d2fzO6Hqkiq6EDKydYlJ2vSGDKT7
	 GUjeASr9eQXQUQzKAGJUcMxbN/6KG4x59ioAOI9f4ENpOA7SQJkB9uptTGouvBocGZ
	 8hg0yGnHiVK7vgiGg8yDoOBYSYvNJdU3z/ZyJgbf0Pk6b1mB5g4RYpN/a0e4MbE3Ai
	 ltgN1b1Daf2K8ei/EV3zBoXKsiBksdBfscubhYlh37ec62opGDUTYWz9Q95iEwHNJG
	 duPA9NNkqEC8YlrtmVI7Gq1ixRnEfkqUbw/OmLiNU7qPTWicJLsHgDizs5AqxNaaZj
	 CqrdZ7SKZam4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96594C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135773360.15466.11823342001624562471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e828dac1dd5fba43cab044d4435b7bbb2be6ce3ee4cfb37e1532eba96ea6de
Date: Fri, 07 Mar 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741357733
