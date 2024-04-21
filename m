Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64263D53B
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713696623; cv=none; b=j7E2PV1r4q59Ge/n4xjjmvUpC+h3cZhm4/YCuJNEIfSAWpDn+CTZKZTxTJEt3I2JdIwXk+gj/rUX1fXYL/jvbRoItG5SnO2AGYn4IvJ5Xk57QG6H0+VGHt6X2BinylguwCY9gWp6w21EVQZWiivULK0jlPNql0GLsEGM1EzBuGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713696623; c=relaxed/simple;
	bh=bErxTFDxyEULT/3Ln8BImE1buPCqpspoHOgqCGHXgYQ=;
	h=To:Subject:From:Message-Id:Date; b=lbvzfG1YM16BoRf4B+T7M9f60AYDNgJS++tuRVRie8AG5yeuSqzM01B2TdR9F5FIL3n7vspBvdnLFh9AcCfbzOU2mXbGkMt/4jyhWadtmsbUGX3KtRenXpARveQy1NktV7YwqctLiwmUfwguBufUPLGx3E3e4Y+aLjGUbz8PO8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s73zxDXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s73zxDXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA20AC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713696622;
	bh=bErxTFDxyEULT/3Ln8BImE1buPCqpspoHOgqCGHXgYQ=;
	h=To:Subject:From:Date:From;
	b=s73zxDXHhRFA9UhbKB4NdLgKZi+DNfl0YXWd1g4MDsjO2/cx91FJecvcrD35nmXs+
	 M8ZvkwjOlug24My7uE9Fu7GNu2w0pvmpW+UYhhKGjZUgtqmk454shtcS4SvTPJlKoh
	 9xF+hesoRRMVg/5JruUcePCZAdVURy2NzNDxX5F+mRdU1dJi2Swt5WQysNW7BKWkIL
	 I5hKnU2Q5ribOGz65a3bV6qLDaD9v70OufLpiuQmf2ldBwJP0wLMjuozNBHHkz7EId
	 7gOR9HJWdIsaROp2TQyZNxBbGYTp2lZc0ZyftxK24ZhpgPIYok8SqSgpOcOKrHhGb3
	 PTx2q4Z18o5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C399FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369662279.2540.16904454949182687873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e212352588f2f0b72d13925cb5d914de10b44340b8ce9c3e40e39ec5189e24ec
Date: Sun, 21 Apr 2024 10:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713696622
