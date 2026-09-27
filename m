Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F87F81724
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790479234; cv=none; b=AOOtI5lQL7RspWNyM8NH+P0Xj29fE1KfqbFIYoD5e8DI3+K/GZ8kW2dliKNqWiY3/AwEdOW7pylf6eUqd9TGwDFOVOf8ZCKhx6zPcziAqgU3MfQN/mgvT7hr58SAG8J7teFlOcVwHbPTKYePhZAE0XIcctFP1kXquR5hH08UQw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790479234; c=relaxed/simple;
	bh=aJgb5HlAxaC2EiEVBsjpuQU182g9jq1kDS4j43F4/vE=;
	h=To:Subject:From:Message-Id:Date; b=c8UkCMvhhVrWtOD/1qdAWda1H9YkJb7i2ZmtJFGipz/1scy1CswWMc7HWCO2J5xdcv3xfO19kjOOg6Nxx6a48CRraP0u9ueJoXr72gWoyTEt+yoJC6GxoKQ0TaH+Gse+QzDyXVnCgw6wyskb4cZOolPFm0xG1UTz66QtZGHOMb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tw4LFJ5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tw4LFJ5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DCBC4AF0B
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790479233;
	bh=aJgb5HlAxaC2EiEVBsjpuQU182g9jq1kDS4j43F4/vE=;
	h=To:Subject:From:Date:From;
	b=tw4LFJ5+DbdmR057aaZ+kYPjTou588x8HQU0LuRXSIYkj/Eb76in3bWpUGOJFCBG2
	 t+0JhrHJFtCyMk6F9Jz7IebEmEra4nOHkmu5Tn78kzq1JQ8fV2175OBMvMq0WYAE2f
	 O5P1YJMW11+5BHN4IwN9yPbBgGsIYWKToBzTTmXGr9ZDj5GNNziwu01Jr2WjQUlInK
	 3Do2IRWM3N4wY/vVgUvwG7qTtByQn707Chr4qmUgfmiV2mpLnn/sfmxofNgNc1AGhd
	 oSH1oWWw60DwNxp0NYyNP254EnIN4C5oMZ9qoCpod/n/3081Vesmws4nTuEkWeQ4wv
	 WpdROJ4ta2aeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE5AC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047923368.20446.14419021030841401717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1960d97410a3d6879236389a73fc380737404e61a5e98695003555100a35b6dc
Date: Sun, 27 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790479233
