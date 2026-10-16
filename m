Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815CE3BED06
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792150234; cv=none; b=pq5ntIeoDF1rRyCPcDOw2zupvD4w8D2Wdd52wZTvu0Xmx12LHaXp+c2DfD0NJ5lbv8Vz8ptOd5XpwVtfeRFFi+pYAjKsmdS7XHNNeszechBVhLgZhQgb3x3CJAVk5RcDSZguzMOucVBGeSnPxNiem6Tu1SKMQTwlrBJqds2C+xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792150234; c=relaxed/simple;
	bh=WtrQoSul/0RoAUsjUxWktJZqizaOC12TnDdDlrlPlEY=;
	h=To:Subject:From:Message-Id:Date; b=VdBQuQMLxUl3El4eITVJlHY+mX8N4mwqK9iE1M2K+ZPyVDKTkIIbG+8qqK8499pKSzkY2Mrtpsrvc7Yz+jppOyUqVJh5rTjIWbrIar+3UsSj29C2cBM2fEO7D+zpF6O3WlhAEHhiBxZaJp4TekSWMSIYRN/G+++QPZBY3RhrCv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLOID5t+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLOID5t+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA465C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792150234;
	bh=WtrQoSul/0RoAUsjUxWktJZqizaOC12TnDdDlrlPlEY=;
	h=To:Subject:From:Date:From;
	b=DLOID5t+YSD4iHYJN+9aGNgGCWPJOmYtyNfwX6z8mJMqZUB9r55XrnRPh6JjOZ5It
	 UZaPw7AX97ayzYa4JrDi38oAExiH34Ek1R4FvcDWxFpXYqfWcIrmki88D8wq48cXcT
	 oqLL51Pp34yF6hltjpNhHfgziB/hAOQSrhVLUUTMv4SLUvWnszBghp3+9rhACQ+FvL
	 Eb3kcbMMtDxvaIUOjnq4uNYIM0A59RfbqAupVHQiGsU7cw+oaBh14L87ny26N5f9Pm
	 B6+9YWNMETqhk/hvZD8/ENNP9vbzM5cedkknQG51zzcgyYf09lck6jmCPYAdCH2F9H
	 lvf22MIRcJhKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1760CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215023369.19559.8268279796436452333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3048c090af23adbdcea902d0b62887263164aca347438426cba3d14aa37a22e
Date: Fri, 16 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792150233
