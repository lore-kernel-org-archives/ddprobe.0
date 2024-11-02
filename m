Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFE2130AC8
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730576154; cv=none; b=LuyLzqhw+WAj+z7LFSVb3pRV0K3Wwo4yuV4kt2xGlFvW9y7sXdmZpZ4lB6lLBKv/Ko97jjqOy4peNgZmXH+qpeUfdgWv6juzbR++C+rmtp9cnwHTt+gd8CswBDzzDbBthEg3HROZDG+Gd5uCPTUkzAtT5wKLckaR3rvntMEIzCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730576154; c=relaxed/simple;
	bh=0OtbVJUo23g4TsnPfyntrZ1iyj7cOP76rPzaFz5PfOs=;
	h=To:Subject:From:Message-Id:Date; b=A+nZg0Qm1aT8yXT/mAwtrQe9izpJdb/w9k1ze+0adyQV0LRgpy8G8SxwBISA0YgmuGRvBP2mUrN0MxnmMuNK9/V2yf20QqhvfJkkGFeRP9KtLpyBaeOcxxUzPO3os+ASMhhYt2qS+D/mh1vJFndvtpYZsfLhUg4TIU77LzpA11M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXStljeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXStljeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32BBC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730576153;
	bh=0OtbVJUo23g4TsnPfyntrZ1iyj7cOP76rPzaFz5PfOs=;
	h=To:Subject:From:Date:From;
	b=CXStljeUSfXtp49NkEQX7HLG4rWDeURwqOuKuFSbSIUBVYLVgI0xt2C6x5JLUx0f6
	 Eu8Us2OymyMzQhy05UIUMogJ9aFvmaZUlQXdhAP6VUjYh10mN20+0NxGqTfVZQksBp
	 X1YzBJAh1Ug5mjflwaUrWyk9jHfP6ALXqrYwz0Pu4nhIbOEfhT+6ezmINq8aayjfax
	 hb+IhLl27UI2aotXa2TcllyEjAHtDjr0Ps9sEXsjOtvOaTNmlIQPk1mtH3Hc6q2wX0
	 bZwswweAU4pPpdLg+ALdVkULjzW88rVy3ApKHnmHckBdY8a7PkgzasTVLvnaskKRoA
	 5E2jPorNsrFrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4D6E67805
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173057615360.20058.5426640620775148388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c2011ad3250dfca27dc0ed651bd94177df061ac3dee4fa5cfa74c85bddaaa9
Date: Sat, 02 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730576153
