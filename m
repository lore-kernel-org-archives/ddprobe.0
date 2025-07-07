Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2463B29AB1D
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751897994; cv=none; b=tjmbA21PhM1xEheygDVH87m9XdW+SNp1/nTjnX6ZjrznF4nMfItC3DU75ipD8LS6QNEGd4ddHzw1aFbqD+r3VbVgHlTAioHYgZPVBf6D5QsBdFEM/sCHqXDbL6M0pTxRjh3XdeH4qPW3rIvHVBB5YqAokJ2udspTQVS2ThGACN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751897994; c=relaxed/simple;
	bh=Mq6l/ziaacuf6K6QdNXBcgTxNyQEyCbv7EfLPOF1AzM=;
	h=To:Subject:From:Message-Id:Date; b=NuHVw3ZI+oCUNzKu0t0Kw27VrFg0xA17qvF8bLeoBF7Q5ESK8ilfz4RU3C59kVM3JhiQSDU9e5KYGMA9er+h3p+mVPuaHRNtZHtowC2k0mG0C8zu9culP1BP3pLdlXrelzx3aBKSJvGzNQOzxVuNMhvt6vvWZQA/WXeZASgAuC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjMA4pMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjMA4pMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751897993;
	bh=Mq6l/ziaacuf6K6QdNXBcgTxNyQEyCbv7EfLPOF1AzM=;
	h=To:Subject:From:Date:From;
	b=kjMA4pMduRQOeM5rvYomojnsjZuM03mZrg1pnpsuoACzDsXZioSLW+gqX21L3EP9e
	 wr2CPqt9H/7UBThJxG4OamkotUd0tXP634njNGwCFDAK/iI9Pjxpnxl/AGwcWYn4hF
	 57ll6HNMuzdwlBiJgwfOOtsHAG1qm0nc+ybymfvngGago/WPVseHEiSp4R0nBuBaoe
	 iyVx+obrUhmOIXpSkoqZTmRqQXjzfr1Ao/PlKWI8D5ooWkATimXayio6VpmtrdOOAc
	 27sNI0U1b3dyS7BTN0tYP5oc0c1pfBuG5vxtrH1aLZ1Jg3bR8OdH0C7n3r6v2vet+p
	 wOIKOPIBJD1RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91636C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189799357.12742.2199517433541492472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d6296de0b619d7673008ac1ba845d3d486c8409ba7cf5a38b4ab1220d42fc0
Date: Mon, 07 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751897993
