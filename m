Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365FB82899
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736615154; cv=none; b=idtYMABnhYgZNBwOlccFbrDNQTTEWUFKhmltohPHy0JkUj3hueKsP59g8V/rgnUuHruNXUOQnBObrNNqLH1uRVU1PqTwmpJOnSI4EQzgu8gtzZrQw27ad0aHD92X822snBswAOK6VWA/u6Ylt8SiZzws5vYOb6ysT5WpaK+0lxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736615154; c=relaxed/simple;
	bh=28jaFZR8BHRlO+1jUCk+UI/oeS/EyD32UY14yOPBH/w=;
	h=To:Subject:From:Message-Id:Date; b=ke/uQgErd9dn6G2RucljXbjuphFKyTqGZstQrqNAOr5CFnsY8D5tly62QLjr6tb5pE9LYpAldb6Wd7c/WFBGicbZlOZwQfQLBBhqcN22Cvn+CcCpLYNBjffz6t9GH4xIJ4Oz/rYp0VUfuvFh/8KpF0ISU9swie5VRovwRfLYvaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3OnoPzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3OnoPzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE960C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736615153;
	bh=28jaFZR8BHRlO+1jUCk+UI/oeS/EyD32UY14yOPBH/w=;
	h=To:Subject:From:Date:From;
	b=H3OnoPzJOMb+5tr8MgKHHH9XX1DMqiHfxENTFMaGz8jJYFLHs+272W0ILbZaLlxOq
	 o8gDQ89G8wRiKhtE7t5qU+18CSCXc+x1KwnY/0YTSBv5ur1zJOXakV9TTf4RL+lkyF
	 EJK7JsgTZx5s4Lv9xeWzdcZKsY/kErT/jOIQeomJ3qHPJH7G/hJvVVEjDshGDp7u7m
	 fakEmaEmA0BmQsT2Cbo4JUi1laKtAaBRGzfTXnE9I70cSfFtyVeBcSwfdTa0+2V2Xj
	 Sf7ESGh//muEbhlCOiihUelQnliS6tL2B32ikmXTsf9ub85/vPlw33q7A17HU1CPDm
	 RqH2Kky3fOomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9291CE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661515359.26225.13212046806459913945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2c76f25b86d53e22e511af25289497dbdcfa495dc8f5a14032a8dd0d94f0cc
Date: Sat, 11 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736615153
