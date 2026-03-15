Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1443E18EB0
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773583494; cv=none; b=HCjxZd4x3AZqpogibllDgaZARqEpDLc/Yv3y+3UP9CyEyHZcX6eNhYtcqo4HVJKxhW2iLDbH52CYTVccB11qaBfDtw6uC5p9i6bRyIOwEjF+r1+DPeBeOxpfY1qSIMD/69q2lzJoIPDoePoRNfuETCc1lJ5OMUcBqvYfdljI+Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773583494; c=relaxed/simple;
	bh=hB4zvCbA4OB7a/GQqEUIAwbiGQ50mJ/1y5ENK0PAL/s=;
	h=To:Subject:From:Message-Id:Date; b=Sx1XqYw5qKkBPSdRfP9IEDuCxQCUWfMyllJ1J/287ckfBPUA4pvszoNEtyZ3sjZxKYP8kwtplfT1KGsfUn7AY2NYIIv1H5HJmFN/ogB8FNI3QLkfFFyucbRM2AXmz4ToToHg3OdJjJb3IpUrjJ99E68Xe2aA5ewErz9bVK48oy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jirbnqeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jirbnqeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773583493;
	bh=hB4zvCbA4OB7a/GQqEUIAwbiGQ50mJ/1y5ENK0PAL/s=;
	h=To:Subject:From:Date:From;
	b=jirbnqeKrdXP+lhb3fHVid5aDL+DuAARPjq3izhp6ndjgCrbUAWJFj0ulqiSneK9v
	 uQv0eUH0qQfaWkWrGopUv0U26RORXicolqV/161D5q08P+5H2jKTgtOhqBHlB6sFgW
	 cMgwzZMBt2XamASyYQ/DqoY9rrNVyVq5aDOdHoH67FF0BOu3855TPWiDp/5b+uJ42j
	 fZe/qkCtyzc19vr/rXUfx3MhW2jJ8WgQ0z55ByHzUAzhdyMd90GaKfkedBXfbj/wj+
	 HsE5JFRF2oAl9kcKGDsi5DG/HU/KH0Dj0UExyixtAZCVlvN+ypRx+LmfJ4+AYTEP/0
	 VSlOmV7MNS8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C64F30268
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358349358.28337.10604821667053738210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79fccd101ced90ccc2cbfbf2ce4c0669f7eb8f027b4721860bd1d3dc1d282b0d
Date: Sun, 15 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773583493
