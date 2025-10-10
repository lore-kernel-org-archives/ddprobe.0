Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFE5235041
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760071794; cv=none; b=tPChCONmM0g8P7EvHwmhEqJMNz8dYkKekbxt1ob9vSG1OavlVb7Zio50KpfdYSAxgyhP35wzgt3vn2GJQ1s5zrqc2SSkpjCqKEAk0o0m5+u9SBb4uMVXGeJnefLDfsFLn4XaZo8clRywJp+Ewm5Zf/0rb3a8oOWWm/zviSbCkbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760071794; c=relaxed/simple;
	bh=yuTyH4/FMrbY8hwuDNdvWtjDBr0Jq1E49KpS8qmN2RU=;
	h=To:Subject:From:Message-Id:Date; b=jreDoD2B8PTpr8e7ryXkCLBckXNLqxqsvIVdN0/oPEpAozUwFXyKcNr8/oIt03Bvm4WVeZloj07mtiSUIYLVTJu0OVC+TYfl9rpOKplli+TziiR5A1D8J1Cx2IS2y4eMENwbSKh0hKY89fJYtrwUDTu7eYchvE6DT8aRhidvHcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOeygyk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOeygyk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760071793;
	bh=yuTyH4/FMrbY8hwuDNdvWtjDBr0Jq1E49KpS8qmN2RU=;
	h=To:Subject:From:Date:From;
	b=dOeygyk/CbOaRSBvXr61N7puZFRjxHGWH/s7WELifBJc9K9eG8oO1ZYjlzIJMN2QX
	 94gWNL7VoggyXjAnm+uWY9+nXzvpi+IG8tdxCPlU1+8aZAt8qmvQg92/ivY5nAUSu+
	 CbchNDSOsyMR1GJzLWOfjqzXGociwS8tJkxYMkDY3PUeKB8ymrWH+tSmazAnGfgcdO
	 ZSj+IPMVCCoiDIzPH4PcjhcK8Ri9Pu4fJhCGg8mHI2gPZW8NTRgdsib8BbS3YlMbTP
	 h0Xw9mxH9hqxYK5UvsLj1lKFELrMmd+RCaa82npaR6CHObwjKwD6+xdXDZCuP2mRX4
	 u/VbgiI1K4TGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92698CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007179357.28932.10406194283112719363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb714b4e1d1388c48e684954eb561d7d3f510b14314460fc7a27098638c50bb8
Date: Fri, 10 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760071793
