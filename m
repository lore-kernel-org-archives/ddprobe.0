Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE231266186
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739478534; cv=none; b=mGd7IMOQcIIk0fvoSUazIogHrakC7GsjPJA3/sF4gcI5fAqnwDukOl4ESjW//M1EOf4Th7H7ZuzAdeSsB9VZS13+rNoUoHkKuATOg0wKZuA0wKY3n3ueG532EUwUrgLE7J12Fg6tUuMBPRo9yzlmwBUkTf1jiuIEWh/8d5yebY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739478534; c=relaxed/simple;
	bh=Ph2LSa1NSFXm4e9sR4gMTuGZqUKGBVefMi8EWVcsed8=;
	h=To:Subject:From:Message-Id:Date; b=iD4aL/l+AhWuoiDWISMCVvQ/pDiytyff/otPC+UTpi7s6qwACwcpEPzhhhY/I+o+GfrfTuQyruGETugk75IF2dTqY2Kyh3hZ50EvbWmFNPygbtCw19ymVRHul/PZ353H0jadelyNZeF/htwTsj9sv19C2gaIc/GBya8ya32TI+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8lscfOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8lscfOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE1DC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739478533;
	bh=Ph2LSa1NSFXm4e9sR4gMTuGZqUKGBVefMi8EWVcsed8=;
	h=To:Subject:From:Date:From;
	b=l8lscfOZ83/nPG7i9ia9ytVBrS1dMc341ihbWtwXbWOMoE36d7rpuA/TaoOk3WWn6
	 4oma3+Nkn1ZMuEcW5m4eUA9Lyx1Y6PZMwq2VCqX2ysfaCkYirFyjb4+/uGh5CfBCA2
	 W4EZRVqZsOz7aqKLZlipnD30C2HOILZU67j5Zag8U+dceTOQ/Iqr1TMts+yotx9uax
	 t2YElW2tqlGsv2CwRrk0crcSu6Xq7HaVal75XRLYVU4nYwhQtcT9ryp9M5+fWAOc4v
	 1uTknWRsuGAbyyDbPDjnnIjwqvCUzkb3X60+KJyA2ImPS61xfP7gFKXjDXJmpmMjDT
	 Go3lxw3pvhIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E3C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173947853368.22665.9207339392896590718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a822f7d6985e0e71eba189f7f9d966bde879cdefa55aa264c36d2eaecf5fca19
Date: Thu, 13 Feb 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739478533
