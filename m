Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567A038B7B4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786569634; cv=none; b=BJXuzhMPpiimBr+H87QSOxbtI+9ZyxMtjo1TL2a1SbMZKtr+ToKm3O2zbZParKh4Sio/dT7O0KDc9aW316Gf2m8UMYrogkQPcekk3oxaqnPlXKDaoXN1AUk/wibGaKGayiLeI3Ar28FgBjGts9b0wAa+1tke5kYs6DlNMUTqLq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786569634; c=relaxed/simple;
	bh=s3cO/THfvRzpjr14/8k6wfgkLz+jOBAQIu1DUktpa50=;
	h=To:Subject:From:Message-Id:Date; b=EbGcIEpJgXXDU+g9FTwTG5y7CCqbsflcfXBLD7VUNXiSFX+xqT4LR7FBvqArFY7iIR5FdjLRs966IyL4HehZJbS0Ih4Ldhb4wRE+dUF/VHQOKP80e+gP/CgOS5vdp7ZiPK6vAQBf9i0sqwwJiBlxoOvd1e57tkbksakhKC1YDP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=me9O0q46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="me9O0q46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC0AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786569633;
	bh=s3cO/THfvRzpjr14/8k6wfgkLz+jOBAQIu1DUktpa50=;
	h=To:Subject:From:Date:From;
	b=me9O0q46tTGWy3tMFH8z59YoT/0LMWctsAJmERX3nksedjPXG8TQn2EYhJyLBVDSU
	 tNHV1PvUEiTrUbx63vK8V1s0bzTAKNTV9xr/9OVHI4ReN/NgTHNHK6/YcFCxZiFXUr
	 BE1PW6x1Th0GtnwUNkKIjONJoai5k25RNe7AKV+C9ScYyN9tDUDgiSc3ZD+IqZ+HmS
	 gRWNnJh8iZ7u0mBbr5qthpjV42eP6B8B3LjZr1txSVFvsc4LsZDFx91QgblBB5eeQm
	 s+3x24yOZpRuNH7zMiIc5/4/UDh173U8wdJsD0IVb4IaTlYNOSaTjZ81YlfOq2ym7Z
	 HKqP63IvbpuFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB24CC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656963368.2742.10220128598815479819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e442605d563802bf3a77d8f210f337c4e93868d5595ee150d305a05319885821
Date: Wed, 12 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786569633
