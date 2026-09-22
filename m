Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FD0550DDE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790089234; cv=none; b=YT/SRFFVUAXtdut0B1EUms+koiq/kGBOWT1B3kvH1gTL+yLNrkau44PxAsaDuaIo/Ja1OLdF0HzU3qO8db1CnU9hBBAOthqWWqUIADfW5Iez7Bxz3YcgnrmGSkwHw1tczjObARSDVMOXClALLI/1YZpefTiGtUwBbHXStdQclaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790089234; c=relaxed/simple;
	bh=wXRDpMdWpBmUrDj1yL4O8RrTSrf++UNjtOM3jutaMiA=;
	h=To:Subject:From:Message-Id:Date; b=OLTeUGlxtiCfSyZi7hQLjyH3TJ4YUCEceAVkQkyDH7+48cgjCfRq7geWPmGuDAAotGE7eib/3MSxfpPYsq9lR9KBALtryxoG052eOzJtjE2z7bYI7y1DSZwyujk90HDZBbMpL+CvWXmvxFirFZVKG1PzDUfssSb59Km1j3r920o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgxXVj7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgxXVj7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ACC9C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790089234;
	bh=wXRDpMdWpBmUrDj1yL4O8RrTSrf++UNjtOM3jutaMiA=;
	h=To:Subject:From:Date:From;
	b=IgxXVj7+vZM3aQ+LUPv6YS3pBW12/mFmVDi+ld4YbJjDESpzvSLnW0/7XXpZpHk4q
	 cQ00LF64GXTz4w2g1mryPsIierhWLuKBsyumdRiQWtV5XhAJaSb/ZkW7a08L4LxJ8t
	 UOH3WErtn/0AiypIoFytoaz/s3bLoL4EDI04JW9nzZSSpoQMKqlw0e819rPVbYc9mb
	 BYn//6AYd5JEZGb7EjXyrzJYDrsih3DZbbMYAB9rpuWs5Onb2ji1oygOe8CZ9D1Ba1
	 5k3RqQ5rcVkJZ/g8kIoe/qnVlUPRVheqR8Sjpbj4jaPOImoXvV+zHX4wquV1HKi5cn
	 jHovQQ5RsvfuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB293C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008923381.11686.4465432395953494771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d80aa14289347aa2582e9da372bfbbaaec723ec4d4bf24502149d6087bd1de1
Date: Tue, 22 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790089233
