Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337622882A3
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755428994; cv=none; b=D18uJw3iCSdnizPC/6lkgfBS6GfaDWXjmvn9IhNemU3ObCgnSEyYSpO24f/o2CjDlhfDbOnCLxhejmR36VKPcclDvyomUhM4MVUVlcpdd0/u/0LBG3ms0gb473fYa7JFXDJraPFWHfQlzEAdIpcut1D0xWOXMJrKALi6YyAKbN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755428994; c=relaxed/simple;
	bh=6ovoV0K+ktDA0us4bZzb+bbTXcFK0dEzBttBBsVj/Pk=;
	h=To:Subject:From:Message-Id:Date; b=Ikao7IejFDDpjSo0h9itF7nvk0f4bV92m5ImFvrqFKhdubOfApCOmIxwf9rd1ayIiQSPXHqDVO1juGu3AXO2ffCTau1IiFO6rPXmGaiZY5LF6L0FuUddIxJqAqev6WFw9XbN0a0ZqqQcDME9aRf/8oXQMq4W8kjk0RtEJ+hCjpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWBsTYJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWBsTYJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A411AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755428993;
	bh=6ovoV0K+ktDA0us4bZzb+bbTXcFK0dEzBttBBsVj/Pk=;
	h=To:Subject:From:Date:From;
	b=fWBsTYJKWG8wkr/EJbI8UO76ZIH++BWTXL71y3Knc3EGiCugYC6366qpgURVaBm/Q
	 hI3X+3BfYNM+7K13E/N5xzWSCfQNfy2D5h5y0/+HY6xYiytyQlX3fh6KJ2fBXtxUVs
	 cYkVXOJChdKnbSAqufe5LIzZKTvmnD4AwQO6/kXWrbnhDYuUsZmj6To6KsJqYOx0sD
	 lwjX0F68Lnw1yaWG9yhHBPcWNhgUshiyOW4L6VbdEW3f8kZnKtZOlDlyW3nLVwg0Yt
	 5W4Qa3h6FsSjyRpCTkmqovIzflDkG7VF86qkUy/ZsL69oiRLA1sfVWxztiMEDmXnuP
	 CJXLAgGMTGdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB7CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542899358.9570.11703456297929286636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de105f14df388aaadae71714e021b941a2d22f109d372f1e211da0d832ca1d52
Date: Sun, 17 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755428993
