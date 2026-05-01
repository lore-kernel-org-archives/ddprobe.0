Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1737619DF55
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777600054; cv=none; b=HAXj3bsOuHRaEK/8qw+LRHI1ny/PUOXw0V2ov2N4tf36ElaPYgmJ9fU496EGAUgw8Jca77VQH5WRtUUBmQjuLWZjPyR0OC8ZQks0U771CNAvSXKUCQM5HIGxDmW5iXbOvQskh0gdSLrOvNRI9ab+4Im6WWy+OfDW1tnbwZkJO0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777600054; c=relaxed/simple;
	bh=ikJDHrfGvRRHBfdjQSuBhxx/fOqpPZNjVM0KRuRlOcY=;
	h=To:Subject:From:Message-Id:Date; b=D0+1YjlIF8Xowcoz8DpHPGtkX+aZzd3fP9dFk/4WevzcCtYM65X5U31OrQbIlKWeVIWPBmIFsuBNmUANoOlTdjuqoLlkmHJFsiJ6O9kWCuHff34xhCETBeW98CFWKLjkPJ1WyNsFLAWPKIZRLoqMerlwe0KGq7cJrwZrtP7oyso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUGBhvyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUGBhvyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE219C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777600053;
	bh=ikJDHrfGvRRHBfdjQSuBhxx/fOqpPZNjVM0KRuRlOcY=;
	h=To:Subject:From:Date:From;
	b=hUGBhvyrg+p/Hhqj2iOKFY8NdV77Acs3srQ8oJ8zxzCBq6PSrTRi3jHFbGSYKZQeN
	 6w8F9imzmmEASjK4Zjex/8N6I+p4EQckR0IHa1nu0gm8nLbUP4c0/Krw4+CGjR/9U0
	 L1qZUjj4SMEMQsT9DV/IhXHt7qp4P24+BC3c77d7Xnc25Pn9AsiXUq5b7IUjmxo1k+
	 YCgiXzdn0BP0Ju4eo+F+XYO5JpT0EIJNQeAW6/JvxNMRMZ68GnAvYTkKpGDbWhcp7F
	 WTHp9JAvjv9bVeeTcmZeRB6TRXTyQq8WDQIzkgiEVQ6yXlqq+8iqErKn+0DE8+o3dO
	 CUDv5fQ132F9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9B5CD13DE
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760005368.7270.4241348906027954922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3409c490e19a40e581e0545cbe85c038ac445ba258c370de21184a2d6a419a
Date: Fri, 01 May 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777600053
