Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C04171A5
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717311323; cv=none; b=DSFAbG/NtYZBvyZ+Fw0AytKPMUuQMr/QLcxit+Kq6QmeI32kHrTbQJ1VS47MWonFqqEkPqXI4qv31Dz6fUCWo3d84qMWpaPjGReXROeLZbHecpkJo1fiNiXY/Wp7qHuXA/MdPqYYw98h6OmzVFuxVe69OpbSHOn5pfby7/HGUoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717311323; c=relaxed/simple;
	bh=LtCJhfGWny4c2WHhSNfJOH2b0Y6AorG1bgfvcPsKjGI=;
	h=To:Subject:From:Message-Id:Date; b=imaSfd27Lv5D5cvNIn+HMMwqneJTKdANaQpEpdbwPA+h8wPzr8KAYjKpZ603ddJDP+rA3UmP1Ucpfwo7I9zVOffiRGIx8vJ6Q9b4HefWcDytcwGDwJMT6c4yWsnJ83dRmMLRwyPxyIhWqVr4B0lRnbMVBWfsbFOnisMymmoe7KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaEHetfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaEHetfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F65C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717311322;
	bh=LtCJhfGWny4c2WHhSNfJOH2b0Y6AorG1bgfvcPsKjGI=;
	h=To:Subject:From:Date:From;
	b=UaEHetfVdPobqzUx1I0+GT9cgNCLBM96zvzm8z6IWsJ5gowV0jj8SHX/NZd/RrQTi
	 Ja2swTSTzYVEx622Ic/DCvmFw5Y+ZkesgfMy8yHuRXYRIi0uU3aLmz6VssqdHWEcDB
	 FhTUByuDGmyJfXWyzElZfVPpFVpLYIE/nsXXw/gLJ4EvePqlCzmC32EyqC++FE9Mls
	 Azzkp9dAgWgpThehFDLtS6743GtKewrm7RliVy0Ka5esHe6hltCaLA+TlEE7+vx/PS
	 +oIdBxDrChP4HBRPvH2Z9VM+fduNtCUREpZO3VAM1rUwf8sGxBDhCi4Nt+LxtE4CLT
	 6tTDIjrVXzaMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FFAC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731132277.13695.9971446997970299587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9ef61be47e50b617bfc2c45101f0c2c3b0e6b24c66085e82d2cc920b6ee2ed
Date: Sun, 02 Jun 2024 06:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717311322
