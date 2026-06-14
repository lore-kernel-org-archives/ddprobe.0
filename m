Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E9137B409
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781437594; cv=none; b=udTGM5foVCtDroAHpuzYJp3gfAtvMt7mS5v+udah19oGWhnJGTxMME1uRlO7jgtkpiL3UNSgJa0l80V+2XAcPmDF+/rqgxMLsUd3b7EUfnOxEhrV8F6oUKppxEawVMrT/ecvu3bOcUraXD5pFiCmfM8bbYaJxvJAiI3iqWqIpnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781437594; c=relaxed/simple;
	bh=0VV9ODoGmrFDmxID7nqvrqyxqeckC/fEd+4W74bCQhE=;
	h=To:Subject:From:Message-Id:Date; b=p1H0qnjXKe8JiuAQDyt2heiPnrWy1OEGhcrQkZirRpohvJRrj0V0UgD01ydxPeA0LgjNCYuqbjeLcL5Ausk8oRc5jLqIws2s71j1xd154A/FCDbUP2tlAtWnziE97843sZye8wnP0uhs2MUWzXfE3veVAtubY+z7XBkizDDIrvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWIPYUcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWIPYUcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C61C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781437593;
	bh=0VV9ODoGmrFDmxID7nqvrqyxqeckC/fEd+4W74bCQhE=;
	h=To:Subject:From:Date:From;
	b=PWIPYUcsyL7wOVRc5hYdIYLdlKbhtljTa7JGwcE+7ljxw6BlkQAiKTum+CVvRrgjX
	 BwvUmvSkYMlpth3oXf9IGiHsuQbeaADO7K0xsw8Tqy/PvjQ3NvTGz3Y25nZLcPXaIr
	 +Lil2wpnqjA8gC4gsbKe4v2rUmgn5ZVEA+bQG6LDvbXxlyPF1ecvEYVLyvTCwO/dYL
	 6zO8lBirVkQK83PsAxLQJOG0/0NtGXWwDA39bzLQjlGC5yuFIxAl+6O5s+7G5jYsLP
	 cUFEoT8KUnZyxBDvxLZ8No4Ar2Vi9VSMfmbAguaodgcJaYOom/UH8zGEd80qheZ2TJ
	 hbrM0bBnqMXuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD685CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143759369.14340.15990846252097346051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4de94c000854a86a5e287fae16b475feb9e46f115b535e88727d447fde2e68
Date: Sun, 14 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781437593
