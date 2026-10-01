Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5761B3C585A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790871036; cv=none; b=jZ0LLNUIV/IjXDaKrUwSOxp9AJA4C3xGcrPOcA+oSiLuAB0ugzO0gNDoOTOSZKH0rZPC9d8h4o9IMpSM2+r+TCBeWDnc33anyRBt4m3HOUR7qSce+DxMRwqJUFjmZvcOhdcQuKc5pEFwXftxvRH7G/tZfR3CtyL1es3ajV9xIkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790871036; c=relaxed/simple;
	bh=O5Fc3f12DEtZLZYrxiwyqT53kif/9zm3EUvcSjTemgs=;
	h=To:Subject:From:Message-Id:Date; b=RFII+fyCvn1MaSWFtIDssMq1Kbc2Ppd6/N8PyKl6ZYx8fBx8Tn6ACIRu3yGAVv4dIRPIQyJuvLnzfCSKFii87UpjZmvamDu5fmnnRPfdhSCWx0ThgV5qj9Rz/AfKrQ30lsdaqR5VvLW1BrquKJQOZsxwdJUjE5QYNE+2eRctitA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv9I4iw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv9I4iw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41E1C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790871035;
	bh=O5Fc3f12DEtZLZYrxiwyqT53kif/9zm3EUvcSjTemgs=;
	h=To:Subject:From:Date:From;
	b=qv9I4iw7R3wX94SEUEHOf0VYF8Z3KJUEMNOMz9wQqoCWiF+abu4WGxkRwxQ2JkZuA
	 soi3SWB1yWNT3DUvFHzljbTGrzm4yJ6CEb7cdhr57bF8qnAbTKKpVAcKyESCsLVNpH
	 t7rJrn05eSwxQVBgGZvu6Kv+HWhYMsV/0/gQpqKZt0CJHkJ6PydUGgxB68Bqh9Ze2F
	 LajGglc6b4j7sdGS/R7ASIUqWMYjXZy/p6rT4NKsJ1zkYe4dVR4te+4em7YcQVyE6R
	 goWRerv21LzDefr0ukpNmnkG6RA4jg69EWhCmiwFEwNZ3m2VWTO87+YHbh2tgmRfD9
	 jcJ1xtQ0ujLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD7FCA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087103369.27476.1217547147812268483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6711b49ec8d44222910cf519632083771151a39754669b8bf96ee3a09cd28077
Date: Thu, 01 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790871033
