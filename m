Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7168C381EB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785346834; cv=none; b=pyarPsp39im/SF/gGn5dwjeOb0OTAWsPT67YQN21s9Jo6D+T5XzypHCZlciCnRwb1NdnqHGp8+hMGs0+BO/9vnheYmT1PUlnK9YH9CVyq2MZ9Kn8cRriBgjaTGiNMGEwpqBUMr7cgsGeuETrrN6pLhRdwDe2baDYeLPqz6K5vPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785346834; c=relaxed/simple;
	bh=nac3eGJvL8cgNZ5wbfpFmOwDiMDHnUmXhEuGCuQUSGc=;
	h=To:Subject:From:Message-Id:Date; b=Wf3Ya1dogN/NtDqiBAuc4Et4p+c0qB0sBXnVehKa2Z5FU+gv9KiUMZSvDBbXcbthxo4K+tgfx0NgGBxbAqjC7b6gQVizQSGnO1f9exeQEcMJ1CxjFp3B1h0BoDx7ljs8T9vghN4mY50WfJ4LNUevxZGqKBlPNNoUivTXBRfvbd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXsmbSSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXsmbSSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA02C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785346833;
	bh=nac3eGJvL8cgNZ5wbfpFmOwDiMDHnUmXhEuGCuQUSGc=;
	h=To:Subject:From:Date:From;
	b=gXsmbSSJLkATa38NOGYZwwQbioKV5ELXiCc/ec5PoW8Unhe43psKTdt3/wmDqrSsU
	 8oxKFeSSWUIdtc6HaNtVblOXl1P7RLFd6waQjpzYCc0P1lffk87mWfdFe46Ji9yVUC
	 VnnTBbC2BTkm+fr3fDvIq2USMeattPvuOpB7nATJ9kpmUyEf0q53L0N+ABk+YzNZb2
	 19z3+7NWxq0mDCG6LAjDF8HBrtBPc384rAU+MiMR5M3768aOILmeMMSkBaG4yo65Ll
	 t2XXdQtQmTqtRA+WVHuRlczUd7btlp6cpz5KCrdrqLMeODnGwjro/YJVsOajOUVFcQ
	 ws/ysbfKbQAPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E18C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534683368.31015.17370003540891724167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0880efd397344f23ad5749b4f4dd6ecf04180dfba59a376f771b8cd1c00039a9
Date: Wed, 29 Jul 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785346833
