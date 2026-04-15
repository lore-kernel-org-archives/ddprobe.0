Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED013E6DCD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776272253; cv=none; b=XzL4JvFvCWpgJ+hBdn1mJp3pRLRf/vUKX0Z+AxR/JM1CemlNSKISKEylsuN2II3wBB+rMyyTt5VzdKTFZ+nceQm057nGEY0RMascPcCVXJz/L5uXP1x+d8dVfTjtvd03suJwBvEK+wXEoJOzM/J7LCFneUXpZHzUzJJdJIuhYYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776272253; c=relaxed/simple;
	bh=1hDoh3eAO97lhJJNKmcIyMOcDJTafyd78i+unW13RRM=;
	h=To:Subject:From:Message-Id:Date; b=F4nc8HnnsFTGL6fHgLvj/gRa0swarj3iFZFFXmhxwHTtmacohsTVD5LpMlkCkKPZgEvbHj8sgU2hk6rUCTkuLGKPOrBzlvE0FW7YnO54mTt0g9rSXu8daGgEFgb/Y/gW2uEm1PWYsKTVk2hj0wzFppCorc6+3EIiKpruqzMBvd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trW3yoW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trW3yoW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3D0C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776272253;
	bh=1hDoh3eAO97lhJJNKmcIyMOcDJTafyd78i+unW13RRM=;
	h=To:Subject:From:Date:From;
	b=trW3yoW/kqAsc4toFlNvjJvOUg9Z+5Rq953x7FTsOHO+IdQ/ZHC4YDXlmp0qKJvNG
	 9BrgyT9CIxlHZe67LORNU9kqu4MktpLZzkBTXAw2eqF0WAjduvBTeuly83bjuBxZbA
	 /COOSyu9Vqvl/hN69WePJylhZ2nYUrFl84UMis3Ajivwm/c4TyDbiNa6jRQ0/o2dQe
	 1VgJ+kYWXq4CKj4i6s3Z84WhhnuXvUeRXrV9A7+wbzbyaQIZ1saD1O5uNJXc7et1gh
	 6ATx2THX+LsnK/UCvMXqIoqEXW9cq/XfrrYtCT1LD/mk3NcvusdkLeObjmbhyg4kXu
	 DkZ8JkUjGsOuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF31F43848
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627225369.12623.8035973055343528103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac99cc793650c52572a4346c309b7d3dfca33070c8d46cbc265bda6ce78d3fe6
Date: Wed, 15 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776272253
