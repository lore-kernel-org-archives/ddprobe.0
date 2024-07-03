Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480B013B5B2
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720007123; cv=none; b=HogZK9Jsds+l1RLtG3d0ShLoSqAQbRH3wV5kl0gVQww8hH7Cii3xrDwySJVlJF1ozcuSTiDUkvfeFOXNkE/+gsaj1gllc6eDy0PgGXnTyugpweKi+mEsN1grWf5Yq9SyEgnOqxZ14ZrpADhitRE5dnXbgh8JOEma4Sxtds3u598=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720007123; c=relaxed/simple;
	bh=7zuXuhKuQofAfhzQm/IFP1avYfw1yKbGbwW4JUuburg=;
	h=To:Subject:From:Message-Id:Date; b=cLYnuwByFWdpAdkOxquRdAAgSWSNkuEy0Dz72f9RXk3gt8tcOEm6zYCf/7Se5E0gx36yZBI59RhF3j36sDsJbnkWRmZjaH83wIUBOzLvj41wvJ8YpOyzW7fjsdK5/LfbaLduV4McBlI6sHT1EvAw8QpNzX/DKIeA05KDBJhj8LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZ+i7YTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZ+i7YTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9279C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720007122;
	bh=7zuXuhKuQofAfhzQm/IFP1avYfw1yKbGbwW4JUuburg=;
	h=To:Subject:From:Date:From;
	b=PZ+i7YTa2fRkhF7jZl3JfwwGXM06d5X0yFnoNDBZaw+3p7BX2A7O+tC4zf3UyW5za
	 /QKCWLeNR/j/++M9YxRUn0rJ09cErtrJLpNZiKII2fc/Pdrc3zxUfyYo2rbWJZoHRP
	 H0P+pW96jDkJD0Hzm70DWu3gPAG5O2jBWa4S3njzo8WdxIFsDNdE3r9v5P5PvS6MlE
	 ui8C5PuWcIOfehkgMx1m5yNQKVciyPLBM3nbmHakbP8wZxz7uzloNZ2LQyFbaVmmuL
	 yg2JCibROuNH/Sc3dYR33L0XWx5ZyANLqFKrAffHb/LLdiklLKAIscdhKaDZh0T/3T
	 BWjWtijf9PqWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF767C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000712276.25095.10750825707489118595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6dce84e63ac9262bb3b0f672679b01ea34554ead047a2dfd9abc6034b224bc
Date: Wed, 03 Jul 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720007122
