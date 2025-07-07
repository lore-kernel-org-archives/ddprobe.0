Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D03326E700
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751869194; cv=none; b=t8yiaFf7/Q26jnkLnY+rYqv74AiyObbGUI4nJRbOBw4S9/pxw+10/IpGtI9SnQWifU7bFISAFRJuEMzyhKOnKehUu+ib0P5WMdVQUFSBsaEgPz1vx1dC5aw2L8pQEmihJNiZItDqmAD9x5ho0/kqa7N7heIs1zrs2GhnQCzcyjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751869194; c=relaxed/simple;
	bh=EuHTyYFRbp0iFUz9mUlULbIaUwQ9s9ShpD/LBKU78PI=;
	h=To:Subject:From:Message-Id:Date; b=PYl+TQ3Bv/JSkBkLh96bfJXrB4RALd2/6U23dcKCic27d2RhXJsSdCaOmiupCwodAUeCeIy2G0NugbXi0rZJqhngeVHSY6b247cFDjyXd/KycALWzNxWSWF+t7/Lgb897lY64VC8Rb1HrVsAUhbzHQ3LAytDj67TBK4fN0LOxng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl6HXvXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cl6HXvXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE2EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751869193;
	bh=EuHTyYFRbp0iFUz9mUlULbIaUwQ9s9ShpD/LBKU78PI=;
	h=To:Subject:From:Date:From;
	b=Cl6HXvXEfaxjY7u8gbp5I6yKyZgill1I6UNhvujV8RgFrbzOA4ZBnQlj1MBqnpC9T
	 aaidMODARIyqnqJC1b3D1ohj+zWjn5lcaB5NFtvQgqaOEBr6taUjU6KDoGb8OGRwLe
	 uX78p/QikTAkJzhw0Hwcap9d4TGZ4cC9TeQzIqqbGkKPXhLXoQYVAnKl9Z9auOIZP8
	 HkKCuM22bH5SlTiUiQnSV5/Nx2PPdeXsD558/yYoWHzDQyBfYi6Rt1jESrs5ntOS1e
	 d8tdQYjRWNHzzyUbrImTaUUWnZTaOMNQpEqZWeRFl1Gbe70aNQabpK0wqz9w6K/RM7
	 tjFVTRcMZrtcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E052C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186919357.24804.11510443967932441422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9540057e91fb768ba5b4e180f06d3db1b28fbb50bbb022c1ddc36db57c5e46
Date: Mon, 07 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751869193
