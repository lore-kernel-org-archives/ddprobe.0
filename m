Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E10308F0A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777970254; cv=none; b=ri928FP7kfxIvj6Bs2Sdc1PN3hyvBKIKf4YoCVQt5q6Zf8JUdSOAYqaRV5btc7hyQ8dlktjgLcTHGatK3/S/OVWtTNbaCWBS/YXsjN1++xMZyxXosLj/Va+Uaj73U1PpKo5jNKaIpnPsUM39z9I6YvTOyzMtIQeQcLdIEwUnNgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777970254; c=relaxed/simple;
	bh=AlCjYmVFUCeLncMhiWKHAjtTy1We8Vam5qwa98B+QWQ=;
	h=To:Subject:From:Message-Id:Date; b=t9MJ6yzTHUGfixxl/ZCPUbe2WdIbbQrC+H/8w8LaExOnO2mAYJuMN+0y6MkipneTex9lul42c0jCU6LmjOwwxyn4MhX07C6Wf+os6keqZVxEHkwvP5tDkuE087NuCVD2HYUeQLVQpWHofJ9659NpkZC4+GDF4WGOSRL0b6MIzO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVGldLCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVGldLCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95A7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777970253;
	bh=AlCjYmVFUCeLncMhiWKHAjtTy1We8Vam5qwa98B+QWQ=;
	h=To:Subject:From:Date:From;
	b=WVGldLCDXotLG79uWqBNOdoFHKKhiUda0T3HHXR6jSbRA/tlUcxCxMHyAmrATSK5L
	 jF9H9VPx4D6DEjx2Q0lWXqxEy9yQVfQ3AUEPz10mcd6rNUopRpEoz9IZLVacN+KPqA
	 +TCXq0QRi+FHqyp2JkEnclYoif4TiIvrbR2rSFw1LTZoyAGZc5dh+Qcqa9lMxj8wRs
	 pU8M9+TMdNbRCFvJbBYXlKjvfiW8BE2hVQlGVK7InW9FYUtUuoZrC+erf3Vgl+vPRK
	 2PZtrG88KOULoVA1/21AJyC7hX6cVavBmv69+PMjE4HYFII3qfwfxDRxWl2ZZZkFc2
	 p1hsXWuC6/bLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2CEFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797025368.32223.12385079426558402615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fa2264b45af468ef9b63c5fc54223455c8963ae3464db004863ba4a68fe7be
Date: Tue, 05 May 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777970253
