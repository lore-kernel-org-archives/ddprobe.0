Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D72612C81F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720601183; cv=none; b=iAt0oHo1OtOi3ZvfU510HauJodEs+VeSColO8IFY+OD2jD/Q0xAzRPvcQ9tj/R1yQ7qagv5GaYw9ZvIu2SL+frlE1r+qsfknqIjvzGirg6eGsexsx9aodmDL24uOglN2H5O1pNBAGChf6u0vOOVJAnCEEYsjXX7ah6xx4GDZlk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720601183; c=relaxed/simple;
	bh=JRr8x+Q9rI/nbnU4jCBkYqpW+BdA5aHNVEg0EefXSU4=;
	h=To:Subject:From:Message-Id:Date; b=BlHhWQ41jNr9lepanN/DUGT8Tb9YLYrP7ajJFEsutLdqMqVfYr00hK/+8C3Tyetq6evjAsbJB4703ao0cvRawx7wgcuBKrbhbYkDS2S6Sfiz3KmrDA78BREe52DbB4b5m/8lDJm1JG2dE/fSh1cy9SC3Cd8TjxQfdHP7roGE4kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuMnYNM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuMnYNM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE958C32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720601182;
	bh=JRr8x+Q9rI/nbnU4jCBkYqpW+BdA5aHNVEg0EefXSU4=;
	h=To:Subject:From:Date:From;
	b=HuMnYNM281p20B9aBZrjrdQc4ocOcpp3JSeGiBA1CaRPS0/GPOQdjnWPHMZ41b1NH
	 0aeJJ2MsNnQKl0uzBqeg37U94Yq4X8JE4a7uJX3htxtvADX+duB8cM4qchXQU/09cp
	 iYkPRm2Dzt3SeO3atVx+QYv1mO90bom9WiIDrDZe1AHA9i3ZbsVrHSvD3lZxeZBwbs
	 SWuz1hOkpSSaDli8PMOsGnuAvGDzLXvMOPexML/V6fE5718x5OdzLTURlehJvAnNa8
	 CDRiBGrJHNHen8j6ao9KiOnQfkykJXYmki/gBfjHd6RkdvQp3Ycw6TZ6Cc6Qu0r+ot
	 3RvhmdcHGEVfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B2DC3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060118279.21379.11135529472916656093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8993b5b76e8cae6e6a4352f46de1a6f3bb4dbe812703727b54080bfd77ae4e30
Date: Wed, 10 Jul 2024 08:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720601182
