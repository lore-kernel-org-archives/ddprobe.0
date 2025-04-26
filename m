Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD0412E5B
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745644195; cv=none; b=A+Q81RI4MZSefx1O5p0jcFaeoTHefoWuZ9ZjyMXC2ZPvla9jjybj0xWv6Ly/V/PRuCsWchYClG9Bbaq3GLrS9i6jp/79biYI0qw9BrGlmYNKtowEUXcksKiov1nEfAhM8XNOtIjh9c98Dw04OmYH70HKLi3EJm9UJGxvgqIHz5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745644195; c=relaxed/simple;
	bh=95mFXwWTQkHMDXZRVfWUM0266Qo5WtGYoA6X95DW2IY=;
	h=To:Subject:From:Message-Id:Date; b=GSdFsq1rQmUagmbi0h47H7VdWEiMugAWbTeuhJpQC8b+O54N0WWVZu8H2fsjkjNVpa54mdKg+4LmDY3CR2VuRhzLlPxKkdF118tNNL9abUE3d/+lkiqUxhgEZaUs2acyKnnyevRrZJx3k3af+wUo09q4F3bGruAxCKbNN0yWjLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruAluwFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruAluwFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745644193;
	bh=95mFXwWTQkHMDXZRVfWUM0266Qo5WtGYoA6X95DW2IY=;
	h=To:Subject:From:Date:From;
	b=ruAluwFiKhDZpAncfL8sBBUasryKS+sHqasGXXdvGNjSsuiSaPXQCrZubsoV6mUQf
	 EKPoJ5A11Qorktzr5JkYnEKzO4yGqieOICW3mQt5rYiutLDIYWC31rnsk1Z6ylRTx2
	 Ft90rYPwB4Qwc8KdYziHsK3+lhK+HYDJmwGg/ClXkbI6mj7WX92Qsd628SDoVO6YnD
	 2l6pfmDwKAXg0B1oDxqzek6NjuZHhl3FFrjes4Od0g5qJ/1uK4O1SNa5dBgU/0pODa
	 OxMTJ6iABxPkNzoQFGCjE7DacC6mXAQ55id4oTNjvWK5QhFHQIzzNr1Oyv8iSQqLhx
	 wXy0MWjz2h7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92291C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564419357.22272.6617456156312527546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7b6a1fb88d5ae9ef76ec29e535edba544ce398440099ee7e01984c10839f55
Date: Sat, 26 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745644193
