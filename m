Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6FC299AAB
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777741654; cv=none; b=RggQLpG9A1KeHNhrCsbFrJMnULtS5Gp/0tetKMrHRbdAXaLvyjC52R1Kin7Iug2VX7SATJc/dDwncNdn4OpYEYjiQyz+Xhua5+Cnm3yLYdlcbhSB7Jd18SJIUg7fw829oDy9mTyEnwTuq/3edH6in47gTkkLLb6o+s82vgXj52w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777741654; c=relaxed/simple;
	bh=QrjTTm6VH/T81AlhKCpEJJ+VyeJppYTFD8l4+VPNQZ4=;
	h=To:Subject:From:Message-Id:Date; b=icBgIZMydWi9h4N5711lSsqediETHN8RWjzQouygU7VZJqVccV9iECi2VAgxK1G/uwg64W2gpnwhrRuwjzM6sEwYwEx4YHthmhkdo4L+B3CbWlDChduN6T+/kuBxyx8Mstnr7cMogmHy+KZ9URYzhGUYPBiyUgJjH4oJ9Ml96g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWKAVRLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWKAVRLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CE6C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777741653;
	bh=QrjTTm6VH/T81AlhKCpEJJ+VyeJppYTFD8l4+VPNQZ4=;
	h=To:Subject:From:Date:From;
	b=WWKAVRLgQcT2vflwx1DZ70QDOyXapzWaRo9+CMzVAmU3DARr33ArsKIqmMNSJgnwL
	 /+mJyndE6EaO/Dyn/ztFkRxViq8ZuaPoJPDWP5W2fK+7cfbxqHyjgHXytFHelydmL5
	 c8UYnv17sGRtD07fs/1r/fecmQxRxcjNFw10Dmn+jcRYyMdqBdffMd/2OH7PlWMTkw
	 3plu6RPpuWWy7B1oGcTXluX5iZz9s6XzTKbnZHP74XBQfDFwSDHWhTNMNPV/iskZGk
	 A1Npnp78MTuHsD41FOND9hM4TYbrUoov5uvDfmCVmzggSUe5/plgvhyUlLg+D5BJaX
	 ZCv5ClSW/dOAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF538CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774165368.16177.8173082547419731330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359abb487fea260a492ee74f96c0a719989ac9eeebc1f5443a0e2cf7419151e4
Date: Sat, 02 May 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777741653
