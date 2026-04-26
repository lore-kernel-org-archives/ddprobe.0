Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB0D1E505
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777163854; cv=none; b=bH1fSAmAQzOW6YWEbOUFA1joRYa96YIQtxkxBQ51RDvPTmlhnCZB0s+SlOFGZ0gMyOK4WFeSeeDiVStv/tBnkD7RqiYP473LPY+Tk0/xJvYAH0NLxz64LARW7I+DgTTUG28YoiOVbfDHt3jjwLdScg/FA4Cb8e5RiT7GkHejfRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777163854; c=relaxed/simple;
	bh=CBhLCP3G7Up4Ryssajqt/fCPyTeR3fMJFfp10+92JpE=;
	h=To:Subject:From:Message-Id:Date; b=T1AvAPtvv/l1n+AdH0MmP53mce/mgvQSiKZZ2Z72zqg6F56lHr45S18SwsMjzL6Mbgn+6vsBo6BqC6lc+FoUohgpVQ6XsKRD9iUL9AS3LTiZvaMs0/ATcbvUT7rFOaZxQmiN7P2A5VFBwu1tBpFiF3Jn/+D4/yEa9KHJ4oNVoME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lmo+kvzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lmo+kvzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1015C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777163853;
	bh=CBhLCP3G7Up4Ryssajqt/fCPyTeR3fMJFfp10+92JpE=;
	h=To:Subject:From:Date:From;
	b=Lmo+kvzjs640QZjb+Ck5ccxSOiwsAp3UjdMFbblZgEJ8lH5LZgEwXsgkuJQDSIRi4
	 7oKjfRAgZ/djHa09p9x5U3GhvJSXeDImgrVk+79CKURxG8g2cn78uxKC5XTUJPdZv3
	 ELeo8cAcuBKFKuUrh6sZtqUpJDb5xqkfeXzWJDJ673ZQQhCEIwTrkrjSBJngBKps+Y
	 9yi4CHErPjGMSBrWsc4hCeqD9ndjuP/YpKUWh5RVeIfJNgDr/TJ71LaQm6DcXqcDpq
	 2HOjJ9ggF9UJG83Qfipw0+e1/hNQmx+SQLyAartnCX4QxjrmIKucGDd6fo5yRmrCkC
	 zrXq924vmdf/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC7BFF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716385368.19743.9982534907403197217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd45802e3810ce99b17e09f30ceedd8e769b889fc6c426f46b94642d73ff43c3
Date: Sun, 26 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777163853
