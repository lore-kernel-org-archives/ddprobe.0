Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1983C4A01
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759079995; cv=none; b=X/L8oSXCT34RnL3ZGmbpUz7YUi+PQN7wyoO0OuT/tRG/UGvaB4st2xLJDZ9Al5/do5Vl+Z6dT64lu026AJiY06fxXaaB9wYYt966+QdvgEF5qcUDI0gOSJSpJGo6oiG/x0MbbiuWyR5yNwos2hoAGCNFQyLKJ/FAI1x8u43ttq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759079995; c=relaxed/simple;
	bh=PWFJFDnL8VfyXr7WHrii/lZPUL1WIpBgCNfgXPdbpd0=;
	h=To:Subject:From:Message-Id:Date; b=WY1iZAiiKT+RJuL5ex8VtgCsIHBStAWSBODyBpccYAmxlWhtGiF76gv39rPf8DfdzT5G7APKh54P/GQq1pdVGnYaPaLJoalqlwTPpfRFcNJ5fRyyCb3pwLAU8hHrXYa3+eWmgngsJrq+sKHYfZWRObmik3XslO7B0ZOgzgv4/Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maERmSnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maERmSnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5A6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759079993;
	bh=PWFJFDnL8VfyXr7WHrii/lZPUL1WIpBgCNfgXPdbpd0=;
	h=To:Subject:From:Date:From;
	b=maERmSnDMaCyzEcarwLSS1rId0j27TjKulwLqW8jq7UnszoSWy1R2c7rWvjlpsJX8
	 kb/jHH33fCm+R+GmT6TaNjphRqUvgK4b2/SydvwDHgsdl0NS8y611c+7ZJDOpO5p12
	 0IL5qC13+Mol8HfhgziaLUHApqPgJrfuathS1cRtVmcmVN4mI3vPrtZWBBJGq5fseF
	 iOYZXvAAMuGlNgKPHScX6cOEz+oUU7F62qRBrdNuRid7wS3hPR5NPxEJEwnq7agEvJ
	 yQBtMCHrs36Qn7GGN90cHZ60UffCChbW//sRbMhJA2d9CpO+v0nPRE2zI1Evnc08LI
	 9cL/WWs8+de4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A14FCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907999359.29672.2621262378065215822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d59c80c12b45ca1b8191ac6a39ad291a016e7c689900ae49db860f7a133346
Date: Sun, 28 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759079993
