Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649693B0ADD
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779664354; cv=none; b=NkujMDdN7ar4JnewXoIjIQCEUoghCEtkWwjUUOW4Kc+2JNEv32LkQ0YqRuHzlGG34AVlhytR46y7ZxOi3tSyuVoJuwZTOKubS69xNFoLrtOA6oGJDgQjJIaVVdh6oGVck41Vk3qx2KssiOtjuR279YD0xnyvQd+L13Oioy/qscs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779664354; c=relaxed/simple;
	bh=ghD8z8Elnx7v5wUYoKi8yX4c7ibW49OExMHqJpHAPOg=;
	h=To:Subject:From:Message-Id:Date; b=s1L1p5ME2ihqvpGLO9SgyOpsPlyInKhkIESXT5fMtFxpAsrf3W4mc7mLei7cIa4Oi4Y9Cg4er7FQhGppj0wUCQ/HBnCSFkKki2/o5BCTzQ/imdpMENn4hImdAUHDD42aS1JiOaFDAXFPwJ4fvCPjS2/rt4EyIe/PBvRBcXo0+So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8LKHuAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8LKHuAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0953C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779664354;
	bh=ghD8z8Elnx7v5wUYoKi8yX4c7ibW49OExMHqJpHAPOg=;
	h=To:Subject:From:Date:From;
	b=t8LKHuAYus5+pGLwdi2DkLBvtAGZGKYBmnVn7G1bgV2FaJzZPAz4x2gQzSiMBggVL
	 QGohcPOZvEBighXwFd+DlagK92sqYYVY0EGQxKi/36gWPE0DBEqtzS15/sU2V+B91d
	 xe0PjWC3/wz5tcUXPVVEHKY7+OJlWMU/cGitEjcjQPKo8BjKwx3kifP3LNbMPSveUy
	 V+RZ7EeiqZ3lAS0Oe5ZXLdMuvRHNRWthB6yFLf8olN4KFinBucz1Fr2erxlH0d/CeC
	 21Le1CZCYM0sAzTWQP0luqyzoRHTtgpuH/zmXF5jm+4TEB20UWkTnS3GKvkMsKXXsd
	 CvIZgKa4Y82rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDFACD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966435374.1677.7726903871315621222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8616b0e72d1284765eb5cbd8e04d1c02ceda38b95b0740d222c29fe66624a790
Date: Sun, 24 May 2026 23:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779664353
