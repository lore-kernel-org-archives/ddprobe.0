Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28138287258
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757969994; cv=none; b=pnazFvJ8At440YhE2SXkP8ez6tEB0MiUxow6DBtaV3lx2lumSqoGP8WJ6RAMVUjMY+/8vfVZcDQqAqnSlxLo/FfjMHni5F7VA8oUu8VNbFh4sjgUoCT71MmVnOxc84PfZIGKXZwyhNzyz/BdwH74Zgh1PQXHQmTeKRwfzsYipaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757969994; c=relaxed/simple;
	bh=sQDvwseK5tZpXJPkutGeOmAOvHJV+2sy779IdJisUos=;
	h=To:Subject:From:Message-Id:Date; b=naUSpckS6cnmbZoSWHNXjG+PBgyY6bcciVcTWOEaYOrM3YDrxSn7W21FHQWTf0d3fDsUR/Qdox+pp6f/1tZDuau0hJhkg5eWYOviWIAazy2raOywEHMRd4JiJD5BawtL22Jv4xQFk2IEVrq6+iUkwybowQnvCy30KePL2bnQwqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5AJArX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5AJArX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A377CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757969993;
	bh=sQDvwseK5tZpXJPkutGeOmAOvHJV+2sy779IdJisUos=;
	h=To:Subject:From:Date:From;
	b=a5AJArX814O868zJYtjp1Q085h29KalpyZeYMf6iViLbXNvTjq5TQm2boFVqT56S0
	 IVxoXHhIkpNG+lN9buZiynBzNyq+Ov0s31QyJoj/5NAOTPg4K3Sm/PCLMsFlKT9gos
	 Y9R3CqsHU0G6V/9CAy6jU1Bbu+vSrSxrQ8HviEU8QpDi7JBSiPQjsrFxaviXMJO4PP
	 +lVQDeGIKZzSF7MA7o6okMqkV7zvP87ckdlf/bDn3gWDh1slmKHJ+gKP2IXUvm558V
	 XpghLSpHJojKlLyALTfuTDjHlv7UHjeNrB3XyTt+4gwxxOiuYi1074EVbsqQDN1kD8
	 MiTeGc7ElmxbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE8CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796999357.22386.11994148283766939643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4bcbd082b993609025a8d6190ff005f3db0df6f499135df47d89a7a9e834e40
Date: Mon, 15 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757969993
