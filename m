Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C66F20DFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713007763; cv=none; b=JQvuQ+JySJw6xkZiUYvnSh3hmwB2KfhwmCMXXNMj8GCcHBJve5c1KzYiby85qYMAVkYf9QuhnaeNzVh3eOJIiOHvgwwJNKndTUM8iREQ7QW+MFys08SlxFurwiL5jaDZ49D+9DFDDrVTiB/f+7tmVnXMfXaiFz6Usn40flT+M1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713007763; c=relaxed/simple;
	bh=lxmICYEJGXup+E9dlJDZG5jrWFkAifQN08QuElAD3P4=;
	h=To:Subject:From:Message-Id:Date; b=KJzUKxRXlSJC2NrsGBc3yVabYvkPzUzxkgCqNX1FiuTjYuJnLUl3ryApXpMtnh3HIzcxh28zAmUK8xfRIh1/A9efC3glUKPt0u1FY25Fffz0/EuRlCMq9Py+o54xEK+VGP3CZREQMdh19BuGIC8itoDlGAhFnasDfUAEv8wxRxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cut7iC/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cut7iC/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94B4C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713007762;
	bh=lxmICYEJGXup+E9dlJDZG5jrWFkAifQN08QuElAD3P4=;
	h=To:Subject:From:Date:From;
	b=cut7iC/gHzpabByh/yLBS6Jms9B8wlf0SnTtp5P4923nF2aUe3IL9j2VAwviNvY9T
	 YdhvQ1IiI2H3qaNeddJHfwCPdXTe2VCYSx7HBy76/LCnGuHHH/9nT2hkQMMYR7I7DP
	 VuZV7hvED0Bucteo9/Mi7MyOqEB0SgD6OBzvOUsbUUcpJbw8JbovaFYsw/8Lb4ZLQF
	 fdfnLuMh3Xv/8MBGM6jnI5TfpUKSEpRmmRMqiq6xBv8BPyX6mIZhagV7gBzuocU8dI
	 65cul4clQEmCUswVj+kBB60/xgjuushTHGn+al/zvfIf3FlcUmkiBNztae9RQCNsFd
	 UosH5RfAxUyJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C290EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171300776276.12128.7176048173565887092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397956b1d1ea2276388a44d6799b1c4e9a124aee58853fcf0f7cd431a9d1b7b6
Date: Sat, 13 Apr 2024 11:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713007762
