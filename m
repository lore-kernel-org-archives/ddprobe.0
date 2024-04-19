Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD4E13CF83
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713558023; cv=none; b=PWU4Qa+eAUuiWSrxX0cIp4x3CNnc2HHXUgg4zLcHrqb3+x0SixXdX4T3YD+5GUTfcIDj7ZlQ6Ja/jSiquQDyXUiIrqPX44rvf/SHnZDlkLMgygYFvetw+3yvqITEQxbwRSxf+ECn9WGOvp32w11mmfaZdgyQE3Tm6CXb+ZQtEUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713558023; c=relaxed/simple;
	bh=yIedEYD35mMXuq4jC4I5bw7n1QmATRZipifzwUlOHVQ=;
	h=To:Subject:From:Message-Id:Date; b=dp/EQLMVrnmAXfKZwPmYY0YgMmMLV5sg5FBe4pkNavAnn6RUFQiaiNp/nVP4f+MhqZltYBhvxqAPebq341lJZC2TQQKVmyJ7Z+MiEvj2qXoBvwSNqNRTW3vDeVNZerTTK1ftr1mLGYbDe8WBGTMP/g4sP/wx2t5XIoFlmUmCxNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=es0im610; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="es0im610"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8480C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713558022;
	bh=yIedEYD35mMXuq4jC4I5bw7n1QmATRZipifzwUlOHVQ=;
	h=To:Subject:From:Date:From;
	b=es0im610oLajqqewApAOMSG2QuSTbA95tV576m2cvl0txzC1mlcprZuzXh8SNQJXG
	 2A0exut1SUz1T6Kv0bVP5qKyluzJuKmNhA37soYDDhGly/7u0NdDVNKaksLnS4YCvx
	 pcW6hCXhDi+afqGHnucZBoRhrOa8m7ggs8TYDwcyFvjw123wb9K1kD25z8uoRLbsDQ
	 nWqLJxB/gEUPdY9ujc/QU0S5qZtQZiCOMNUrWEX8YGKfjpdRn9zGGiTFT5180X4c5R
	 4ngU53d+aphToNlVRes0OJVSO44A3tQeuvgxrjTwhnT+nrRDKM4gqZ1+jpLEHLSb3S
	 IkayTqqFNZRbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04DDC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355802281.18693.4715876085417727518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534993cf236f66b50e46c12230a59efbcc5048d755bc1cab519e4cd6aefef5fe
Date: Fri, 19 Apr 2024 20:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713558022
