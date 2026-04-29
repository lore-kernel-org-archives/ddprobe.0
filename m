Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1876F301471
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777496254; cv=none; b=GC9waTJicSXiovxeMyL5poVjGxjZ8s7e1vUGw+vg6nD4+ov9PTGNU+1T27nk812GvoMXgE2ciQx1b/ib1F2tW2+mWFEZnCDkMgsQ19B/jSIWQu4bJgA9C5ircl2KeFMjIQfR3qZPdDlH0YMWIWkmCkRQdpb40vMs9LDnqW2dFJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777496254; c=relaxed/simple;
	bh=qORwwK+ry+ynwRshw9FsmOM2FY8LCv+JJf45MbJaTVo=;
	h=To:Subject:From:Message-Id:Date; b=nUmLhkdjiJoznA1ioD6QOxzEDBgRY9NhLu0t4oktxKBhupSn0p+jPEzcn6UaXsSsX0rcfvxjc0L8wKnCKd4m+2eJ8r+VuLUERxuxzzO8oUiQ0zPg6ht2zcUZBXJT+KBgZPdLengZqP6orj12NeV6G8m2dYTvuYnwHer6x8k5Qx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcNCMRAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcNCMRAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA369C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777496253;
	bh=qORwwK+ry+ynwRshw9FsmOM2FY8LCv+JJf45MbJaTVo=;
	h=To:Subject:From:Date:From;
	b=KcNCMRAnQjsHEw9o5d9S4uK9TQzqt8HGxVMpSpv6AtPuDPqq0jmFPRbTinU9jG8IS
	 3J2koldKSIE5Z3FUPBQUjcleNPehY1wV7s0CSPIKQEnYZVXt1pbjOrFnBQp0DE/b2z
	 OZeA+DhnLtaeguIe7kceirY5h5XLGLHyRKcGc1yuYgoxxdAz+NU3XXUvxEajK/IDp1
	 SfHE5Dol4uGV+1Zy8d/RniPHWQ8xz3mxJV4DbkAwHy4NmRbKu6Dmgjs7WYINCde0OP
	 a5lcHqnE2o3n4yFxw+lZsfdAmhuRA7BctzRPIh2aKr3MKVOTlAvB3iKcgHn+zqiMml
	 x2URl96U9eqGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9927FF8873
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749625368.3563.7836111702279250042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d05d321771507708c31653d0d59b41f52746d54a6e24cc44f15b6857e9598e
Date: Wed, 29 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777496253
