Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E482355F49
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784731114; cv=none; b=Xr2umj3BQsAUHeBITAbuvwzYbxyHWgC7kmJ1ahDrvz3488bZkikgREM+MgIynW6Ee6jAx1C6f8FQtAGf7VbzO5qJdYO7fCqfszDn6Hw9bbHCLpizOOhFUcTf4b+b6/QSPT7Voa4EE2s+5K/D07bttpq0VmO6RH58KXqEQPLXT3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784731114; c=relaxed/simple;
	bh=im6d9WeJDd0eooq1sgup2ezvI1Wnlcx//ckCwyxZlZg=;
	h=To:Subject:From:Message-Id:Date; b=UA1J2mETfhKk2arSQIcNYd1cp4v/Cf8UZ20rXhiNwdVSYXFnscdn1wLUORcQ7rg1MsfPuR+MxvD0MjcYUnmiIVyLFksWeFGp4nKxz/YI7BovK4xqZvqgci1+ErSff5OLQxuImYbpp1jecaeY9vbk4Ao79SG9ySS1oGHy1mxb138=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcbOt0ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcbOt0ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00EDC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784731113;
	bh=im6d9WeJDd0eooq1sgup2ezvI1Wnlcx//ckCwyxZlZg=;
	h=To:Subject:From:Date:From;
	b=OcbOt0ihFR+rxtx68ku5FtY743cgEtXZmtlkYahj3Fg3NHdsX7m8dG9sCpqKGSDt/
	 nzqsb57tLGuasxqGFe96nDeuBV86XPvwVPY0GGlLenrG5ceMbIQk8DwCylZK/Uq7i0
	 VQ0v1ZlqihkvaWS1CizbT5uIxEAF+kaKgU9PU3uxvCzNwayTpX/rpGl6xXEGlYnRZA
	 Dc6xhFI45Izdj3WWamI2i73OmWY+eimUoZVSBdCT4ObfDp2Z3r0kO/KLrzRcaqgA9x
	 s3A7bp8wDhN0ZC7In+QNiyz/GxDMxkUGNivsPzaVeieRoD35vbJBhH6AcEjKBT/BUR
	 omhtnNyoDPkGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D8BC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473111374.6351.2181277787665677656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3dd14ee726ba1ea35a15b3a63d04d100e3d188fe4b87680d8cec6101de1991e
Date: Wed, 22 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784731113
