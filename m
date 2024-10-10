Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FA71B6539
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728590754; cv=none; b=mgKT0L6ninN/2DlbZH3fSdj97VXHUi6/zrjaC8wR0eJt9Z4psq/k/zUblJ+OUnNSn4M11Cmd9Ok5+bIC3mIaJcCNjpqVbD5HBITvXcUJ30JfjWSh5F9Kuz2eob/EYXL8yVJZLd6k6WcI/m3aojgWpcvCqu7U7M2gWoL0YN23V6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728590754; c=relaxed/simple;
	bh=RbjmAVip0IeqaRRvi3Q6uxrSNjHxUJyuLHUA0uYLX2Q=;
	h=To:Subject:From:Message-Id:Date; b=UptrB2xFbsNYXoQl2m0Ax0g1w6CJdGI3n0hi3q2h65par0vaJ45KSKaa9uB/MMdgO8P5ghE7/3RV/BcJZf6SNE9dHpc5VS2QsZyvqzMlin3cF4LYS0jErIwad/9ncqbnpiHmcKlCQb+Gh36+2wqisRMc26Aomdd4WPssWYg1rT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUcJE7ZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUcJE7ZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF267C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728590753;
	bh=RbjmAVip0IeqaRRvi3Q6uxrSNjHxUJyuLHUA0uYLX2Q=;
	h=To:Subject:From:Date:From;
	b=WUcJE7ZEh6oqfjoDZxiu06c5enFJ8Zw9in95LN3wGs/4BnZ9uugtHfdK5auz1IjYl
	 kMETHJBrdyqt+jZPk3mBe6S/5NJYftnYvWE1jXQgv3LZh0NMTAISf3D/kBaMzbvo2O
	 a0VYtZefBmrCP+/oAPbUtHtM2/6hJieT1pFjSE4Y/vERkMjnqvsZmyTs8nKcIXXv/Q
	 vXGzk2bcUFlOAn73xGzjEXc69lDdPXPUotIKpHdyxjiYnWTWAkpIrpp+nwDMKDkJs7
	 +aB6Cpt4Zg2IgHmn2+xfL4OzOI6G0bMVldTV0nGWbBEXMaMmXPExGvT4YxE4ehu1G/
	 rIQ/wN8WlPbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48A7D2444A
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172859075364.7975.15392588783582570319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29b90ef09275c2af1ffe5f59bfb7c4c08b52e55ca0816213e29bb1fb7447b25
Date: Thu, 10 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728590753
