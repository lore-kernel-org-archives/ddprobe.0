Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A66B25782F
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760006994; cv=none; b=MGi7uC2p3cWDzsG6GX3VrdglEHnGKnUrFrTRgHRjWUxWBtFazSPiN8h5x1DqnqQJJm93OawMkbfyedES9f4PbLzDAzpuYPTOtqN9EiheVqkY242SIpNxTBrLvSCZZk+oDjFUO7wj2dgJr4PJE60+fBXtCjq83F5W38fGNy50La8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760006994; c=relaxed/simple;
	bh=fud3t9TJ5FFJ/cWivtyNTMLwPZELUvQOMC8oE5tjECs=;
	h=To:Subject:From:Message-Id:Date; b=F6xPYM5Nod6O7VJFg2BHaEYoNzoSZZrK6YL+/nh5OX80zXD98I2+xtkjesOn8bDoIxUv3eWfdlIR1QXBf4608N2UXkUbzY2/kD5mI9gSSESgat/JaaWIuau16xwUd+Gn4WC2ZI4ElYOlijYaZR7uXK4nolbyTe8Bbc6hpE/hyMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGxmmBBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGxmmBBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A082AC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760006993;
	bh=fud3t9TJ5FFJ/cWivtyNTMLwPZELUvQOMC8oE5tjECs=;
	h=To:Subject:From:Date:From;
	b=kGxmmBBnESrrIoVwMqNTMIs9Qhs4QJ39PZN9XU75SVbUk5PjddNlK4vX5rYicswzB
	 dEgUL8Hqv4FZnkwiBRxpeZL29qWFkVi16zrHKemEBKYXY/HfnlB7OUvCGs6nr4VxdH
	 vBU+ybPayHTMAhZkSQMvGapWOwUPHhbSJMHQr9TJAiHpIvYZCqE1vWAakuG/DX4Qhq
	 pob9NApChjjVHrn6imk/5u35gzj6YPxmg7/1JrPMHaQI7wdNX3vV+VO53wUV0pB/DL
	 zGX0LifuRwqIk1pNQLMASWYrlkmc7Ie7N55WKpCY+qrXk/rXznPkAXWi1QQ8TtNr6+
	 +5538polYphaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED6CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000699358.30837.7680174740034099631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28408aec71a09b9d7d1564aa72096dfbc9d12d5c8f90af3fb872175d1fe08c34
Date: Thu, 09 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760006993
