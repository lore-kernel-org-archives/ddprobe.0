Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BAB2AE68
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758572994; cv=none; b=b6KIXN8T4MbaSN+Fs7/Swcp8pxtGkxX4mEmyEK7eRmssqkrYrPwR6KM9TDXhxdr657ekzTx9uHVgMoARNUq55sWaNfKoysIzcgIEIHBCnFDyyIAy863V/zCXyP4St3i13Hpl6pWMCi+GV4N3EzWfeQJQeUo1piQfvwlQ80//IPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758572994; c=relaxed/simple;
	bh=pBIdsDp3Wj53oEK6cy6owfg+QF9efmsyDFmbSumtnxQ=;
	h=To:Subject:From:Message-Id:Date; b=sgWci3UgNlsZy98ZBqoC/gxCjho6CMs64w9MTW9GhooeZd+dpf1jBnFY0rfBMFqDyotW0ElfVk+OttLQjbuRHmAKO63amPZMh3LcDWfm3opAZAvTI+f3zFy/aQEmKJ1LWgbxG4VsmqTDtO/4cG7tQjNouD2aMZByTogrPoZ3hco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5Qe4koD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5Qe4koD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBA0C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758572993;
	bh=pBIdsDp3Wj53oEK6cy6owfg+QF9efmsyDFmbSumtnxQ=;
	h=To:Subject:From:Date:From;
	b=A5Qe4koDDyDuVu6HDNYS+rNxmcAVQwPN3LI6EGJVd7kspKsKc7WbPbljsIiCa4E7b
	 22/R7W+8g9kRK1KwViyqp66p8F/+7FF1te9ttzfeLQ3qW/ANXpyxYjJb3tkE2ODxcH
	 hSOtPGsevY50uUKZvxoI/7jAnCeWJxTZlagNAu6HcsMob3Hq9idpZvGF3Yzxoiu4zm
	 YKKCgjiIJL5m0O1nq1s5WSqwISeePR7+MJ73c8mxYkvI6cbdEg4KljqhRKqyuKFbbh
	 Dw4N5mYnUty08O2grlv8DVqlXBf6snbROfS9L/mwQ4OVnxt8zc5ioToneOiaZXpqST
	 6npgrpozxD9HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C3CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857299357.31087.10651319013544095002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b50aed9c1f56d7bbbb525d5c8e6af3c09fd6d81c3b948a8a98071882fe6bb9
Date: Mon, 22 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758572993
