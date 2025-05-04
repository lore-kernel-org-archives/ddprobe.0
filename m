Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438B328F4
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746352194; cv=none; b=EOkKzXJYSDKE2/lnDwVF195RQnEcBAVstcuB9D9TFkfL1U33ORlLk5gil85JrKrTczU+TDsqrym4ef0feMVqQkCY695jTwk09RWBbsMMpF2gYbwJ1th6NpzxQZ4GrVY8bZp6gevoU/hS7ltpeI+yDzMAbcQ+mBFY5qxjnjrtoHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746352194; c=relaxed/simple;
	bh=vaZLupfShr/Ka4Cd2Ie2yt0ewDsLTW+b3/ezoBVH/dM=;
	h=To:Subject:From:Message-Id:Date; b=chXKtQCMjJhkvOsZbkJ/JKJIriYW0tp4rSHB3e3Cq8E4oYNVBfMBix9g3V3l0/kZx3QxKLBK0/6ARsdK4Dr3g+Hg7fEIJ2WPlb3XEDC1dv5esNsGY2Rp1u8HquLuRmFpPAzyKnq/awRJw8n21iIpvvQ/Vmq29bAixjYXK/6O8Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhpcExA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhpcExA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA77C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746352193;
	bh=vaZLupfShr/Ka4Cd2Ie2yt0ewDsLTW+b3/ezoBVH/dM=;
	h=To:Subject:From:Date:From;
	b=DhpcExA0tgru8JYvltj6WHZ+5ffd9v6M/ON0bTr/aQwG0p4oCLMBYF8qFd2fdKpLK
	 PKpLuEnNkQf7c9TTNdpW0HhvPZgjcjQaTPOfyQ/so8MSPuwpy+JaoQWi6s2e+QZ/+e
	 aYScFygDyZQVQFGNY65k71myNWPxC0XbaBL+ii+U7LtIML6Y5mzOcyuGxLxSdwkONf
	 PbGA3ojMcZrj0I204S0Wvd1WDnqud3KK5wz23bTIVmRZW2euCIqZ1PeQXvoRYy73MS
	 OEG60SxAbrBCKtn4zy/R6KJ1ToVymNdlwjEZ0Kup9LNtXF7PYFDaqeolglamUomuo5
	 0hdT5o23XifNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C92C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635219357.26412.549600583694247374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3feda452e729ce7043068fa08ba0ea9ba9dbfad48da2ada99fd295965ba34e58
Date: Sun, 04 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746352193
