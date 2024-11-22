Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A2E3C2F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732253154; cv=none; b=LmuYPhuS2hk/D3luiBSR4LloqNNNFf/jwT8xgolgUysFaTMos7p/iqOsZqKKgD48uAqQt+cYxsM6mMRQDAUyel6/zPMYPIWjLviMcPCS7xI3ewCGfLEZCsspdgksC+ZvC4tjIT55t1hUhcoXC+QBCg6yV0/hYbkPdZM9DNpHEL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732253154; c=relaxed/simple;
	bh=QRik6CFM823/Smd5ZohKaS0rIEaT0a/QUM/rBASUGgU=;
	h=To:Subject:From:Message-Id:Date; b=VBrua1NgpsVFqRZYV2fEIAhGYesSl/hUqf1KHoGn2Ms37e3yv1r2Q9cA/RlQKA9p56cTz2bhttHbzjbUSlKgyhHg9NByowmTPXyH10tYvagJQzwOT0N4hV5KcjO+sZIZW7fPHW9dSgzZDhTxZNsXdxolIdc33ULUVJdgHWCrVGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4gm2c2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4gm2c2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE813C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732253153;
	bh=QRik6CFM823/Smd5ZohKaS0rIEaT0a/QUM/rBASUGgU=;
	h=To:Subject:From:Date:From;
	b=o4gm2c2mK7sW1IkFyXzoTi7wmY5hJhDo/7MoFBETdHPGBf2Vg4/986YDppKq9AVKM
	 HxH5eDXgbt0cKqfA8sPynb49mOXjSjCjcLt/YzGY1/gglnunxqCHbd/krmfC0UtL/c
	 fhz7mipuuM7lEykd2oqGJ8+xRDaLcDMYiOheD6ekGwIu4B04d9TYF46VJsVkZx6dfn
	 rCROEOLdCJOABiZiCsTjTRUkOTQOq/RwnGQyuwBoLNtOYokjigemGBHCm3l95Du3f1
	 G/WYSqXUY0pVdwlabrURrZotTorhwjI5vZC3TntRXaZFFXTsuWcGxRlbmJUWu5R8bZ
	 eT1ekj7WZJfJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ABEE65D29
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173225315359.5198.16180825224684263634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a470c9103a3a6b296a961c60dd290b167e60b98a55d5a7dc06cfd0833e85e87d
Date: Fri, 22 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732253153
