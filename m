Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618551C2AD
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 05:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713848423; cv=none; b=EEyAfc/WzTOJ/NKx1tmtX02GMgMtJj58yvYslw81xNjIdPw+ANtoG2KxSRp+d9nNUcXLXT7/eE+Q+pagEvyWC7yLps3HB08S8YzCcCh9WDtq2xVbseET/lv5FxTMaw3iAoRCk+KgKAQv/pKE1/bG05onmgOJz0Q2YU9cM1gSGbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713848423; c=relaxed/simple;
	bh=PP3fQlwhGrKZnruTkoZnvqPdCQYE4vlqxFh3YXHq1n0=;
	h=To:Subject:From:Message-Id:Date; b=ovwh/J2U6U0bePOen+RqH6zrIRK7Da0IzR4bJvDTDjudOuBB13MeGJJBRo8wbX8gHbrmDguGLZZTyzxG/GkIjFrBQ8Y6lN+qxaRIpiB3LrBeO8r/yOWVgUcChjc0111eip301b7KNWxOzI4azLycyaRbx70ukida8uMy2ZH8kwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQkM4Rea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQkM4Rea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D860EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 05:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713848422;
	bh=PP3fQlwhGrKZnruTkoZnvqPdCQYE4vlqxFh3YXHq1n0=;
	h=To:Subject:From:Date:From;
	b=KQkM4ReaurmIPONaNTbL3oO5tyZFvC3G2YW4YFEcXx4TExjoeXv3EQZw0gADmdT6q
	 EKG26NM0zfqdStUvgi74w0/apIekpeX/7flogYr7vt8cuTfm4BcLY8bopwiTigCiKi
	 fLa55R8W6Xxv34O2rYGRFVdT40LkKAh1myxsHQPhinYBZ9rA72et/IVVo2G/zKEY3u
	 08RM3F0marYZZnEE6EYYF4B19yW+plz79k1gnm1YIqEYps6VTusDuOHSzTXg4WbnQJ
	 ypKLQldyaw4xlJiwGMHCuvzYlC0AXdCjmN5NX8dM6z+FOEU8zXMXDcRS4ejNy5MuRo
	 DnRKnq5Kvk34Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C315CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 05:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384842279.8341.16366111332023956107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b05bec50fa5024207fdb43d7a59c53bdafd270c7afe40f20d5fed86649bc27
Date: Tue, 23 Apr 2024 05:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713848422
