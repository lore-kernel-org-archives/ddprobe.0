Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FA81C687
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717169063; cv=none; b=FmlgaxvvU1gStyCKorHJfB9Uz8oU66Rp267x8DFsTHRA6P471l4K2/pkm+u6IL7Z5qpx8dPR87EZb6NBJrPARUtoS54Qa5C9goQ8i8N4iG3wFDzgSS6qBR3I5DuALc3Uf+mLRvWj1NTqY7u4vJPMt2dXSvzISIAruvCKXoGB5ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717169063; c=relaxed/simple;
	bh=kJlsknX6WMOlclP0bOXNDk8TpA6lWz0AniHzrYmyYkA=;
	h=To:Subject:From:Message-Id:Date; b=beVMp3zqvKjGw/jzn26kozeHLrShSZMYcbLy7STvR09vHf+jqT1HHaGzPfyO4VZNHCWelalY6zpB+zlmJxZsx6ZWlTJWSJ5fYyEDF/XMYa/1xkWlbCGnk9ymkbTKE/meyvjN9ODZ3czShbdKgi+Mr0mKwq458zD3/RyyfU9HiEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnGVh+Gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnGVh+Gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E35C4C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717169062;
	bh=kJlsknX6WMOlclP0bOXNDk8TpA6lWz0AniHzrYmyYkA=;
	h=To:Subject:From:Date:From;
	b=RnGVh+Gb1NOOoJCgqAljr+s8UYEMon/zWX6pryeZK3VS/60ypMrIp+d3u/x4nWoju
	 g0Z1vzNVeOUQRQ1Fu7gmFCn9OBLtc36UrKlccWBFT6I0C1fY2j+9Mc+EOg6Ht9CHBf
	 sVOf4YGKuGmdesYiqbI3pNKgvekdfnU8o6IBvb3wv8lEtidzrOTMN+bA3GvFlLUAJ5
	 QAQ2fULi7H10bZlQH7PyHbzWVXrniS6ZABI1Y7hX9Dp8t4NO5Z01RR4dBPxPAX42hF
	 ZgF1bjIrK/bXwklFbibgg+R1XtcsLHhgdxl/PrhGrMOVlmbWCE5oPlE3rAt2oIQV9r
	 dfPcw8Cmg3WVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D23C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716906280.14891.1556614653305430102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e727ef52754717e857b004a3ddcc18205b5bd842cff922e84915089db70b9f29
Date: Fri, 31 May 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717169062
