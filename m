Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3028021C173
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761488994; cv=none; b=MyYL/WKcew1Itm8TCJNSy0LV+VC3K5FwJ8tNpYNaQs1E2qXCPshjfrlv7z27YIvlMKTIaUeEiJmVo9elHubGTagW2fJoXC4L1bpWaYgcyg6XH0m6bCx+uk7BrIexaXOwa5MJAPUsU5ff0iWReV4cFRlQoyFbuXwU7RJhg/k7oL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761488994; c=relaxed/simple;
	bh=4lBqLDNOOA3Xc6H0H/uyaSK9+4li/aah61anpD3Qgcw=;
	h=To:Subject:From:Message-Id:Date; b=DE2nAywppCb2oTsqucgLffXBF3V8X1AxrpUUe5s4qenS8Ckcz08wduJxZT3/9F0cihyoOMICPPKt1jQhohZtQY7N0nKMFH5xm7orfqvKZX8YU7SQswv5TizAlojuXAfdBsRNHLutpgI0zglL7y/CxqmzHFn4YBxyzqqtsied7ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WARjtI6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WARjtI6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B49C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761488993;
	bh=4lBqLDNOOA3Xc6H0H/uyaSK9+4li/aah61anpD3Qgcw=;
	h=To:Subject:From:Date:From;
	b=WARjtI6bRRx837WmjSQCwMvEdUaYy55jGh9FaaYTN7+47r/TT8/Qm/BPMXGz9fy3n
	 Jg29SaxxuHRMJXith0bvYtEwOiQkFG3E9XnH0GOzO9O3B31xhnm3amU5K+d6AWVXao
	 Gxe/P1vqUjYhtPGgOYWUXa4ax6DpveYBbZkjdokveTtfl+pXZ3I1chEapMhy7GqFqh
	 ThjC7LWy7sakrL6WWPBI9UargBztOPkdyLskIsCtOYIUptP/uoMEVO4PyzfvEN/qZ1
	 HYfStGiLgiC8WEwG7HcHCmkr2ZYAOcvaViXSNdrRW29gQePicVM6+kpqXi1o5Gg/hb
	 a+ftPue7upPNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953BBCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148899358.21522.520525843747681810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9328a335cfbd2d85792f920b865df1ce9234838341d45a37276e36f13fd4ba12
Date: Sun, 26 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761488993
