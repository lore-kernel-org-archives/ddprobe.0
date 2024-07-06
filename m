Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4A84D8BF
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720241723; cv=none; b=nyLIgtl0yt1WF8ah/J19xiZXZkLET9RccP238eRdYec9r1fEHNIhDEsMdOywclgi+f+gFYgbHxu2tQDr1wJLyB+3qvHtIzq4cKcKaCBvuvbqv1RkVI8HEcyMqkVHW1Z8OFpsQpyd1FqMC8QdtJzGFlbw/n7uFWgYs7Q/1f8oeiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720241723; c=relaxed/simple;
	bh=7l0G3rC8ga7RupKJNxMdUnL498crNwjKVBK7jtS+qyw=;
	h=To:Subject:From:Message-Id:Date; b=MhAwpOzEaAc+9yuC3hPBq5ki3OSruMq2XlwsJvTD6hiDkGQ6LbGkKvxTofgD2jCMlFQPLrRQpGMSAm4rYfsx9vWIqA20zcdgUE7/zSMOMwylaRPvHWaSDnAxu+pMxR8O8v9OgZhs/3mAJr7x1uVlQtUmYhwKI8lotdwIB6CiOEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbDYJLHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbDYJLHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6D6C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720241722;
	bh=7l0G3rC8ga7RupKJNxMdUnL498crNwjKVBK7jtS+qyw=;
	h=To:Subject:From:Date:From;
	b=HbDYJLHCTfOyKSRz57Lr/+P0g8zylj65gFu0redwnf15eKHHK51SzT2kcVSF/Ve9u
	 /pGYZHMMSEx8E/6J3AIcB38q9k7QHklCMfdMQYSAeO+JWMG6PuAbnA+I4Qllcf22/g
	 8xJK6dNMrmZjfhKy8LFULrn4PbwAcUYYM4uhreGkHnFFSYiQGcuFp/exv3PE4Jl6wr
	 SoRJpGSIiY90aPGe1JMBP1kcuSLEAtQXkgSxr4AqN9DQuyc49say4KBO3ZqeHW73Uz
	 Kg8TMLDsbsN0tzUiLmtzxw+XxzyEQ26M8AsOGSKpJdRtel3w0ljJ+f33uZcmppMMr+
	 C1KHqIZnHyxcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7477C3814E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024172277.20766.16760999309553481969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cecd529b6427925e9ae3d5ee5d7758132f9a1725928506e9b4d369e97f833c29
Date: Sat, 06 Jul 2024 04:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720241722
