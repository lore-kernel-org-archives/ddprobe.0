Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A132C21E6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783787914; cv=none; b=H7WTNPagjfkwV4vpMqWCDqT7fnmOAofgrdbcslcGE4nfOvP25L+E4vz/UvsAOoX3bLW8fDVuP86ef7n9x9D4jATqEf7f1GzbD13MVX5qGjmg9fNv1SggTe4GWsJI10TfHZp3cXXzEsanmgV/b3qpbPRqP+W2cutBu7J2ISqlp34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783787914; c=relaxed/simple;
	bh=v4M7D9Klgldo6sV2r9AYbbw7F8yXxx/kcMIgknoSX9c=;
	h=To:Subject:From:Message-Id:Date; b=b0LNkrBSFnkORvq/veK8R6nNjqiY1aAevvrHnqxAAO1VKWMymY4gyiLZ8SSigyq+YHGCHoJpqK/vDy/yZRw0ME4DcIkDSsoTopSl+YzGeQgfnFVIQL1F7n0i2nakhanxEpeswpWkO5gWhrjdPvzg4/M6R/MoiPj3I1mZ1KuKn40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uD6V5wmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uD6V5wmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9C1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783787913;
	bh=v4M7D9Klgldo6sV2r9AYbbw7F8yXxx/kcMIgknoSX9c=;
	h=To:Subject:From:Date:From;
	b=uD6V5wmX2thnUbXLDSy7zHaAs386BsJzs3AOLRTDmLqU0A79hkWgSH/jE1Bj/6Kdk
	 2fEooUI4Jk2ZddXr1JRm3ItT4gD+dEiJzpawaHqt3Gfr5SjPRPrnF9SxGoYge3dsmf
	 mvHCfeF0LR4u604qJMd74MgipKfSYVkcd9z+nx4R97fHdDSqJiQsKZK2w3qPV+BK9w
	 d11DeNPpe81KcDTT9Fl8IXi+MGn3W7DIeF73k9K3Ok5afDmCZmB1MhfPbnXwaixmmL
	 GsdbXHI63cM5nN44ju5yv9cIJgSZL9HUSnqF1zEgLYFF82W8jm8Q/qT6Wo44xKUNfI
	 1QjkIsn6ExZoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA74FC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378791367.28737.13522614560386357190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128cb4129c5d18e94f3006af8a74685beee99cc5923ff697b8779cabf2343285
Date: Sat, 11 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783787913
