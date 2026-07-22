Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521BE385D66
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784753374; cv=none; b=ZkIig506RA1v6kSFp09T+lkK+LcVG5rb6J0hkDsPr8qGa+QsHdwOXFejh6JCqLm8W0FWWz1uV8y9oTWB7hJsw74cnYGRk9RqTC5y0lw0Vvvhj3O3NPh0r3DBcK3U9+Vro3gORt+oIe6FlSo7oo4zmLJSZqIldDeIfiYaPlWHdMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784753374; c=relaxed/simple;
	bh=CjxYwlpZIA5xJJp9marfgOiTuPfRQp6wyx2yw0F0frY=;
	h=To:Subject:From:Message-Id:Date; b=tc4ER9limITATvsgXaD+vb93hg5wA1nDRZVi1MpzeYZx2nQxNz8i4+2dwZSeKq3Kl0NPO9BMz3Y6XD8wKGS33+ajkdRhPHA9XT5TGdaJ2Aq4rEi7nxEBQGdVcPZSbOf2a8htAS0thW3M5NffEBf8hxK4/+1UnV4whNZP+DfimiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Riw4mlci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Riw4mlci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9574C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784753373;
	bh=CjxYwlpZIA5xJJp9marfgOiTuPfRQp6wyx2yw0F0frY=;
	h=To:Subject:From:Date:From;
	b=Riw4mlciUjBWDe7+2J5bZ7nt34vbuitAOoXHGa0/PMGFlnmYnKhaQ+uvs+sMmkEVm
	 V6SGvu56VJqttSHcdUW7A2/GAIW7xqKHmtNezh5Txu8eGKb7Z2U6p6KrwxWcbLiicC
	 lrv8vYR0LXmG1ooODZJ7CXJdT/nGWB7iwfr7Icf0sGPSyLXD29EOuWDDiitTOlG/LM
	 vsBRB/fFtKSWqkQmt4fxXLWwS1Z+cJ/mbMEpM1OzO90NiCdgDbehfcGTlVcQHL09sj
	 W7UrC8iaRjUu3GUKrrP6NcgYJrdMwZ2R+TD0OBW+77GuDjIOiy7avibfVCb1hm+qcV
	 Y2igSE6VAroVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BACC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475337372.27296.1311272335246883778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c8bbd0d8ad24a1088342caf8a19d5f4ace2fe402bf03102282ff284997914c
Date: Wed, 22 Jul 2026 20:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784753373
