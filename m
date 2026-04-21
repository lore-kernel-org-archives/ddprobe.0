Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB35379ED6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776812254; cv=none; b=JpaAN5F7F7hbW5v8U3WI5amLrdncl+eovmWz7+YTTtEFTBqxEHE3AvYOVEUWKi5oa88VgoKEcaUK08AgQhywbs6eYxpg9ZjRDNaLCq4c4aKlJLPD6/6pTdpVxuN65WBXwpMtMBgLwVAmp4/7nNtSLUHiQcjiQ4OvWOkmBoU/WYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776812254; c=relaxed/simple;
	bh=eGP9ajpJdJHPco3AvWxWf+/JKQZCydGfeaptAvqWqMc=;
	h=To:Subject:From:Message-Id:Date; b=KFkznqRkUmxLO5eU0u7+EscryPVgjMpZmOl8wmZhCFMjxx+bC5DgBs/KTAv/aVyD86n/UOdjM0uDTinqsuo6AGyCPNeIujQJJEsad+RsLejRHu20JQxpLDKIixMHck0LiR4NP9TNl5rlMZhEzphUcHTEUuy2zbx1w7IZR+G+NM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8HkESPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8HkESPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A5EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776812253;
	bh=eGP9ajpJdJHPco3AvWxWf+/JKQZCydGfeaptAvqWqMc=;
	h=To:Subject:From:Date:From;
	b=I8HkESPvgohlfD6DeOa2mWihfSHqei4TiSzF1EXDh/T7XGZdWb6gnObYvLMXzm4Gi
	 pb9qCvdKkoEL+/1lwt7FtbdjXpob/36GrI95IyPRwuEANIcwGdTHKR2Hq7BO4jtS7V
	 pHHVyDTBmr/4BDGaw8kOOS1JFEDgHNmtlJgjdtU+MB7dOykeNPLQqivgdCEw9wInGb
	 ifzQ6mXmzPAdJpvn9SAiew1H5EdPbw46gtD7OG6u+4vgfi3D3Ja0w/dgen/vlViRZN
	 cgMV0AN0fGy3Q+P/wzx9CsJWsuKNfl5sMlmdOMpTxagGwcnGUxhU9sF4vC5zovrsFW
	 YTyh83VDtroJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD76F94CB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681225369.25583.13730729512586081136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52ffd31354be924ed81348a145c462346598eac7f2017225ee61a7cf08c4058
Date: Tue, 21 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776812253
