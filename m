Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A47629E115
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758268194; cv=none; b=eKHBGPvq2jEpcZd5bK3E+WdCSrQ5TGMxTShKVArRjNQtgniZP0MUGpAi3vFqpgagbC71twGQEV/imqGCY9xzjH5ARjQNd0xnEhxha3cF4hqwDDC+3vTgKwAIkwuikWCTkIVFzjlk8HSOvkdJVfdEaM8BA+TqixTUpMX+Pi9Z/uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758268194; c=relaxed/simple;
	bh=Ve+QcY+g73+i9LnJRhXuzhC62oDmIUztAttAfOqL8vs=;
	h=To:Subject:From:Message-Id:Date; b=dzlqbzXSLEWnIbIn/9A9KqdVFK1rWN2Wava8QofrC+hZoMKx1qU0JGdV1wGxUENDe9PvHHG8HhB0snn88+GV//f9LbAS8zy14ip2f4IixrQBqVy4NZXJ6scySHHEP/cjjBdcHJw1AVp/AoXKL3Tvuv7WiJXFXIVnPm8fWoMAe5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yzs850jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yzs850jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85ACC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758268193;
	bh=Ve+QcY+g73+i9LnJRhXuzhC62oDmIUztAttAfOqL8vs=;
	h=To:Subject:From:Date:From;
	b=Yzs850jneetckaSuvuG2AwgPXK7w2r073B6W3MeR1KOVAp1l1ajWP49ygi1WXEzRd
	 JY3c5SA0sCF9wQsXwouCcxeUdUkou2yeUo1Tv893h9BWRmGNgfash3dSrjvKIJsD9q
	 QOFmdYy3PMCxwMazRt8Vy+f29HgMPcYYjQkO3GUHd9XHvBskigHEI+Wkx7/8cFi+Yp
	 n+ul8vflJaj2o3YTzq8XiqelSxBemJ05RKWOs3uqgKdjksd7WK1A917GzKNyqCumFg
	 VStzNujP2w3MxbWZYs1myMbm3w97Hh2OhmcHmqz32oVqdXzzu6YMB+MpyzkIEh2GZ3
	 XDr/x+SRdNzEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994FECAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826819362.7471.9662533934845440531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d5512fd1bdb608fd98c575374baa8fbbb86fd7fe648a7ecb5e2919a32dd719
Date: Fri, 19 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758268193
