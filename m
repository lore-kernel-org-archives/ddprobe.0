Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFDB1C69D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783819714; cv=none; b=HBOxsmMidFTWIzvym7mqHEpXCp+jgsaEWoT8G3FNK4ubLzeEv9OuwEFhgOvrrFJVPShv+gyRT7VHqZDFyaO+xOF4y0cHpSt6rCGGdctWswWj+ARuY/mfIe7o/108JwN4bBeB4knzeJOu6sPjhkVktknmXml0aZzwEIN74zA37Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783819714; c=relaxed/simple;
	bh=+wWpbXaj0NvdloVrwLX3J0biF5CIt8fUTnsib/3kYEU=;
	h=To:Subject:From:Message-Id:Date; b=LpCv0xmcXTrjbjG5efBXCn9Oz0g9+xue4ZKw85KPQLwxcKH8IbznIqpBu9xqbuwVw3wIfrLH/GdygHN4OvMDJb6Aq1fmS/MdAip7du8PL3aPGMh26IEvfh9Xjekea1kJrwP9RltAmnnOx8DCnPr+wWeBPUBRA+sAJyb2k6yfI+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCi42CfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCi42CfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD98EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783819713;
	bh=+wWpbXaj0NvdloVrwLX3J0biF5CIt8fUTnsib/3kYEU=;
	h=To:Subject:From:Date:From;
	b=sCi42CfL9drbQ6RDcNbxh4DR5pez8gg0y1muxbFCytTpWtxhth7+ZvdYeSiVNtBa8
	 Gvj3DXy+KES4p/CIZ3WrJ8MgVGelZvJtjI7pjmRt1f/xqWjj5d+vX+fNMB1myXMgxg
	 8yC+WVD1BauHthi4fN9V/Se8+u15qwqeatwH+GgXulYPDubQ5RkfFtUMhJXg/IuoO9
	 SKNyO598wQNE1/B/BRMXIETgLIxLPnDYiWUMmwtv+5MpFBP0jjYKBhQumuOCWfJ0LT
	 sQikpfrWdtVIY5oI9JukfFMkXGAu+6u/FTrD7C16hGitVquDIP8jZov3PTmH9DuFoa
	 eQZBi/cH+ZfCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C79C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381971368.1363.6969308171495121121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3a7ac6cb0426206ee8b7504c953dd1f9645a5f51257c7dc6ed84f4b8ed2761
Date: Sun, 12 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783819713
