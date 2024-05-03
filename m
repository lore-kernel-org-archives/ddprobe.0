Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48292156986
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 03:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714708343; cv=none; b=rDjj8bO6XbD1cOuk+KPf62jjT2aPbHpr7xbJjR09umdZOK0zEX+NTWN/TvSr8MlaCNNiEmZFxj5PZzEUChIN1tpUIjcQT0iAtlk19Qle3cPQUgs8jQKBN0n+POsUaGFzpO6E8XM8vs1yvOiDaqnMaez4vL5VCpxKHJbSh82Qrfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714708343; c=relaxed/simple;
	bh=JFwx7pSSLG/u91BK0/v2z+BRYL7JxShmKuCRblIimMU=;
	h=To:Subject:From:Message-Id:Date; b=Y4pDDuBoQmudWOqUVzoHWzn+oTkzMpb2tvYQrQowUPuvYWo1saKU1zyAg+iV/vkz672rkm6o7X/mtLWTWZxeylJZFcuFGL3OvkDeI95jo/h1hZksUVpx73/OScQarO4mvpD6Rd6ulyaeA4eFS/Sh1RYEiTdpcHQDok7qJeKLyOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyVbyzAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyVbyzAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D013FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714708342;
	bh=JFwx7pSSLG/u91BK0/v2z+BRYL7JxShmKuCRblIimMU=;
	h=To:Subject:From:Date:From;
	b=gyVbyzAJ5kJknl1KSlBBFh2bgMMOcogPrcFmImbsegcUJvgLuMz2+T6BW4dzmwj0h
	 ptmRlYPDdkE3tcRLz7RiSNDdefSceWkPrpcUQnzM9QuxmO5exby63ufH9bd6fDzOMN
	 p33wscfiugIgpu452lV3LbnVJU/KLWCgL7q+2+QuVRnIQLdlcxbwBlayG4ZjlJX+7k
	 sG/ZoL2P55+y2bvc2NAjX1MTRy6ykja8nNoW+ie8jxkfKWsw6d7a+ibs72CYmExOfj
	 M1ybakIO+EE/YfSLYG/3PuOGB4BR6t6Lyuz+nAZ2b1GfDa7XovR/CnjkZqN1xp0pss
	 mg5v1bwjlRhGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03D6C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171470834277.26609.14652783103601689437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a1a709c6f5f780f946306460a4a2aac09ecf1b08e5ac75ddf0ee1c43a6e7b5
Date: Fri, 03 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714708342
