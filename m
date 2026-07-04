Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACFBDDC5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783131514; cv=none; b=OYZRm2UyJ7Jw4WxS8RA9EeyJ6plRisOQxwtgxXFxJv0b7BsLmIYdU1PI5+jlwrmhcNdnFxaXj166AYZSCVKNMYNQ3K4sLewRWWAXV8hZDUbBW6H+iOXE5H8sZj0Vjwfld31uk1rDOeiJ6fhRRq66duCWaH/aoG2qmrsAAN5txQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783131514; c=relaxed/simple;
	bh=CZjbNG3dR+VqhsHxmS8r4H4eulFJKVseUovGvWMfjdE=;
	h=To:Subject:From:Message-Id:Date; b=OpuOfLncLj8Evpsm5CNHnDb/9m8C46CMget0gRtLjZ9xf2FHcyissgwJEOHkhgM/IOi5n8Z8BqtgujTSP2oVmecYsbPqJntfPA9OilBryDUB0I7AaQ/TtI+xvxuJjMH2GLVVgjxcMpoMl+4VkuNrNewcfKlF2hMRI2V6zsk5X3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L59C8qUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L59C8qUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB58C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783131513;
	bh=CZjbNG3dR+VqhsHxmS8r4H4eulFJKVseUovGvWMfjdE=;
	h=To:Subject:From:Date:From;
	b=L59C8qUzWH99HapQYhkz5UpGqQYMwdcHmZU77uydv3ifW34HdbC62kAj+2U6dx4Y7
	 30k5JpK4LriQOzdDZgN3fLuSVMWDgDb1y1tFJrCErWubEz6zJiEfOK1kmQo1wnrNNG
	 PBvNd7si6RjiTiBJWuZPa4OtkCC8C+BnLc+sA5pBF8fOvJPIt+inljy4YrrN06NFVi
	 uIR63+j0ffG8/AX8/rq0CI+Ywv0ciSVOSDRyGQZCUinioSDYm34Qi2vZCttIo2TXdf
	 iWK55u4kai1CzohZp+OLPMV9CZPdgwjQvkVENT8cJ18mnYT7Ll+IQ+uadRIeRDn3oV
	 PyaNY+lnZaLRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB49BC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313151368.27163.12682722630576927424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290648ce3759bcf0bc3658b832f44cf451d4a674f9899949879dae9349a9bf6b
Date: Sat, 04 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783131513
