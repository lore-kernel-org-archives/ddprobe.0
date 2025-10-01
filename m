Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D33422B594
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759360194; cv=none; b=EYnAs4VXhn7yjvIbdrVmU6b8kwwxsCxsuDqtGj7RTOvLUo/rdjpqWgR17a8mtg3RODddVKJEigt6cFxfa1HYUYle3nV8cwb90etfPOgeG+3cH6AQXE+RwdF5Vw4UzDnIacBWkKWAjdP7mnp8renm6NtymTm90tNaNC4Snepfbh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759360194; c=relaxed/simple;
	bh=TQazdwD6zK9LV29QUZSa3cMkc8ySRcxbUmAPqPxNN0I=;
	h=To:Subject:From:Message-Id:Date; b=rcDPpqAel/7YhhxAdlA+M1qG6so4/7LJbtvneJ8KzsjF5Edj7liiXEvSPQyPRWU9pqkVe4ORR+GCyPSz1NDVs48JHR1pfn9jARXSIFodY2LPd1WHo+drS6Jxq4tN880s1xlSjKUPgMylaLm6T/bgkM6M6NTjPz2JOGLwyqqEeaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsLyekQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsLyekQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1A1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759360193;
	bh=TQazdwD6zK9LV29QUZSa3cMkc8ySRcxbUmAPqPxNN0I=;
	h=To:Subject:From:Date:From;
	b=TsLyekQlnKLVzN8uE5FYbEUcZkImZso203BitG1HVL+t8ec7hnej7He7+QXzhOXR9
	 3Ps20T+ltHVzTfBn9BzSfBRIKivwvwWHf8h6q9mPJ3mw+Yd4ge27Jx+TypU1YDgK1l
	 5sWY/dZ0RAVz+4HXADXCDUrLCx8L+oVY6ax8LHEgxXmiWofYGSOybY7SSaL+gQw72N
	 d9ohi41zS9jY/9sFz6B85SIz3ggz8fru+xDx26mN27PnqAHw/Z6j1awpwg0VdXKP2C
	 mNY7c6bNNySWnrcPigwKJxlgeTwXRoFB5a+sm3YIN6aimuET9PnCaU+FuG81bTtu86
	 LKXMb0D4k2IZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC01CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936019357.608.4305248854042520995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52fc9d8e154cc1e4000aba79d15fa1cb54d98a48ada4ea615ce2c49c8634d90
Date: Wed, 01 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759360193
