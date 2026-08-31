Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479CB3C8713
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788178234; cv=none; b=CG5HrWNNDQ8GTg+Y8IwldZ+ugnUXHtG+uFmu5JFHg2cDjuXVovD4q0c90z7HzONcPVVpMBjJnTS4Cl4HoJdloZFSCeHEkof8h5eRBCCAJb/LugMnvSK9MgukOxdjGOoq8T9F60CVIVGN3OcBOYOEL91WjVml+j7yH9A3/M2Z90A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788178234; c=relaxed/simple;
	bh=MFMBS2sdAnIw2vq9JD8WrMpOJ4O5QYvPpGqNENYomXs=;
	h=To:Subject:From:Message-Id:Date; b=s/LKVskTHg9fNhzLITC1zmrf38/F7EH3UsKYkMG1KvpCgfg8wbEkZRkslII4hVJsfQDC9J+X8i/i9ZFBwYTec3WEroNAOeMd61IQG4R9NhNSZgOOOzfurIHoNUZ29jXPVjKz0VnNHHXcRi/0WlKo+yh5Oo/cMzI+RbNuDT4JPvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imnoYEAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imnoYEAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E72C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788178233;
	bh=MFMBS2sdAnIw2vq9JD8WrMpOJ4O5QYvPpGqNENYomXs=;
	h=To:Subject:From:Date:From;
	b=imnoYEATXSS34h0azkxczAdHGMEKLNG0OYhJ0vKY0xjVJGHMIGB1xLEhE4ELmJwzK
	 8yxYkdd+vrNZm8YJRhQygsWL0WHEJRgbqheeNdTMLV1BKXPxPTjS88ezRjapOj/Gaz
	 ScH4Lv8E5Xy5KSSlEhWyPv4RU6kWy/QgiIv4mxkRQ7LYtyP1kmhxx2z85AVoXHDpmL
	 aJyl06vEoKSBuf5UzrrFSyyLDLqp+v1A9+2Z3TV4fkdDK+ehWyvd/l6rhcG/ZNzyzA
	 Cy1wBxoGApwTmN6QkcdmdoqCSiBDMoQq+l1qARjwtGmkIxz9h/MffqfjVGX3l2TlDq
	 P02fzycVbOvWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB9EC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817823370.29648.2559151008543503311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9995c93966c202caf66b905cf6e9555251d23e3f7cea8ce039f9ea12e1615b4
Date: Mon, 31 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788178233
