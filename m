Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9812571AA
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749472194; cv=none; b=qgYOzYFI0XjzdQjvanFz13F0tMj4eVrDjviL6Pmi3+IvT/s3APEENbjC6/7nt+Qagr1tvcsYlRnPY1VsdfX+GWlqUgTt3tzt81WiL/y/WdsboNmPfl8XBomcYB3jIF+y+TSb3Ff3/qC5bRWP4vS+Ohqrbj2bSFxSXEYS8AR3gV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749472194; c=relaxed/simple;
	bh=MuksLm3DB8dj8RiQiDzpbLKTHmod/17a0zv4xLVTF6M=;
	h=To:Subject:From:Message-Id:Date; b=bop/fRd/uUHDZjTYiHsqO4nFBLGn33cssPoFG3VpX9sgzoAnaqDDtBGSyM1BCmSsZXQKvr+oGBDpq1y2i2M779VVTRiNDf5nzLo00ZVRw82kjbnDxNThLxbuqiK8e4aJIscbaFUV2V5TKZxeHQ62VNkVfrixkJqHmWBrCsZEiys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDOFn+Fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDOFn+Fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C9C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749472193;
	bh=MuksLm3DB8dj8RiQiDzpbLKTHmod/17a0zv4xLVTF6M=;
	h=To:Subject:From:Date:From;
	b=mDOFn+Fyhpnq5SWCkC/fK+3Qk82wneun4s0oVqQAhjbl0W5YYpcd/EsKBwcsCWBbY
	 7HjMfmpOMP8Oys5TqfvdvF0Pc/5xQIPlRdmr3KS6HyGmn896cuoW4ZxQ5eGuG1+p8d
	 rxmMw+29uhccygWLBDrD35MwsAIZZJp0jP3kcgR/0/hRrnpoAgw9styznGIBpCU3Z0
	 8mVBzjpNnBOnFCZkfukg54z4zuOcomOWC75lh3KEPHkrroL3e7R20Axyqu2R4zIVYe
	 n8N00oVDE5Z/M3FCByhSvFQnPVBCbasVhTQE9lj3/xFfCGeOH/pYCwy7fE6d2i6aQ0
	 IuFGfMARnQPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E912C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947219357.2104.9813930167627690788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a65083a11df938e8c9f41bc9a3535e3cd5f322979326224845bc408da870d7
Date: Mon, 09 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749472193
