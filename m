Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA8D25782D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764919378; cv=none; b=O5CgbqQ0WL9h/UoKZAvSqK2c2r+UbcTEYTI+yOfM+Z4sce33iXw/gtvpZfNqxtEEIIqmUirnUozHF0kBdtm4lloXG9Nc4O3ElKDLGDV/02+ttW1ZfqDv5ZVzMpCQByvAau8drRGLSMUgPH1Hldqu3aGvJyGkDBmKH9TB/6PRmI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764919378; c=relaxed/simple;
	bh=/YrHRCrun7XWBEBwkdG1xmsuXb1sPSM4Ozdo5lTdDUM=;
	h=To:Subject:From:Message-Id:Date; b=lwolfEy0FJSpWP2DrCyTLTPQTmJjUQZTWpCYqu1lSI0BQK/LUn2xICUjIAZEEg+IbiU1J/dZmLXxprYNVNfP+zfBGyqmfeBjuxWa2EKA8L09oU17CepexhB5zGr7kGwIbRznLgokvB5jWthwCOSkyih4dYy1aKamT9pYdjmWULY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7IVDa6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7IVDa6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3181C32781
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764919373;
	bh=/YrHRCrun7XWBEBwkdG1xmsuXb1sPSM4Ozdo5lTdDUM=;
	h=To:Subject:From:Date:From;
	b=p7IVDa6htimF75fVdZHi2h0DmLs85XpFQdgkz5hZZdEZBE1tRaNIJOHMsR1JzsySm
	 6vXdOUK3bMd3bOwdDPq+3/GIbZlQB8y5++Uy0zO4M4VW7InYwXoEpnG8rIex/ZyaVP
	 Y4DM2GxjXoAL0r4RfHmrLdtZy49VOfbPTc6a4VyFJm9gRn6Bf20Tuy65HfK7dNYIX8
	 Ad3AVhRnIsUug77S8yl2QNsZQ9y1eHlpdK83billy36dZ8jqehRrDMOPZNRV+S9Vj5
	 frj1wM+vR5krR+bEq0AkUEZ2JCXidx9p645lVfs3AQWVyzI/GXGwiqd2UPilQ9pbBc
	 kJd8F9uBxJc5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94898D2E016
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491937359.9901.15031105381861074287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015a68bbbd9987a9a0e23aa49a617d8f07d3d856008cc07f919ad57ab4b7617c
Date: Fri, 05 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764919373
