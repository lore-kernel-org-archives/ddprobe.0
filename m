Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380A922301
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767063834; cv=none; b=feG+EnUvbkDlvkyFtywxOk/Qa/jXh3SWdXYOi7x/+3XhLHNWx1ZfZbJ7HX9AooS+PMAB8VmWzZW9bfrUbZMbIFgsXK8McwcA/Q1nAtEuNG7HGB9gSDzDd7Fa9vJKvUR3HFvivBQgVSNRvzwfkC8pfDzPUZiT/QgJ5FzmVObq/jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767063834; c=relaxed/simple;
	bh=esg9tctEFdZ5yYKC3cCKVvGpEVMfOVeI1A23h59MjXk=;
	h=To:Subject:From:Message-Id:Date; b=fjS8vl+2CjzYSBsxU8hecw/Ln73Npvg/A+T8YIL34IY1Q819xMKWNKWjRMHW1TJ7aNwGrqA4Ch3Xk2x/Lxau8VZ5aXpz6Eage3HpdEs7o28LQ1AqRiH974sRMsBYDFaDgnHInnboLg37Xb1sSj/TaiDLXR+QMqDS0LjxOBOTGWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRDzWA9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRDzWA9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DD9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767063833;
	bh=esg9tctEFdZ5yYKC3cCKVvGpEVMfOVeI1A23h59MjXk=;
	h=To:Subject:From:Date:From;
	b=gRDzWA9SdytUqaVarBrbhTeTBdFspZ93t5bjXaLORkHlxkMeFtYU4NZqDwYVkSOub
	 rPO4p2IW05g+R/w9KGqQ6IuGW34VMmlrS9GNWPs5dpIOxG9VrjQ91lPHSaBK8HYYlu
	 zVNWY+UlvOcw8S/UOPZReV9vhEyVz5QlfXE0N2glNyNXyYT1o20VfrXtZpqbM9D7NO
	 ZRtIC2QgY9nKIDzXVwlPVH6piFuBXXLMXG8CQU1BiaGjzZAMeXACarIpxc06xtJtxJ
	 MeTs1iYiNErMaUnzfCQ0RUlfeuei3mbMzas7w/j6FkMBHqoDGxG2vfbZjnHBSMS7aa
	 x3kyiwBrrzvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C0FE9410A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706383359.9143.18337126946091433759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf0c8f38b456cd7d3e8480a617a12483afe6608536d72e3959e5a844f66c0f3
Date: Tue, 30 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767063833
