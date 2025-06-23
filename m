Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA4C17D7
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750643394; cv=none; b=Oq/N+9K3sRouusLH2ii76wsP9XFNQAR43w4Z3sDVRLCwymT15IeBEAoasbhRiCXSl3bnHlP+HD8M8nlv9q+S/L0prGFKlVJK/2iCtIbSroN1CR33q6QkHxaf3EOU0xRxyNN26kWacRJgkTAjWNQyuMbdrnEWjzuRW+rOL9xTPPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750643394; c=relaxed/simple;
	bh=mUTPzA1EvW27wZx3MaAfHw382sYd+vtLk3z+7M7pz+0=;
	h=To:Subject:From:Message-Id:Date; b=gGk6+w5ApJxmf/aW4anGXeMQWou7C62nMA25QV1uhrivPHnm325jBU23g+KrpCvRlX6Eb33FEtssL1mD5iaQ67JJMkXD4CqVi9m8H/ggBMbRvqVOqF6kAG79+vmQsiYBfjfOBp6IyN2Dxhf7rMm791tdVjoK1KAbdzSIicpLC44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEI+Yw7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEI+Yw7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC5C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750643393;
	bh=mUTPzA1EvW27wZx3MaAfHw382sYd+vtLk3z+7M7pz+0=;
	h=To:Subject:From:Date:From;
	b=gEI+Yw7T7i5gm9xCWzWEfW3y+z6ZpXWCG5nTbysS+d8opub+q6/xq4zBrKPMyYUjZ
	 pmL2Flf2MujpnJ+s4Ztc5hknG691NIz1Qj8S5xHKXmfzyUN1dKLlXjVpdGOswk2WTm
	 gxOUjeFR+hCu8eTH5P5f2QtXgPMel1hBledg0MSWfBjOhpOxacj9PU8C8T9HXkqd0j
	 dRYT7BSKyGPmQGI7uLRelsNwzjVVZJG6qiJRBB7eoRCdQ3fIxtK2Eyry1ZYhW0N/oY
	 RUj1QCiUZXTLELu+bYfiWMpMhk686feby2uNqW+5cYz62LzHQJ7OHeXaiaWBFCTXes
	 CfT+9kDoAA2ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E3C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064339358.20372.8222186332412923957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679efd44ac7e6144a54cbb9f239080ee0d0bb54aa9150d7bd71f86bd5525d0e5
Date: Mon, 23 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750643393
