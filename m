Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9FD4A2A65
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788534634; cv=none; b=SzxQoDzguYqbSKs0D0mGCfw4XZyPPrg2dUs3cWXjCNwstZjMtCqjhnRA+cPavFrTIvQtEV7FprIs5CRD0/9bbW6T5HVIGhSTiGB0wZVxk+rqulcKEb6Piu6mm+1QO68QOu0Z4TUGv3MNJj9IO5F+T1Tpq6bIjIX+lOw7zOKAhlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788534634; c=relaxed/simple;
	bh=2m4QOdQ1gL81XqQMyMSBUY70D/K5rwdMFrOCaiPKsA0=;
	h=To:Subject:From:Message-Id:Date; b=IviFb2HMDUx9uipQISrlAMxcTA/wbEes+ShJd6E/aJXmy3SA2oMXU7I0pu6bHmZXIEzcrz0FcXm3M/zdh/dFmDm799tCRFF0cy+SZ+2UzJmqu+wokhpVUWnHL+bQVFs+QKrk23d6or9sDqdsoFPMHlGgNsWwTP5eLA/hoUDVICo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyC3+Mwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyC3+Mwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA66C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788534633;
	bh=2m4QOdQ1gL81XqQMyMSBUY70D/K5rwdMFrOCaiPKsA0=;
	h=To:Subject:From:Date:From;
	b=cyC3+Mwypm3VphhLJD+wJclbuemZzffQjg4Ww/BFFmOZuVqsoRwZp4Sk0dDo6dDhM
	 mK0ne8yhbiSdN+USFZJlJQLomvLcBz9pqxqFWh7CSVZbdSzOMs1O6gWxnmzkL5XyOw
	 0rKfiR47Rg7pz4TEygXYts69jyG0Hepnc2kL1UO1lscowI2QbnVMRORZgzmaa63Dbn
	 mTbpe5kQD91TYpA6mJnxfkaVOwUa54UiFkuvvM67+SgTMDA32GioMT6cYddvxXAguH
	 OsdzaDyM34zu/5Y8mvHLk/HtKNHwGVTmDngRAHKk+ONAXIUrPSboc6N6TQPlegBDAw
	 xUVYAqsbvppJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F0C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853463369.1733.1277442121109737162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5555423aebbcf022164ec1a71fad798e1e406ff90ae8d906177c8e74a102d3d0
Date: Fri, 04 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788534633
