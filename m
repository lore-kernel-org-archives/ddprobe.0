Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500312E7622
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789972834; cv=none; b=E26hJPd/wHToYrrktBuyUU9YTfB9CdAdYwmE1njfNmo1VsVzhYgCrnCm+G1DTX+ApZCuGsyw0jz+XxM3z0n5HyWgiL4wx6W8Ah2kq4RyZiwM7uqEeWINBteq6IXbWoUxU/NBTk3c4RO5x+nKs16zIp6KUx2kxZ+sriz363kMWUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789972834; c=relaxed/simple;
	bh=oBjw4JDo4OaTK4EnEPPy7MXv364B6zMomcPUaeZcxiQ=;
	h=To:Subject:From:Message-Id:Date; b=PNiZaGt1DsBiHw6JDFQOYvq6lqNeneWIDjmlRtU1GGiYwBWYPlPfrUAkxo3R3dfFlwrnZiVI9pdPqKENuWqx91CV56IIb06qwv2/jSyF8qpT73o2Qf070LdJSHzD5XuzifEW+zsxo82Q1nlcAUVZxMI64C9GUnDIcRfGvRGMHdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnXGfAWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnXGfAWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D227DC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789972833;
	bh=oBjw4JDo4OaTK4EnEPPy7MXv364B6zMomcPUaeZcxiQ=;
	h=To:Subject:From:Date:From;
	b=MnXGfAWGwtZWPmWRKLrLMfyHnFIjgyBoFmOD2SfKGj8ktgdNS7pvbE92gnrlB3bC2
	 4siJkly+OrCxX7czCa3mvsw7lf9u/5nM8RYKxNx2FYkvVVzFQ4XzaMFXZB4bKC21A+
	 uvF+H8w8yNoRcwFTwtrG6GGFdYX5MSsazU/n/jFLFJ0lZyIZiIK0FL2WpbOvlH07g3
	 RiJmwWpDeNlnFRdIYmz04KyBqUJDvDENJvM2XZEvttXnNBVoqLLJKPwiB1dCRFzEt/
	 6LiuCf6VXHKV7MTlRHJ6O3XlF+wOmZJedo1gXdp9nOxJfL1EtPPGARZA0s6YVY4wjz
	 /0ks9opWSl2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF2CC982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997283370.7427.11276244606373874239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aecd50c047b70f6ed39e85f3d283148d36c82edb94234619f03e2c9148b4fa2e
Date: Mon, 21 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789972833
