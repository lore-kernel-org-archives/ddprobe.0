Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336D923D7D8
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763936514; cv=none; b=kxx6CO5rjXG/NBx8AcmDLG+YkLKjLuCCTIjhYoJ1NLjBx660QqdzOTaZcY+tBrmu6IeM3v/TrHsMgBfHbDUtUaHxO+uTdFuA2vbZFLyv/iQK8y6+uaE4nvT1HqWPJRJBqjilLmggqYxm4Aub+gldU/NmZUuWB1IAL+YkZeTFa2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763936514; c=relaxed/simple;
	bh=CWi4c0+NJanDRE3RyAAwNotjNx9vUeFHoSkFvKoKr94=;
	h=To:Subject:From:Message-Id:Date; b=NYoXemPI/Dr8ldJMz4wgNbjvpcs7QYvWiCDy7cdx3/AasMu5+F8/iSzM+Z9eQ0CkcWyg/GHty2Vsej0A1XEWx9mBHz/WrBvQTREhPyQWQr152KWbjLCePOq9571WtbNQvXgLzigVEMX7s7ZMZK5Ye/bfUELw0LSvgNiiX45o/80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngPaTHrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngPaTHrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BFCC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763936513;
	bh=CWi4c0+NJanDRE3RyAAwNotjNx9vUeFHoSkFvKoKr94=;
	h=To:Subject:From:Date:From;
	b=ngPaTHrxL6zNsLveXK3mLAMqAdz6e0enGpCAn2RJaPAXAb9e/7XvUquP11SS8bJeX
	 eRPidijQsx4brwnup6M8R3yAt1rUizofIbQVnubjzQ90W2vZj7tENeab/Yo/ypfdPP
	 IpPABHEtdo5Z2UVIMzJc/wouhuy8PhVpk1V5F1gmuhw1+LX9/0QsF5lsCGKAw6UnGb
	 8W/+W8c7wUYYGvydujC0SEgG9rgIn93yrYhA1EasFXtSivjxjcEscAx9W6ENLMAT2W
	 aoKz9jdpbczIJEICypBmapFJL8eaPv10NNrdEhXkXfo25zK/HGt1p+KWwj9FDgAjVE
	 kZA57r7BbdvTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9803FCFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393651358.22858.8784283529985823756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4039919e198caf78336515c3255533c318ab640a915a9c4dbab6f304d7c5b055
Date: Sun, 23 Nov 2025 22:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763936513
