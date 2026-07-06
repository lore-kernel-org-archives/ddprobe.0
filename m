Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531842EA154
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783357714; cv=none; b=QwDOmyhXW33JEmgDFYQMq9pWzEQXlggdyLOwXX8ZBQ9bZu1Vb1GbTYEOA1FX9O9YlJnCDvCrPXaHI+ZDi0bqvh08reLMPk0I33pm/SKzfG7XSSYCnKZz5ZpG6D8AfuufCbX/1ySxhHYsX5N0gPh8BSA5KjVWv9q9BhF2/j8bhoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783357714; c=relaxed/simple;
	bh=IFz2EZjFFwwo+zKihx05/WpfQd25MLjJmmy4iNefanA=;
	h=To:Subject:From:Message-Id:Date; b=CGc/tPFofh/vfqFmyrnFERwomMcJiT0vjZ87NnXs17ptgLXQ8CWChGqXtv4QPjfO4ShkzetvXhARXvSXVdMVMDf0MvxEC/SFCN9x8EdUhk1xT3H5H2/BHowFIlFZ5vMPqphgYvHd55th9XbbJC1Vl058zfisOyB+l8mYbZohBZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEH9dJax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEH9dJax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00C3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783357713;
	bh=IFz2EZjFFwwo+zKihx05/WpfQd25MLjJmmy4iNefanA=;
	h=To:Subject:From:Date:From;
	b=MEH9dJax4CqEAiIFYFZ0GtZseOwKznKmlJfztxJ7/2Ed6WBDNKgyvRVibcQTvQgS7
	 I0fJ/9zWHjJr3ftGjZPTByRXBYk9iznKiBTX0WRUZK20gVISsb+gjwd4MiI9JGxIcZ
	 eYNXzGj9YSOOw+QQepXbpY/z93Oo9mT0Ho6lAxb91Jue5Yp6pHbl0g4pfXUNk90QXh
	 rTq4aVoFnwcX2XZPBOFbQYj+BOzLd5yG8E9JB5blXqco2kuH8o+2dyq/xYyIF9+Zbk
	 hh9oXAlBXmanfc0ILwogYHL3aDlSH76icUF0tlgabK2ArcDo+9Cjy2FW9WMhNrpLXW
	 FMBZ4AQPB1dXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF72C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335771369.8682.14150845386363416195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60274440ac7d64d043a38d348bf83e7572f70626732c051504937afed973616
Date: Mon, 06 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783357713
