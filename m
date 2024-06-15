Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9304E22318
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718453303; cv=none; b=Np+Ig4/xGQdmcEzvIRtZB/0q6lWExs+BAVcqW2P8bi2U+ZgSProIUWPaK6kBa+0rxLajGBWucOzAY9YbdUOLnSDs1wY9UE7DNYNctygmZykuJ6cLdg8MPSI7/BB5sbVaeDuxImp0HjqiZCMtAggMQlZrywHcxTw7CdCanlMwJvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718453303; c=relaxed/simple;
	bh=VYvG+lD55hfbYMucDPfG7sgOW2Oi2l1GoSRuiaiAFpw=;
	h=To:Subject:From:Message-Id:Date; b=R9bmi+rgh+58xaS9XOoSIti3JmtnOkFtrmdR/VoAyPaSPfpDtZnemM7sLZ+FLc954Ez7xTWCIKogkwQYt/mVbUkrbMLjMzGoik2z+d7X7LJOTvrOS+W4uE0SvXGJg7GJHjRsHeXQFwGYjG2I85yifIA2q5cBUFfBGXI8CkvDddI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olH1IT/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olH1IT/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC9DFC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718453303;
	bh=VYvG+lD55hfbYMucDPfG7sgOW2Oi2l1GoSRuiaiAFpw=;
	h=To:Subject:From:Date:From;
	b=olH1IT/ebzydJPrV3KKfAcvLMx/s6xUJ3ClKCMuroimjqZD4w2CxjgQlVL5XffPgp
	 0Da7VyP5uIITwCO2NwgsbOpX41GDxjgUKZhgD/CdvWcHlio41AAP+NyQhkbudAV6DY
	 tMG7CPO1wjvCHshboxBlAxXer1orfmvYRfaq5zYoXjs4YEombgCgAy+pWYuRBc9WzR
	 8U1g/kOGbsykxKfQMevwJwP7QjQ/KMGJ50Oa4XbeG9jjAnba8LW8N0oiG6XdnZgnZ7
	 3YpAQFvzBxxsunoOStIboDHFN8L29ZbZvZmQq6jgcq8WqeoRRy3gHf4KWK1EYiEHlk
	 fzjg/jJjMlqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD751C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845330280.6096.14055974428215985888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874c636a024d26eb6e06c63afa6b8eb30e0d2b9cc58b441c6a8f4da6020614d9
Date: Sat, 15 Jun 2024 12:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718453302
