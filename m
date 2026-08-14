Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50038390609
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786672234; cv=none; b=M+Z5E4zmpnzldXIawFgTvhUtbnCyTm+eQ6r/Ct3vGt+CXShZFG19uSQudBJmbBZT5NQIsoH7XRxkvW4pao7R+NHNu0n9uhaxcMjrASdo9tX6kVuC7UIEEUX1UgJGX87sVfmcuI1mEKJsYczRyARve4Hv/Bk3liRgTmxsquj0cPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786672234; c=relaxed/simple;
	bh=PzusxPtG7srASny5fR2LuSrHQE9g9EOyLBZUB0caOHQ=;
	h=To:Subject:From:Message-Id:Date; b=C6Vu4b3nLTQUsj3YcyfzV/ngINkRHcQTV/AV/WlcSsu+RRkJOhjgxfmeZmxFeF8wPhDuCkk0yn31N5LMvJ+4tsa5ZDw4FA/K/XFWeeoyjDiCyLXthRi2tvQPh5H5+xB9oZjOpbvPa4SXka5LLJzJNCWgLeadKOdtsgQ2PtIJi1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5ClXguV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5ClXguV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFBCC19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786672233;
	bh=PzusxPtG7srASny5fR2LuSrHQE9g9EOyLBZUB0caOHQ=;
	h=To:Subject:From:Date:From;
	b=P5ClXguVPpkChpT986GmnKeqq2bnTTLqtsCUFIUwcQkEw81VmMTyXBI2OaemhU628
	 uWT+BikSmaOCS976mNUeVRDcLnuXOXqYip2R5nD4Bnfv6IggfSQ+B4JVI0k7zFo+7a
	 90ISevj22ci43YZ9Gl1CFZLKrmlTsFnd1so5ou4Y52KsZQZ/cSs3SNZSLlFHq4t+hQ
	 Pm2hqZtnvLDtyZP+hPpXAagmKMjAGKMkX7B3OHNTYdHKPQveTqEFlJcDhRlrPw0FCL
	 /ASt/kk5UIiLmo9QpSSjbqR3V7C4iaQGtbu1OThNiwAMCuaF9yFyvxv0SQ6ZQpHBqZ
	 Rh9EkuFdflxow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2D0C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667223368.14002.1212251001985530278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5b51d46069a99cea2b9eb9373923b00486891f9257b91479e600d625b77bb8
Date: Fri, 14 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786672233
