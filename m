Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E21470EB6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785342634; cv=none; b=LkFzzqaoAwFUteTE/+I5RHU+25k0LndVnP77mRzYjkj1qFf6ROozCo/7i9CY5suCKQusNWT6ACIqLACPbVr4YNvet1T+PuUbjAy90TwtMAO301hWM67gxexVU4eMcyoA2o27JtsGUc5F2eLQFQRLOe4EZfgUKZr2ZnD+wPyvHHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785342634; c=relaxed/simple;
	bh=fjNR0HIWUzRIjuUC11vtQ7uA3B3r7SSEnHUckwN96sY=;
	h=To:Subject:From:Message-Id:Date; b=GIEomscCGqmvMkeM2ijS1lrb2srTLZRvODA9xjMJCvA56+oURv8D/SSfKMkXpiNl5LUQp5ZKUGiwdfu16M71U7dfd7bvUl3QBaZL6xlgW7I9Sf/6p9fEKaZDuFBLav2kFPClARyKTpLsLZk3OM2gKRUieqkS7z8H6Z8dtlTOHIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HG8gussy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HG8gussy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD3AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785342633;
	bh=fjNR0HIWUzRIjuUC11vtQ7uA3B3r7SSEnHUckwN96sY=;
	h=To:Subject:From:Date:From;
	b=HG8gussyvzXEMDfFP2GbJa3/MQ8pkvqrZhhhnB0y3EXviz22MOE5kRFuikMeR0/wr
	 LIdovJjoNpdvvcaglDiKafNdjyzjzBuVacD2tFEEp1YfXv261rQXNzO9/fP20y9drp
	 asSrf8f3tru/Oe9d+vgEgjKFmVBahPbo+w6MO79JNN6XxdZv9WsOcUXyvCyUs69KJD
	 pELL/0GOiSEKB9Vy0gz/YYrrY16khA6C3SX86qQ0+Hh7tStO+TJResf9WH7UuC1c0p
	 lyDFBqZbGG68vmHtJlAEjZ23dTeTILgsWasQPKByckFPmT93iXg+BOOZKpLhSZaYqo
	 BAdZtRStsAIhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C77C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534263368.22424.8414833487892512288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463f946d03add4c71a1f199c4de53678ee097f6870e2aea9c6e2eecf29a987fe
Date: Wed, 29 Jul 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785342633
