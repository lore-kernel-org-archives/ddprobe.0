Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B14175A95
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778294854; cv=none; b=ezy49830Eeu7+WyZun7XOhRsPKIlWHA38e6h6M7j5tqIVaJVa6e49emPXKLyKm3uaV89jqeytgyaDS34Gy+c/6aAUL9pFDn4ipva9a1YOthTD+J/0h19B0bZ6kGn7bWtbTNx0ioTBM47bVlBD2IE9LGIh4c2ZJgsYFVW0YbRk7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778294854; c=relaxed/simple;
	bh=+PdnihvqdvBok06TDgLNd12e+Ea724zuuk7vQIGsqb0=;
	h=To:Subject:From:Message-Id:Date; b=mQyE8xG/dNnSbsTXS0Lt6RyQPxD9Xq46CxDYEO8yuUJRzuzrwhzNibXU9SB1sczQl8zq3ABVy8enPS8pfQfmI1GdVTeLBiSu8Qpe/DdFLRHnllrq/1cnB31WN5XLbBeUzqOKdFHH8f0ARU/2BpH+diMoysiZ0bXrQ9GQVlBxPK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8AIkIlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8AIkIlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7D9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778294853;
	bh=+PdnihvqdvBok06TDgLNd12e+Ea724zuuk7vQIGsqb0=;
	h=To:Subject:From:Date:From;
	b=j8AIkIlSeTxefOSdib0Vppreb7VOz+P/1NPSwvPRhhDKspxJIU9VuEAXxVovLHbF9
	 OYKZF86N2F6UjWluo0Fv0FclANhhxYkSWb2hYWCcKkHDy4smQfgMgmXRBRjjjakZWN
	 Y1BKXfcJOoa579gv5CQBLqIkRTQ0xa2VoaEAgIzDm7uGt6SoECf/Lbxq18TbfX/bhz
	 aZfEhFuK5LNFAvY0eJLumPfjOp3lPiURLYUnSYFjXxSwup0VqRO+trpAcRgez7ENXU
	 CJAjHokFAA330jyM589mSeDtDzomq5ExD5Wg+TzMrluaSRgBFe//PlgX/r5sokKiZZ
	 vm0suDGmcBbWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4E1CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829485368.12220.9071860220661442667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f763da80b3b09132ad227e1a1e0ac3082b8b84adbfbb82ea9348b24657bf60ad
Date: Sat, 09 May 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778294853
