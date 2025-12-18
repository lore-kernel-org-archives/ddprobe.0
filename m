Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1A832863E
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766051634; cv=none; b=ixLq3ZubdSxDGeBXgxAXKHJopVAsSOjHHdLtg7WoPX3qF9zURIt144emRy/Eg8CjKxwFUZ+6JLJ7CCNsuiLCpXGlMPoJyZqjCd7MJ4baP9P2QHG/sTQGxxN5WPVfLMz93S4CwwJtrLvMY1WdriLE6YEFpH3pwJyVds/3FS1zSzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766051634; c=relaxed/simple;
	bh=hKgJdppVarRIUhg6H1O97omH+ugMTxTYZEnptcqHGFU=;
	h=To:Subject:From:Message-Id:Date; b=Ks2rmyUFVGq1jo784zkC/WgQmXXWpI2ZvJg2ie9Mey+5Rk6mqYdhuFhQBODIUa+zobBKhzym7xQKFY0yO68t98XuXCDZdwn9RHZ9bIM6wHrW3ujAntznQiC+9YoczGECBh6sKiAkyq6hWVlYZiDUCkSSPIH2RyedgRhb4yNV9aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/oAI9+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/oAI9+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8771C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766051633;
	bh=hKgJdppVarRIUhg6H1O97omH+ugMTxTYZEnptcqHGFU=;
	h=To:Subject:From:Date:From;
	b=k/oAI9+10Fdo64eg7HG89wlp7X8ca2TOjdKyjCSxGpocOtJI4zFK6vNr8wXIWPAOL
	 3SVs5uIpSsS8BPsyYrOceBLhiU4sG4+cSL3NDZ+xM8pprEkD7mHVvsCCoYIEoJKLb9
	 /p5DRi7OtYnkmIjf7rXsuGZR242dg3T8ugj+1w49wp2E5NrjyuP03gc3bkw/HEivtn
	 Dph5zcrNOSN13ksM5/xyM9mr05OiWLaYOwRZzaYud3aCSP3ibQvenMEuYcJhZ3KiX8
	 3VppAYGULgv5XOSUZXd0Th12LRvzL0aqemt1m8KwfDvEhF3EJBhWMdrJXxOGY/E5dv
	 XSzCXzHlF04Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9631DD6ACDA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605163360.15315.955801689186274276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d72e5f989f3ea56b6faa7c02760c88471d048b51841be543972db0e3db617e
Date: Thu, 18 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766051633
