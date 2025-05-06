Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDE2288C3A
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746500395; cv=none; b=sRqym0TrMwktAwVYAuglNy1c92u3AkjOEmsmW7l3SoXZB0aGZvMljLM2rmNOMK33N3ElwR17/pCIINk+nUe0ASxttmOuWdRruK8+EDMwUcub8YG3jbcoLkK80fXWB0FQpxnroMLUYBHCj/Lhjyyq+YOIdJYXyQNHzdhIQKvnIoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746500395; c=relaxed/simple;
	bh=JqztPoBYDaDuoX88FhG9BGpBcxOqjIO2CfP4ly8uFHM=;
	h=To:Subject:From:Message-Id:Date; b=LG75t/EHcMU40HYQkPeTB8FyREtrJEhJoKcb7+IsPAvOJjxnZbskOTeFiExYsOEuojX13HXAqvyDI9oVwvd83stoUtOEbfCjr7O3gQ+WxRyJ7645WHGw3wMK6quTPZrEa0vZgaJMZlOojGkzWTb5TniBlC85u4zlrQ1PnP7AACw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYEOUH3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYEOUH3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0276C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746500393;
	bh=JqztPoBYDaDuoX88FhG9BGpBcxOqjIO2CfP4ly8uFHM=;
	h=To:Subject:From:Date:From;
	b=YYEOUH3N65rkzEiclecaSnMr7K/y6GJ3uXA8qO9n5FZS4hIjjQ7G/wb3LI+ISS8Gj
	 5E8u0k9CHswzimtaJbuod1yrzuXlfJ9Gku9svBuALCQKjLp04yGklWsqYgzADCw5lx
	 4o68bahSIydcGkagRn6dsfaC3L2+K13lSEIjqijIlN95Sd2ONxeENxD0gh8ofA4lYl
	 YwK+ZTxOymcDJcRU/BtEtO9r2jmaN/2LXyPn62qmYgasXRLJ++LZNpiDwePVzKiEGW
	 56Bord3nhj7nqUmFdiG1aomdygB8HTgpgpleuHPtAXdHuhe7QqrvmRiML+4tGGPjZc
	 zAwA9bDTcXXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E914C3ABB6
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650039357.11872.16595268198732322327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5673b24bef80b1946a2737f4a06c78f489b6f5f7028fb281cf30617846084b4d
Date: Tue, 06 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746500393
