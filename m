Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E572D60A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719090743; cv=none; b=Cc3Kj4Zj2mOSmgxgbg7nUKeKQa86042ZrEak8TRL1ae3J2QoSdYnoXQUk4gn6wnG39piP1OaL4lqAEpJjeSPxl4m6H44b/STv71vzV7TLQ/jXGXmsB5+W+f1NDELmcqugNl03graFTRL+8StDzVzN+Mom6qd90FfEC4YVt8gj8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719090743; c=relaxed/simple;
	bh=++GZSMZ8xev2+tDFGuaCwSLBwP4gwRzg86RibT1j41g=;
	h=To:Subject:From:Message-Id:Date; b=AKnJrKh+BwkI33OBvujilRTokoEwFoGnjn6F3RadX9ADX2reVMdlRSp+xpGHWFarBEQZo/cY444kkCc4yLXy4gDVL7k6ACiooh7jzE2Ok+SdaPjEhq0f4eKBoCxKaI5r4tRY9ruYj9C7SMoKrcdTKRtcpp7K1XHaLOV5XvpBwog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBHMh01D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBHMh01D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44C9C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719090742;
	bh=++GZSMZ8xev2+tDFGuaCwSLBwP4gwRzg86RibT1j41g=;
	h=To:Subject:From:Date:From;
	b=YBHMh01DMFuPlw3+0qhPFADdXI4MjvUxVM0asIizSfUgLMH25ocXIOHxOktDK+3uY
	 ktAHQiHEF8J9eptJqmq49uhlmrczHb04vEzkKU88vccqphU0Iph7QLN2osuAps1xAJ
	 b7T2MW4B5UkBCx3PHww5JXIhdJ91QqmA07CPcWZnhYwYuva/TQgnj2Yo9yKi65kr0w
	 1P6hRcuDkvE8VzwmlW/53N6clzcUfvCNA7tsvSAnXzyYQ/hx7rYCunii6EwbAtExYO
	 NoJ97wikCK5pS0aH9IY7cPPLztYcklUC3sLOqWrf69vpF2nJuBeO0xatRge2IAF+tr
	 wFtgvf66z5cwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C389CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909074277.5054.13981944110984923564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a73da8ca937f690cf32862b748ed6b7fceffa54f2c8657f2207f10e12b0d26d
Date: Sat, 22 Jun 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719090742
