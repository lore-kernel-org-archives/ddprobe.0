Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B47B282F35
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781761594; cv=none; b=GvX47XfB7NIbIPC3C/Yvl8vKbHfPKcLpnsv/Yf487QKxIUcAxNaOW9j/lPZwHxXKLMWnUyiy/fn/Oo0zcB5hjJWSzjTuje7++JAMoevVBf0ZQFwtmjkHfx25QFU0sIFaJxI3IcdEhd0Dlx+8UocskHusm+x/eqfVgduvExVVKcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781761594; c=relaxed/simple;
	bh=vzszwops3A9n+2yu6AbIXtYCxrJO4PAEqO88lqQpKYE=;
	h=To:Subject:From:Message-Id:Date; b=coxjjgo7fKRlmh494ZON3moxjpu5/e0x/b9zM7Qmx+TOnWvL0Tc6/++cYtNsi6Trmck8Flt3zZXQ/A5hZEbAPBtcjejbidpz/nuSHb6BxSYBRebHhrkship+HcG3+elJaksWdTQ5N2+O/Rz+zO3aTxTV+Xfs5qf99lu/OyzDgOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ehw6iIBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ehw6iIBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8342C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781761593;
	bh=vzszwops3A9n+2yu6AbIXtYCxrJO4PAEqO88lqQpKYE=;
	h=To:Subject:From:Date:From;
	b=Ehw6iIBCXwtuI1uqhu/TGd09SG9ZSMrhl9VUKpyBN1D9WmojiZgvcDhU63nQKbxNe
	 L+i4hoshHqRcu4m5sdkKxD2IMRSvVRnWebQkwfz3hV534QFS9wZ6Y0bkF3T5m9PXk/
	 nKbCX2FLABiD5KxtkN76mJWujZuxFZHb3ReAjKeBKxnYocYVg47ihsXX3vRdkGLIar
	 OzFP8AQ/9iyb6s1OOmGkY+qQo6yeoTUojTYbMCIRRDcvi8rym0KaID2bKuPjFQHVPj
	 mERd+Z6u8IceJgSxyDWNiZ35JQv0Mjob0b3NbZk9tkXkd/KexVX+DF+RZoWEMIQIRj
	 DilfjNTa8oYcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED2FCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176159370.16179.2683092480963909926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3303e40f03baf70dde6a813238e093ee6a52a494f14c085183ff244cd2774003
Date: Thu, 18 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781761593
