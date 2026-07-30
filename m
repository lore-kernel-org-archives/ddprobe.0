Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627CC20468E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785450634; cv=none; b=RFR/6FTuuqlhcx41cOUu+tG0ph6qWuTJdmxw6J5EI48r/UvXVtSivPaFXdDYyjE8ErNPEA7iZ7Anorw2lsTF1NVVwNxe374/m0c/vDRdxFWFabLJtEu9IFjdpDwMoF+WIniPdObuw7gzP+3U7TdxxWY1zc9JodPOmEvdp3yhdKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785450634; c=relaxed/simple;
	bh=9PvySBGbO50VyUJ2o8f8s1FUdobaPFALbtSnM47lGQE=;
	h=To:Subject:From:Message-Id:Date; b=ClGLNAro2I6LPWxISVwr2FMbfgbaLHcG0OxfZgXCdfyfKQXBkYD8T/5NhdG6Gwwzgbye4+8N3l5wiDqbXfC0lWhQ8hh5b2TfkXLThac8yOwSzc4TcT7tj/4tmtFPJR8eBAp42I0lBUw/l89NkKImqSM/QuMgnKvr2w25Mrad2wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h28gCd7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h28gCd7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD411C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785450633;
	bh=9PvySBGbO50VyUJ2o8f8s1FUdobaPFALbtSnM47lGQE=;
	h=To:Subject:From:Date:From;
	b=h28gCd7yXLppZj1A13sp7zyBXsYy7zr56Xv+UJuDM66b0eAOrspTfF5qmcmqnpjYa
	 7sJqg0IgBYIk7XYcCrKT/yB3fZQBTUeJOQWkY5OxFeBxmNUj0hEoqJ7W5rPS44Djwg
	 m5C4DMlyHlPOe1qiy9ZDCl7kBpplnjdf2lCaU8SkjN4hEbGzcvAQiMbEPVRKljn7Zo
	 NU74nxQ6y419i4NZWPMKVTbicqKzcwxgcutCLxjmL6Zv0emweMZNNUmdIZgnLCXbqG
	 P+s0tkZOxJm5WzUbkcF7AweCaZQBu/wOPXWKxXp4fxkwpUQ8KbI9eE3QkmqD1kDPG8
	 kVyrZW5WNgR6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A901DC55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545063368.10485.12920896651161132848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7e23fa90262a183934abf654aef00de88565dc424ad867d7ca953231ac945d
Date: Thu, 30 Jul 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785450633
