Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C12355F54
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772179494; cv=none; b=s7L0HHhgeuVcgbUP6yEJU9/OM6hcDSr30P7233k6MACm+1jD/JslmOdIOPxmYsNWI9BeRY/4DxVAs6yGZLUe3jrSs3TkWwI0oaYGMlrW4ts6kPxMEm1oNsV5he++YeApD4mZhUNYvSaKid5dEViUX01pRPLGAGOAZsCJnA8UqAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772179494; c=relaxed/simple;
	bh=uBz7WaB4wLOFJJwrLJ2n3BTlkBvzOWVnyaUE9WJpIt4=;
	h=To:Subject:From:Message-Id:Date; b=c4N4Ar2RZhbMtGBndrvRcBj91yPF7l+P5L93Cz4yHFLCGN+/QktUHy/Ekf4F2j/EDBf0wx3WIdgcOVUPll9JyN9Z43ncvMJN+5rFG/o9m59qYOVGcmvxE+TfVJVSU7AlIybJ68KQ8mwxoKtM1ZXKjL9QlaNawH3tZwso4HSfzHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b464rw1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b464rw1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5042C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772179493;
	bh=uBz7WaB4wLOFJJwrLJ2n3BTlkBvzOWVnyaUE9WJpIt4=;
	h=To:Subject:From:Date:From;
	b=b464rw1OLCSVt4qhFVnSn8RfdhY1o2LNNOD9OrztWyifmceLvNNgML4j3B00ojzU+
	 MOlMuVeLD1Jd48Xlx0/Dl/A2pe0nV0LkYzw/k+fpij7j2NyVrTO7YJmAxCUemHte5E
	 VSh6tbANIDm/Oq56y5XsHGbT8OKg3w0mw1BI5oKccHTshF04AYzj9P2N7pvH4v2dTU
	 urZB6PChogo1DJDca/TqP518AjWOSNc4GuApOeZHzyybIyfb/7sjk5r3gD0tIfL8Sg
	 A6vgnvrRO3nAW2lHX/+BDELGmly5ZkE32sgP+swKtH652X4ilTztpGoaRPSusheAqg
	 VuNqjQCcaudhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91205FD530C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217949358.10092.18206191554877402463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6df405ca4f2d170f33081b381eaf0297663c78a8d0e3101113aa3d43ce6a58c
Date: Fri, 27 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772179493
