Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD6911CA9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759501194; cv=none; b=eMGrBshczYQjv0fsM9oXNIzc9k3F+OJAN3QXcZft2AaMldvKmNgg/J5/sHmIHLwcFmEq9ek9awf3xvSFPbZSJSGB890EYW8SbminevH5+XCMJ8iql0KxUuDB3OVRvj5rzQo+2g45Zg3WHwFXMgZ4mIs029iVTo6gqBe8i+p7E3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759501194; c=relaxed/simple;
	bh=LbC9XbzdsPjokxshGSoeyV9lEJxsc2Rkm9MiRSXS8Ek=;
	h=To:Subject:From:Message-Id:Date; b=fsSNBmFcE/wdPhTKWn+7dJcFakCQPLkPmHXfxxeueyfQ4TGY7Nd35xkbM8Af+vO9X3/MZyT3grwO+aNgw1kbLppTmrvHl1gkuMIWimo8X3duk2vadBfi0mtRULrVLbrFKA7mRmDUfySAGfT1VSH3Zt1xizxIXO0s/a+r2d8LkIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAo0CcWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAo0CcWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F99FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759501193;
	bh=LbC9XbzdsPjokxshGSoeyV9lEJxsc2Rkm9MiRSXS8Ek=;
	h=To:Subject:From:Date:From;
	b=hAo0CcWNz4gg6gINKpnoRaA4ATnrDlevsN1aOdlhZ7koJrhg5A4zaE3dEbGkbZQE8
	 IvRgb3iADQcwCtQy2ES1d+7XaFY0RxIup0w7RjZf14ysgVfFy/dJQMpmA7LMredC2Y
	 p/C9BtDKz3lDvx8FIYeACzpJ/l7tEqKIQT6VQ1rwtg8wZbDJNBpfeAlLes74JiD2le
	 nqDhYcj8SJOaEhDT7i0nwvA+uFjI40JiDQBlJzImfBGwVrFhyV6a0d/Eyl4DjkOw0T
	 wYfLMVErGTSqJWdprsMn2t9fnOFn62pztAp7KjOfz2daMHq/dqd0AsvAZkk5AjqQcu
	 zRqT67SMjNMkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E3CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950119357.7425.11401459124680322678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a517cb49f3233b6de625cfb186e027de07789b605efb59a7e63cdcf7893136d
Date: Fri, 03 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759501193
