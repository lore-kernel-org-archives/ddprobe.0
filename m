Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1F23085A2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750270193; cv=none; b=Ea/f5bWr2xxL2JzTRmZs4PFWeNChlOtfZHWmLVeSXYUd9MEhEGg/076+4mo3BwKLP98iqx6+fGUpgNiMB9PPX+lmbR8dMtsvMDTVgud9fDmcssbB1CvrDDg0iL5zQYX30V1hOjFKEqqu+zfcAmymW1sHOCYLOIUJtQ9e3T6u3GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750270193; c=relaxed/simple;
	bh=PX5LIR8s9x4lJj8cIMq/Z2cD5dH6lsTrIXenSx/IxtQ=;
	h=To:Subject:From:Message-Id:Date; b=nfyoV3Rfw0TZMxSnZsjnLaygmuZwxe5ko7qXMqfptlOeMxTURFYSqlpajOmDCod5qYJ11YA7tNALXkJZcUrrKf8T7oi+M1rQNaTctKomQhR5zFkveEQVfd1YKwROdf3gamFIStSxzYyz1e7DkFQd78b+hRp6umeMbs0as7NW2L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMDTvCKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMDTvCKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2133C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750270193;
	bh=PX5LIR8s9x4lJj8cIMq/Z2cD5dH6lsTrIXenSx/IxtQ=;
	h=To:Subject:From:Date:From;
	b=bMDTvCKB5N32mzmqHwvnLHSowTPA6WwihFt8wZ2jWNe6WGfJMV+2di8m+xiuAL2Fh
	 pGm6NYGTviVcvJKW6RI3cLdOAOt4qKZSSvav/FY91rWuIpfLdVDZkAZueJx5EDg5Bo
	 BsohGTZ79+zKPTU8yYm4L6pucxD9FvvCpE5Is0L1EeKUfhf9cYB3CRZycPwzcd+cTm
	 oGzgqx7pD4GsGt3Tpsa5Myd9RQ0RZCzbqUe2EvgyLtcY40tmt0EgvyscmxXaNkTxxR
	 6Vlw0I7y8Y5+4nCRfTa7HR1HINWFJM2S205q0QhEjd0A47Den/esmi6sBde7fEGq68
	 kAgfHS7pyuRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDFC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027019358.20930.10642252247723146462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff1dd6c904a33c6f60a300f4c86a46475db78a5a1b059888d106ecb2f71e42b
Date: Wed, 18 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750270193
