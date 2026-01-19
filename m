Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102B0248867
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768856034; cv=none; b=Uk5/gHp4L6WY3mqiSGYKs9GZtGN5jWnrs8ceTwKa6ES3LuAXHxnrXmvrvom6PjG1v/QPg556TreADG1WxgVeBYSXwb825kWByiGTH09gOfsnQwKRmhQfXiQC8eWP58uIG6QVivrUavfyMcGNaLh1FH4YQESUUgJtMEP3P5rCwLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768856034; c=relaxed/simple;
	bh=y1ek++0JFh7whCikULaHDPJLL07lYp934t1gICMCJAg=;
	h=To:Subject:From:Message-Id:Date; b=M9UC+u/7XLz5y4adbH++gwXxEpTEhSoO0VEYO+iQxai6CC4BBD0vLoWF/f33/I/tzFRicjzeVOJMNNuK/HnPxsjq67pSOT/ilcpTgEiZbekaQGIJpn9/Ye7bqTh4+Ii83DoB1JQwn2VTA8MwIOCnnrSJ99muXq6d4ZS+rZC+c2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVEEzHxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVEEzHxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66FBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768856033;
	bh=y1ek++0JFh7whCikULaHDPJLL07lYp934t1gICMCJAg=;
	h=To:Subject:From:Date:From;
	b=qVEEzHxZCwjfJolJXvocQQkwC3rM842FziVOKeVwfssp5pCF+jQUBGPzNl/4uJnjl
	 FoMUPHy0czpuARpbQq6rk3CPUvoINXgs3HCWUDOOAOaVCA/JHnMCj1gLTzp4UqqNv9
	 zkQ9lkS5y4b+M1MqupDM0oowHUh4ZN+smxhvoeEbKg8gWvc5R/O4H38TNIPXK2Mzx7
	 6aHaSFgHxr9oy53dCgMAqWz6HXxKJ+64nyJ9G47iA064uRKcF8J36+8m3YqZdMsA65
	 JYKppbrkfED6J/EJxbHvLLPKDs20hJFKhkEadPP+uDwz4rYfWn7fXWspxtw68yNo4i
	 HdV1vxO8hQaFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9293AD2ECE6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885603358.12802.15716925243156668116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3a2b31f9fa43c012b8fa0a51a85f67f6edbab61dd93e513fc87936ce806ad1
Date: Mon, 19 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768856033
