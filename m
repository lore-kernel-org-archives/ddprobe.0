Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEC12F3C3F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769767434; cv=none; b=axsjup4LYdjSGEYy1sA1YMfi6e4R9+bvSCIG2WFm0WsAZB0x9+coioe+F3gxqTsaD3hW/NDVZmS95zGRBuyDo4VYwyz1o4N2EJDa6PxItFhpcHY6F3FlY+ysG4mE7kNO9em2RhdVMplblPmbPwRajiW9CK+z0dN8NnpGZ7GbpvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769767434; c=relaxed/simple;
	bh=2wLCGSJMgovrnZmCi9QjthQd+h9Lte1ilpDGaLB8zss=;
	h=To:Subject:From:Message-Id:Date; b=h9Z+qJAgtEtxf5hxfHtNETzEUwkJrvV1HfkYg+2CNLiFBwfIHwJlwY4FnD/GKj6oLuFbJ90wy7ru3FzzCr47dMohkIcty+ItyaQbnSNesvU+GhFF6gEMT/op441eFrQ4Zo0NjM5vsMgCThU3bLlYAvmu6QKDgbqLcZVoi2/Hkp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfCodUla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfCodUla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1507C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769767433;
	bh=2wLCGSJMgovrnZmCi9QjthQd+h9Lte1ilpDGaLB8zss=;
	h=To:Subject:From:Date:From;
	b=FfCodUlaB6kp3ej68u1lYAlPHEyzj/piJk3FdF05uE+k2vmUXKDgbPc4j0PuocLG9
	 JGE/u3XXjnCXSsCITuxjWtU0rMd7zEc8mXnBKdrDlUPm1p+TylYo61a75NQ6u1dCgw
	 qviIMf4QmqHI3wLAaZBCbb3BZ2Um8bOAcHhpbzVbgGDSHhm7zeC8EeRaePh3BMCXIW
	 4ecK6fJlKDQ1hysLwdOFnMlANYnUO4D0m56Z8TpXKTa35GRy3s9uF0t11gZp74dKH4
	 LnnwwnCLY4falNXSJdK9HgcejqhjHFHZQP/zTuCvCIUZxXQSN32ygwRgKQdAz/e5fj
	 7jAVuGuRKX9qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92922D49C90
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976743359.16329.16765803166906971107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffae1f3c73b2d5a4d5ef09eb0182321f3830a8c18737982bf9309ce281dec4e5
Date: Fri, 30 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769767433
