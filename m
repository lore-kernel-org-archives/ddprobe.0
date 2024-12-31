Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEF7EDE
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735657554; cv=none; b=YxM8rygSYtyhxpszowR3UDGqixG1H19WipF5HwIMok6jL4uPmt+C0yXbLNjQOvqlqu4DmnuxpqO6vlVaIqVGtSa9z5jQRL093eRZdHO/yHpx5E0rNU4A5ZJ+ohy9EBTscz6B2bR1oAnA8IZFdbfm3LglDov4ii8OAhKf3Hu5R2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735657554; c=relaxed/simple;
	bh=nUzo8Eltcf5CER3FQD4RqQ/5qM/Q1IUG9aqIpD9lPcw=;
	h=To:Subject:From:Message-Id:Date; b=atCCCOuK8oNTK8tHPzjcwVn5JwiwKnJCVh1raMJHVOlsgTl8g7aRYEdlluVmUD7mE0bRVZIufxCJRYpT8f6qX3rcyRFr+Mj84WM2pSDYDD+7EyME375AKE6CvTp5BeQo2gx28wcGdoH3JsH1aGzTwgigoA60qL8JogotR8oUpd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyman+zr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyman+zr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1474C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735657553;
	bh=nUzo8Eltcf5CER3FQD4RqQ/5qM/Q1IUG9aqIpD9lPcw=;
	h=To:Subject:From:Date:From;
	b=cyman+zr1i7g3m2fmNamKOwdxAXQj2VxgiPEkmP6arxiM6md0h+vY8wnD5Px6b/sh
	 ksMTKg9Ur41XWsHBTxzcoQVXmY2YV9gFiL5C6Qagq56u5h467vMzXJfDqcOmKzxIR/
	 hVnqcGwDH8FaGuvgpgU8K/FYzdcRaUoGhkDA78j8fZcgiXeFxdLAEZYL8JeCwucjpt
	 9R4tE2ixvhjoYMtZhTuldwWHcJ3mgOoGR+3YgV+ROYcH/rr2WYygYsYDfwh0wBGq0J
	 XnnASjQqzhDqPA2PcB9Ld9UPcuyGCU1mVKymnq9h41tQzMJZUF/ftZrPsTR36wFsWk
	 DdJyR1WTuEeag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7F3E7718B
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173565755362.31677.2389968440344070438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bacf37ae681a42724cb4b8e4f21f2c4cac844243a0757de942d60c47c0bcb76
Date: Tue, 31 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735657553
