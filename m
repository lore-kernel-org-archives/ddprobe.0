Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7F42C08D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782709114; cv=none; b=iNR2FzWaFV9/nmMT2bXk4Yv+N4y1VHaq8Z2XDnU6Q4l3wTAmGH9ArezxIDHad9uCbyHMlTpXDBnrlFyBAcLDLSzeaiTuo1cCsaR8j0jgiHO/hmKEdEwb/J1vfCD2mUqwvYMPO1YNap5UdzrF4NBTS4Z0tbLzxPJoTaky/ecEALA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782709114; c=relaxed/simple;
	bh=DfiQ+JdetkrGg9XDZlC0q30WEk5kd1AOra6aO05FYYs=;
	h=To:Subject:From:Message-Id:Date; b=mEgoa3XhdYrHXaweVP0TIuAElj0jTruZeFWp8qasUXv6zieCH2ppaSLtANBMyufoO+rSMoIhVXyWoU2mIoSgUwOZF0wewKgjVmirHHWB9rnk2ZqjLKuxfvF6f2+zDWQw+tH4h+HZnuFGq5GL2F2zgwPxq2Bi//skOSVeRLi5TEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Csoox0k9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Csoox0k9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00EEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782709113;
	bh=DfiQ+JdetkrGg9XDZlC0q30WEk5kd1AOra6aO05FYYs=;
	h=To:Subject:From:Date:From;
	b=Csoox0k9FKTZDV4Oj+ipLB+Xzl9mKaoWipgnbb0xTFdVugPICRwvmHL4IYDhWc5u2
	 44MHc+P4MeLFcIak531NhDlWdmlJ1Y1ITT5Sn8EJhyrr955Zs8kQxEWQUAWaUZGxF9
	 csrPSqw26JiuNalPZyx+Rb0/CM8JqL1R+cxmUozE8/tvsLbk0L5Te5AjNtq/Ci6sgG
	 YmifMyZ3y+FZTiRYYkeDOvNM+Fyr3UhnytLaRJuLL2cxcN1jyst/jAlHdZy3MTyJ20
	 vwnRpGxNIlQnbUS9sQmioGaFN53qxa0nKMtRWDX2bS/bjk1Mc6ZlUcwp9OO3tA8QFN
	 loAhOqQbFnskA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F3C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270911368.3935.10022258184811355925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d579d2f9406b177ee3f8d1af2399530059b12316944e7e23550519cf80aabc8
Date: Mon, 29 Jun 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782709113
