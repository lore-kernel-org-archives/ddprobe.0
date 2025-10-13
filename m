Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0045C1A9B46
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760371194; cv=none; b=TSTpBLtAa2HiF8ea5ApFM+FgIjyL1sdioHKtm29LvqCeCzmtq8R8h66z0FG9buEw5qYbIPfbJZ6IVuu/Y3trDRaw4je0Qko4yWcUrsyBZinx7G4ryiDvffV0ndN5bITDhhSRB6Iet/L1hdAvY6X0x3AqZI0G2PqXtC1FMTocUdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760371194; c=relaxed/simple;
	bh=yrB4tOUmYZJj4jt+ACmGKjdN0EoXg4jf4xeNMqgw1mE=;
	h=To:Subject:From:Message-Id:Date; b=HJT6PzCZiCixjhKxtvGuTIgRh5H6swgvYImcgL5p3y6qf8Q7+cjzuwieeDz/HrvX+0+/lGUYuokm/kwRPhchGt+UmcIdzUzNed+cmosIyJdARXUXgTCJ7sDEU5mj2kqpfELBk/kfwt29F93EjXkWc4GObeE7Sa31ybcnjDAYe+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBYICb+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBYICb+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D486C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760371193;
	bh=yrB4tOUmYZJj4jt+ACmGKjdN0EoXg4jf4xeNMqgw1mE=;
	h=To:Subject:From:Date:From;
	b=lBYICb+0HSPdjhAFz69lcrMRv8ZsHmlTWG8CBmFGfZQDjTasvCrzS5DzgBCL8oKdb
	 ZIXeId545GxNHYv3uT1pZHEgd/O+OXwBGKEmgWJtJI8dZ8M1bIiT7NLX6D/ZNn0WXc
	 n4mCRIMHNUdb7Q0AnuLBSnMeL5sewlr05QEoY1indrdVMSYBsSmOgyCSlNPOr9Drka
	 Fc42ylfRjX9peYQBjjLh7LppXZyPJDos97GcVw7/ihYnfT9ZKSx+8tYfM76yBrQDXI
	 j/X3DDWlNhGhtETS28+fIrDIjFzDq29WbbXdGYwNPfcI5Xjxosa5XjRQUtHp9PwAQX
	 oe/S91d2kHGTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E3CCD18E
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037119357.8634.220208470365546942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa278af3c50efc0c703daa1e4c110bbcdde79e8e857db2549cb3d3e2ec9675de
Date: Mon, 13 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760371193
