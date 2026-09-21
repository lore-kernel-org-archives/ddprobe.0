Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D02B4A3D49
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790003434; cv=none; b=uoRS9ewxfGlsZ6AIKU2ekwOjKKHw/3uCx0LFmubg/1/mxeHHtO/I3+oVCrpEXAGaHM3ImlcR1eArHHGMz6jhOtJkBeoEQJ/V1HSNb9HMigoDU7M8exZMn10ecEzuzVa0T6yqJoKikRcs763NbCMGV5obXVNEeci+6tKtflxjGCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790003434; c=relaxed/simple;
	bh=Id5F95KbTPWzPGMAppO1o+3E9FccWdmdX7gwQxXoQkM=;
	h=To:Subject:From:Message-Id:Date; b=dD5osE7tUKK22H5y85h+CUizA2iWCeKwd4BhVyNZ/ThmJSCKE2abIsSvHb7FvQPd9cBGGQ1nXfhWOh1i+c+A2FiF4fB1SNNNtaqd9ZKkI1wICqnF0eAjWDKj/ioTAQabf2vYA3BR1Dwh5e6h/d9jRbX2C54RamXl8y4HrKJd9p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6etbHFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6etbHFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6129C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790003433;
	bh=Id5F95KbTPWzPGMAppO1o+3E9FccWdmdX7gwQxXoQkM=;
	h=To:Subject:From:Date:From;
	b=S6etbHFwqZaP1xdFAtUCYEyOO+kVaV8wkNconzz5HD27Lfx0w0CvBhKgSy0x7WKri
	 tiVBhv/7P+eKe7mLK/4uNAP2bdcsMCM9/9DkTq4WlLYwYXAcGpTJKUztFq4OD3WijF
	 NdrDI/PDNYVAPd9s/ZM9qHt1uSzNxiCRf8LDXk9zCa1Qf5xHNp+aHd55aihWeriLAe
	 6obEM4j9TRElQC2zVGFpp0Frx96ceEdR1EhPioiaqSsEqQFpuo67WHGWJdIiwSpRpC
	 /p+Xgs+1CAbbfkugSuKsblNZz4cHlmeCyQiX6ApJzELk8OEgcZKFBvT+FedLYPcYmp
	 j1k/Q6u47G4zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9E1C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000343375.24177.7453050951083004402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f952b33b36bd31193f8903484dcf9f461418fd640b12a204f283b7902e92dc9
Date: Mon, 21 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790003433
