Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F33915C0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749578994; cv=none; b=dDrLmn32XkIWW3pwnbSeCdNmyFnOLbgXr8Y/qFN49gljIaJgTzntNRnOqwzluYToR5kVu+AyUe4TUns/s5XJI7cOMHnbDo/e98+6rJDeHE4At6pC0rNeTUSJzNtIUjDV6TF9poUM5SoSypSWbu2PAgptpAy7h31haQCOI/VSZdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749578994; c=relaxed/simple;
	bh=5n6Drh2f+ItF0m0xaRnAwfg5fDjrqCuGRe04PW9+Gm4=;
	h=To:Subject:From:Message-Id:Date; b=ssCQWCFHveST8mJrogzFPZd3BaQJ9jqPJvK8c5FreN7xSE8v/sPGU4RUlTsn6goNqE+TX40MMvRDVpMdW67ruWWzzB3fJoeIvqc9uUHt7Gj8biqwv8YoG4Np+eoPPplZsmukbNdIu6mnPiLUndtuY89wJODN4KSDM4uS8hezXQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZDmIzXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZDmIzXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0808C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749578993;
	bh=5n6Drh2f+ItF0m0xaRnAwfg5fDjrqCuGRe04PW9+Gm4=;
	h=To:Subject:From:Date:From;
	b=IZDmIzXg8LGCUhwO287UrqMul82ubXHxrHQOlSNWo8cPf/z+tbIbAoTsx5LOD45cR
	 3CwCMaRZaHED0ZGhHmN32V5Xlbk2eNh4FTHFsPgiz4cxSGdoXf3D0p3ADx5FhCoP0U
	 pNl2JNJNJj0GtUZAJ346WObMKgFFyvDKbp0uW0BwucWYyvK6LB0Yp0retHhKgEy0Vs
	 Km/41YOBgJ3MGoIdF7Q+AkPgz1QYyahafgRAVMnLiQJqcylczZ+HgHpJAs3LnEj6De
	 zJC09T8DL/wGM4Yq45V83zHmbXhs4U1dfphAFsgm6UMkCRHt5ZUg16k8hlqFsm3FZg
	 7PgL/gkQ81r9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90384C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957899358.26063.15901528369212539545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1ef19b698e94b0f2247b451b4dd0b47b9a95213540b6e9fef0f25b6c8a6412
Date: Tue, 10 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749578993
