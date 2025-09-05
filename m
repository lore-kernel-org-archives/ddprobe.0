Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9BF13D521
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757090994; cv=none; b=b9rO9xD44cen5d+oHntVAoLOrbto2bggercJM3ujzZAFQX8vHhj8TzBo+KveGzAE3XYhq8LHP0JID5pyIHYamgPEmlLSKHQ0C0LMi3wjuIaCQkvDLPSts25Qnp7Nri7OjxMqTF3GP5mptYus0GGowbK0ILb5ouNFb/ZqlYpklbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757090994; c=relaxed/simple;
	bh=JVGviAdwAi6qNYA2db7Nb4v+h9TXlDmIlnewH+tPcuA=;
	h=To:Subject:From:Message-Id:Date; b=TqkyETQCm7iH2//BKg9pOAHz4ZWLvNyNuIQaN/d+iF5wCyFScNQjxQZqDhSJRzOSD4ihHqeTF8kqP1PnLFfUlkcv979zlfumlAXs0Wv2ia5idF/SRdRbyXViFeaoq0cI4hitF4LC7S8baX4zJ0K1/WuIoWtTMwMTiEZmsbwWAMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTF2bq9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTF2bq9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4832C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757090993;
	bh=JVGviAdwAi6qNYA2db7Nb4v+h9TXlDmIlnewH+tPcuA=;
	h=To:Subject:From:Date:From;
	b=VTF2bq9HCRdoi6ECYiSVOfjp487pyyxw2XQhq9KU8Z0brR6jHyNJX1HpWh6cLu0HA
	 9jcx4Prd7VPRM5yvw+rHcohAeIvPOXcPQZBGv7NV9WAlHoeBARBjsqHB336U5kLLB5
	 gw0IISTJgrBej0Az/zfZEPIOzhBTxa8Ia/FTl47TU05PrRM3tYBKe+V6eO+8Z2DdM4
	 yV7fK7C9B5iIaPB4DYk/ND2hvHpnckp+7t6AnLRC6Q5p3JlJqPtzBoSu4uPWYU3LI5
	 /tHGhmUJ/gPX2QOJOvq7h+5WLhGhc1+O61oT9KD/18gItYHdlQtK/Aggty9sEV6Sn3
	 C2zAk6Si/l/fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B7CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709099357.19574.16537141987978412290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 426b0f0d8e6573302af94fd3a36f44acb47c75e3c8fd2b040a16c27e591db1ab
Date: Fri, 05 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757090993
