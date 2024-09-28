Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436A114D2B1
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727532354; cv=none; b=RxgiGSGCD3kTSiIoIlC+o6wLAOspcnU5/+BNatrYRM+iKVtowchtsLiQz2Nyu+oAg2IYuMpe4OYQS8ERRBQxiOtasvFL/J7kGGcPswp/ST+HAVSqesHmh5grl5ACUeQpo5YK2C775HmG5+cuFGCjw0TzLEVsjmv/x1KqBDESC+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727532354; c=relaxed/simple;
	bh=pms/YsbAkl6ei24QP5mLa1dDDrEaCAXCH+IIVNxTVuw=;
	h=To:Subject:From:Message-Id:Date; b=RhYixUejr0y0m2k1GG2ZQVkyJywGKtl1cy5JgqbzkM/ayG68nwuvUUBxgQL0xckal5ep9cMEP2Knb/LY8Oebid4oOG0i7w5wNhF8uVxoSxxa8ny4HPwxlOkBDXmdvX/uMsgfA518oHys2ZbNBzZcG+yCQyoamvS63zVU95icVmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0LzH7X8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0LzH7X8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE466C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727532353;
	bh=pms/YsbAkl6ei24QP5mLa1dDDrEaCAXCH+IIVNxTVuw=;
	h=To:Subject:From:Date:From;
	b=E0LzH7X8fVmLvPsENvqOR4wu+Lpjc83zEDAFooP52aHC9kjGj5lYW93ggPcZaJh3Z
	 5QGqYUfMROw2DZHDFNVnaX+dmtZUWqlHxyB+4x4QVyYLJBBJl+Nj3urZNwZFie7ya8
	 0Wd9zEAC9495ciiSYytufsa71CLy21JQtz18adu9IbCZi0zVH7/805oxQhjASu6ty8
	 MOhdUYCf5hP3KWISVV4BnuOa8SRFQqL9y7fzIjNjVTDWZ2dv3jOtJRTiplzWewkvC4
	 bCuB3A4JMckolBS/jHr9RxWPA5WCugmBjP2+84Pk038MQ1lPOG2dOSdBeQ1aT5EOKO
	 BG0PWK+Z4tD5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B51CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753235358.13026.15709866495437866606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88605026e20c6c36bfce7217658641d96b0db1431bb90c07578b3f4e7a6653ac
Date: Sat, 28 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727532353
