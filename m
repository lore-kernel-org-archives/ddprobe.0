Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F1A224B15
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765552374; cv=none; b=XT9oZdfvQSnTXHdHGooZU6BfFB/Kd8fEOg+QJkk0VFWEeWDHOCCwq4xDl+x0uT04t8yid2lm/aOOq2BoHEoIoymE9tRPARpDY/NM7wYpv/dpSe2tFhRDT+DPD5IHfY+0FPlBJHY6noDqzzvrCOnlm+KRpfbcPK/y5AWWbF6BOc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765552374; c=relaxed/simple;
	bh=vJcJlQ8/ZCtjcCbSIhxEzLh1PTQbfgktzwOt6y/6pSs=;
	h=To:Subject:From:Message-Id:Date; b=cleRglT2SlSwBupIuR1ow3z3iAdph+xnGLkjNLMoQMtWC2Sz8L6y02OinirdyFeBp05H1cDJgJLdDQ8F6eXAocCBZa+E7FLouEr5y2si/Yph2muBn5fii+Iaoz4Bd9kit8Z2Pc37TZmSTB+YLTjBwyyci9rpd8ax3DoVBPSGcXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTloL/DQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTloL/DQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A172FC113D0
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765552373;
	bh=vJcJlQ8/ZCtjcCbSIhxEzLh1PTQbfgktzwOt6y/6pSs=;
	h=To:Subject:From:Date:From;
	b=oTloL/DQUxfYkikFXHomjGVIoQ3/sm82yTcCO7UG47/Xd198sLcyDVfdOfBLYZSg7
	 BSrAPLIsRVEiLYyCayGuy/kvMWwCkBB8J2C/1JZ9g6eN2xZi/CGlIV+sx7l20gRSmn
	 bgTEuJWfzop+W4ojfql6VWj1kneO/1Tyg0OnvxdHYoTYYcLwE7MhZPFljG+sc0KpR4
	 g1BKaSz+EJIfmIB6Kj0d3HEG9wQeY51FVfDJSmPVrWU0z5VQmduOuVrCeNWZDHLn+f
	 2OdebSgvYOM7BXqkpJhN913JyqsVN8gPlahHq+b7fZptfVvSSNM/ftqy4tvFaYBQVe
	 hoz/9FOLAHAvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D9D49236
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555237358.5228.16059814493127740197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c61b5ac9c08f420438cd1ce9761f99f51b7a06d47d33e8f3e69f10db70e9eb2
Date: Fri, 12 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765552373
