Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA8217A2F6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771263894; cv=none; b=ZBDwkT7fCcv8fj2Vs1b6AGbfqjYwHhN/3IVZX5+H0qjIftfNTiPlyeGbGIUmsc7QQ7LzoJK5oh6ALmKiznCyUi09+JQoUFjLYwLpR5C5Qc308oXABHlbIDFyDz265USQfDCRlDl8vsP4bx2f4oIcV958ktkLfvvPDOv9JXeFpqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771263894; c=relaxed/simple;
	bh=LpQ5fMhSn3BFDhBV9SiTVC/9om2oXt9KdlgH+25VuY8=;
	h=To:Subject:From:Message-Id:Date; b=U2nxJeilA/ENIk1ydpAztRAAGkTqo6A7x9K3zgVYUm0kwb8pFbPc94p8hlGXycPe3HtU0d14UooiMLPt0y3WmJPfLQeiEA8gDfm+T036IREiN70iIATI/YuCyxzcbV6KwtqDlgFL15ixA/Dw2Ga0J+DN8rB/IEeAOQNa9I/ROSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoMD/Jv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoMD/Jv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771263893;
	bh=LpQ5fMhSn3BFDhBV9SiTVC/9om2oXt9KdlgH+25VuY8=;
	h=To:Subject:From:Date:From;
	b=UoMD/Jv0bK80aqjbLQg8P8JnPEypMGRbSfRHVp66BFj0axXkZlPE5fHnAHYgixKb+
	 VfcF0Cv2buNHRUxioUcyYw/KoOQm5mtcI49pnrAHSOQ/wKJ+zEQPySrGXhlk/DzaN8
	 2y3p/YM6ehn36czrqhIMR4jI7pvU0/9NNtvXTFU8vsiL+ypyk+Q4qFGy3Jlc9FQsoi
	 FkzqwA0de6Y+vfXD3GQfv38x8JtEz9nDrw0eUOwEO9aNs5GxfR5pHmJ3XCC/6IvV0z
	 9bzpHtwxua/hGGKIaiaD5uuJXrGoZar0e9V/u4+YQyK6y9H2oH26m7yA3BlMqIvVc7
	 ROEZpyltwedqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B1E81A5D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126389358.12300.3819857862087189083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8757905ceae1f52165b0626a80c204ed9c34a9285ace3b23dbac9096b6a044be
Date: Mon, 16 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771263893
