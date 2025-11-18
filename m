Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BCEF298CC7
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763455314; cv=none; b=gPKxg8VjgHLADk9n6u+ygXQFLtun2HJjUx0yZqpZwqtQ2azyY0AmQfPf1dNbYhHxelzoBknLxjQfzOOnYFAiRJKitUMDfTZyT10FFLaYhrfoe07xAY5UKoswuOpl6YlpbaSuS5WCu3LInRgOa5cL0bv1NN1ImewvLf7O7C5dFT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763455314; c=relaxed/simple;
	bh=SpwdOPOf8Ab04CQJA/FY9yifMj4nCj+1llU9A7QzG6U=;
	h=To:Subject:From:Message-Id:Date; b=jFpoluXsyoWSITnnvQylVynImIo5wVG7qKtLxpn9yFKXHMrqbR6UAIbMe0AqZKnRNwtzhDcwJWsrwGUuScayizDzdHPPI2swpOk3lggAh7Ql0dMe2uiNUjfSd70BV1Z2RtGvEEnHHIdowqAX6YkrSp6RPbEq0HbV53N0KlEUYQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1ZZyD9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1ZZyD9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDAFC116D0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763455313;
	bh=SpwdOPOf8Ab04CQJA/FY9yifMj4nCj+1llU9A7QzG6U=;
	h=To:Subject:From:Date:From;
	b=s1ZZyD9ypV+dR/P4zAYaEnAACVNKhdiOqrCvf5PoMMqL2ZoDm7f70SMMIk8vQMSiF
	 hr7vsTHIJaQAcJxIejycH1Pw+xV0dO7zVyDYgNeqPOvGz/60VF/FdbBBtzw2OAR7hU
	 Dms6S8Qo/JjwQQXE9fqzDQA3hxZozhuOOwmpr/sVHi+Z9hI6M8aNJxEDZg728mrWKh
	 kOaiuOilR1dnEWaK6sxDeMqw7iNTK8LGM17wYxDm/j5JDtxeD5uBlOTL4wINpBtuzX
	 ux8YRTY/dG7siF4VA05k+3BlbQpAhb1iL/e8/CsvXwHe5EKHDgvu+ZMySKI0GlaOCG
	 CSX67rGOsTabg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E34CEBF92
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345531358.12543.16765733583339675907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86db0b98ea49e99f8934db6386568d4035445b97f6285e77ef5cadc244462006
Date: Tue, 18 Nov 2025 08:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763455313
