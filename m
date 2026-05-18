Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21350285CA4
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779140434; cv=none; b=M/QBf0I+m9qUxq6TWhMxROeBSjeMSV/PycnzSIUVlRXxIXo0+Wd2ZhXPR6zUYFoLVSUjJob4SSzvtmd5BuJBqTeZKHKH3EHXsm07VRoumPlNC/bgn3Ric1sjdQ/e5160MChy2rGavx3MbzP2t8ZyNIw0qsqlRio0v09g2WQt3yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779140434; c=relaxed/simple;
	bh=H6TiYElTHjeligXMGCfnCXRkQ+YJGYiNK8VpcIitSRs=;
	h=To:Subject:From:Message-Id:Date; b=BJtfx/bFmNgRVx677IzXxGBp+wun6AccMUvH2lkE1b3jSAP29LyeV0mPXt//uv3t2FwpznvHv34sntg4x+DJedREfPt9AwUr6FUpZaYIajeYzIY2m3txRgPXE1j8Zeg+tiCscz3b81ZnfE69F7b39BsvMBSN3CqFZ3KKT6Vw6Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/kiOqVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/kiOqVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC9FC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779140433;
	bh=H6TiYElTHjeligXMGCfnCXRkQ+YJGYiNK8VpcIitSRs=;
	h=To:Subject:From:Date:From;
	b=h/kiOqVdjnZY3CmPQ0zAedt/gjwWhMjXrayz04I0FeKy20rlDoUBOHaEdJwAH04aH
	 1ytUsYG0XALADZS3LfjNITROypSR7LZHhM2AXqXf0Dtzy4FNAfOIEW3EhM67T9mYkr
	 IIRtNNjVgpBwJDd0P+ZUtN/HJljM84wmgark7Nz+OJaYix0fSoKUKVYwofHS94YWHp
	 9XTiTjsRCalsYMRRyWwcxcneVjhL9+Xs8p83rw0fdlaCe95rc9PBXtRoAu861qLHmI
	 f9rpa0mCBSrXG/SlZwjlvYzI9gEJOiWAqcl4par6aMaS/oQGp0KIpzdIBvZlgobpib
	 FSaLFkJw49USg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD96CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914043369.18861.7546808941812792306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9172e6abfabb8bd1315fd3ce925aca8def9d6ce668fc60c59bd315e540a7e57d
Date: Mon, 18 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779140433
