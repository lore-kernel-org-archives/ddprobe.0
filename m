Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BD71C68F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767407034; cv=none; b=oae0GnGfmU69iIrW3xAa0y5YAUY5Xf9ECR+jO149m6Q+MXyaSumxIUFIypGpfAv6K63tDCmbRcoXTHbj2qvo3EBr16EFtGgLvB8r92YTB74exAiL98SpvPeLGceF/j4+WtBjCKOTzhSIYYcD+qsGPVjDvc2/buQTjaoAocqJjFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767407034; c=relaxed/simple;
	bh=xx3h/SLSD+WH7s2/ZHsCLLcifnAXrfVzS8k6LLX26E8=;
	h=To:Subject:From:Message-Id:Date; b=Jxf0ocDxNneZIYcxdfee89ElUTlml38WDRy73fC9oryEOLkfOb3pqbzSLH9Wo+xEyWsXPYWOfjhgbZ7JklSEIBBYcdU93wGVAnQ+DE2k6zAEOivFCYat8n11RrggwvN79U8eblMrOQGNcdtYd418KQydAqXkhUDTGeIpFK9lxHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRqj7c/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRqj7c/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D55C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767407033;
	bh=xx3h/SLSD+WH7s2/ZHsCLLcifnAXrfVzS8k6LLX26E8=;
	h=To:Subject:From:Date:From;
	b=sRqj7c/f6+bmwzwXC3RkOCApIDAEbR5pxbOkWaqvQAcwutRdc+8atXq6Qz0otcCYh
	 BeFp48/+1SufI/F6JJoeVuz+xlG7+DBEoYevQjnKfBRLKe6ZhEkoGvtcC/Kr2jLSgz
	 WH0fX5Lwat9gHNRU3GV8UcvIGPCkISWrVN9+S/5GmVtygZ5dTID7ezf8TuUyOTAnFZ
	 YkxnZSH/Tec5q37TsshMLJylfMKYCzKwd9K+F3mDpwsO7tQzV1kbSzV2ng7f5WDRam
	 P9DngH4UKHpagXUGoVeIMfZKtcOI0D3zqIsDXKTQh51gsq17SjScfXBhoTmsxh+UNM
	 +3LnN7Sin9MOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B8FC6167
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740703358.18134.13272993948362065202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac8d973973734130b67b9c2ca0e7e18a8b0c05b7b61430f0059301b16bf9601
Date: Sat, 03 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767407033
