Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1089B32B9BB
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774293894; cv=none; b=JVU4aMsUAv2ZkFP9RsPXpF1Q+l4tCOBUZZx3ITm/qhZnO4SForkBeYZh+4Q/4dmk6Yo78xtjE7kQ4jibjBCQveMm5hH38dmHc+vXZ7C0ASWauPnjC67pNcWWP9k8Npfoee1NIGCNvdPExBdq6UtZOwQlUey2UQCwXsJpAU2ouE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774293894; c=relaxed/simple;
	bh=ZzRKueSJcY5VnnkH7Mno0I0Hz0KrYv0LyVYmwQ6iZgE=;
	h=To:Subject:From:Message-Id:Date; b=Gml24m5Ab2iPyq5qSPXTuggKMLafq7tOXviqaKAF6JNQFNDSHOpai//1LhsJHAKPOZP1XBoS+TY6qt/PW7/VSZOTwhUAW8tVNgBTB27WDtPOqGsZmuF/7uN4chONaiz0Mj3MxJkVoS2ILWh2ddkvsZbrgL+61B0eo2FaIodcuJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYvRtDvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYvRtDvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A3FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774293893;
	bh=ZzRKueSJcY5VnnkH7Mno0I0Hz0KrYv0LyVYmwQ6iZgE=;
	h=To:Subject:From:Date:From;
	b=AYvRtDvlMk6SWtOK4hSo0Wq1oDo5wfpTvdgOaATJ0YM7UhqJnGZNYVRe/KpNAv4pT
	 GFE4xIec3xpc0Dl48Ix1V3SkVOEU+aySPhgjlo+uitY4fpMcZvj9/WTDRcoqrzFfAK
	 PrzHkk0yHAET8GvCOUsD/ffebgHfIszZJeY5ee1uGg3PVECS2aLiyJ2HRKWAySejt3
	 tlP+X6yP+L00tr+bwgOUF0tWT+hRoxkSASapxTD4NtD+s48qZnOtvhaK9BnG3j6jJx
	 D1YDgLyEg6OwGpjtiPBJKYzdxeSv8K2Sg88QZptJheXvdA8982LGeO4icohI88fW09
	 pycPx19J5xQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92853F483D7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429389358.2067.10427307193487999454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe81a925cfaf5c1683d45f635f564d6691e53c19f79c36a2e8aa50470f113d7
Date: Mon, 23 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774293893
