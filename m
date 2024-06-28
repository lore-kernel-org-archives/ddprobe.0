Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE40BA53
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719617663; cv=none; b=E4t8hLCfLfPdfZ+RurVzpOryoG1F8/knDlHvG5ohGufCG6lMV1NJ95RlLHKkV15C5FF50EqoN+ea89wBR5csvuLmVWod4Hya/J/W5wxVteevkCXOPBhXXZe0qj8IvtTyasFJf2GoB53xnuY5rtsJVVMY7QEWZy4HqiaIvZmHA78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719617663; c=relaxed/simple;
	bh=nBeQb7p9Crjxs6JKEDGD9BilWrk75JmV4zOQKH+XjpY=;
	h=To:Subject:From:Message-Id:Date; b=bNu8/k/Tq9A7TTXAIiIwzhkKjivyxnIimxb3cUXjl/wZj20OzlZBCXpjtHYvZaXpAxIvPNoaqObTLGCo7q32w76z38HqXe0T1ANWfKpOtl2mCBIsdYl1xyy216h5ye+mhCcIEEc7N+R/YxrV7778tnsEpCsVl3e1cYoab3QfHPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUJZrsoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUJZrsoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1BFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719617662;
	bh=nBeQb7p9Crjxs6JKEDGD9BilWrk75JmV4zOQKH+XjpY=;
	h=To:Subject:From:Date:From;
	b=PUJZrsojh+bIf78YbzUGrNXGn6e7iWcAVmHFu24G+ydtUGLvN/aoeLcndy4OCGS0d
	 RmrgtLkyz97F1JaT9E9wlw9DfrCKO09R++cZDJRBGQ/IM+SD/TvpOjWBdGeZCpwZHK
	 6Qv16YkEws49b324sT7PB0UZwO0Zcxa1oO3VLpYlk3A7JDNrTGSRvWS6blRjtvZElP
	 hV3yjDk67IaUWuwFhduuLC2fdraxXP1vdPa8BH0de8T+916ua5a3ni9vWAazSQmse/
	 H/Okmuy+oQtFRqEf+TMC2cFHwzx8bc5cJyCRsyr38coPXokJurZPc+FSx1ojnx+X+5
	 7E6nBd/3ddXVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F93C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961766277.13307.9429386837255422791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1c6d01ce66fe642b0d7d82d7e89ba2bf3065a317181d6f0966a0888616fbf6
Date: Fri, 28 Jun 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719617662
