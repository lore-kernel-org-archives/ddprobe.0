Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6F241754
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783730914; cv=none; b=mLymcT5k7w/AWwDjF5SZfL94HofohBrl1edacLnw6l8F9yPR3MssEIS6f0eJR3R5VHXbhkJNftToZYkdvLgUOEJqgq0ciyMC8tgoBNccn8hB1DCgsjVJ2RATiTRvBLlPCoIwWB6Qt6PlY4/zhJ4OqNFkYmczy0GvF2HTvMx48p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783730914; c=relaxed/simple;
	bh=/5K98DQTH7pU1wWcf5WO5MbAK0YCGL+tq6JJOY11UuQ=;
	h=To:Subject:From:Message-Id:Date; b=no5hLdZnrMYhLo07BR7S34BG7EPADbt9VlqV8xHK7CU4C6fitDjB0O2I4oAPF7DrIr3a2povwBt5ODCGz0hpuTWY2iM+HGNTbFaTTrwVc9V1WhZv6aOKe+/O4FUvV80T4UQz/Nnkn1CneMu5oqnWx6vaQRM57iiaGeGAlQWPicE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgAvo/Kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgAvo/Kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD080C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783730913;
	bh=/5K98DQTH7pU1wWcf5WO5MbAK0YCGL+tq6JJOY11UuQ=;
	h=To:Subject:From:Date:From;
	b=fgAvo/KcwP+Yu+mp125cVYEIUAM2h/RK9unGluFq0gE7EUCFObLDIPQ9EuG50LD27
	 Be9Oe9nPmXGrglXf242evQflJsezY9tH8cXyQz5HMS7GeLSqlSA1tLIbzG73hd2CTD
	 m6Q3fnIB6vWrIJvi2HzIorlMWn9rpLVKLkHwotSe/Gvpfe1WqnNr4l5kuqsrjGmBEP
	 8RhnErcFWHXxBA82kWgsdmej5FqS8HEKfME9ig/M6XZdblglK03iGU18GpXRmXbLUy
	 llmXUC3b4ixyOQezajIOaxrTx7CRXVshYxbYIlZhfOkH1qHKnnicQY41/25BXEbqk0
	 Cd0HACZq6zGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A943AC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373091368.4795.993704948349817502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f9015b8740f2e80ea48a1ee9f19f6cba587600b2f407b472cf82b01d8428f3b
Date: Sat, 11 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783730913
