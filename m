Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC65B2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726442154; cv=none; b=iI1FQ0KmkDYs9nJpQXThmPcUzn+IlM25ZbsF2M4SgXT50CwGZSPJEPV/SLctgIAKu5BiQv/RA7VkfiIToktvc0PJpCw0Lhp35tmipOj7sX8qXnASf9Fqc+iU0VlXpOTnUUOHt9qVUu9+Ixylvimo5s6isNkiLksDa6peHKw3XCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726442154; c=relaxed/simple;
	bh=f+dFduTKes+WNPl4Df5GB612TOrqt0C4hIti2CYS1mY=;
	h=To:Subject:From:Message-Id:Date; b=MxeKCbQcG7++Ri5hrsXju3rwbszlScv0s8pfpd/fJI578GN7TKBZQtvj2ygc4lGPKjLhy/IIQHF1TSOsSRR3BnBz9qHkxVALs8OPpT5nYTQv0RJ2ogetLkuIr8kBl0pEenLFozkNgDECKbnXx9c0w+0YTDkJbCd18tNy/xhKaj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erQhFQTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erQhFQTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD28AC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726442153;
	bh=f+dFduTKes+WNPl4Df5GB612TOrqt0C4hIti2CYS1mY=;
	h=To:Subject:From:Date:From;
	b=erQhFQTNQhXAyupBy11mLS5Ue85hVCOYjXQJFjHo36DGVhXQ90O604p2Ub4pIf4Fb
	 Nj6clNGvPwfnbLa5eE4ln7WDO0HKkaEY18K8GZViXg3z/oMXat5TgWtm22oTZigK51
	 wgxQzL5QVMayInNgHF/gs5My/jKlEgjWtJNrJi9YhHeMXcAwYVqARGGzFZlyQ+CJl4
	 w5Oxq8VHNARFc5K8w3yFRKupsCk1kntfadbQazurmPn/q2kRkVUQNlPAy5hALSIOLH
	 8sXbCGm3V3KNwtizLUsLfG6mDHFabagmZIe24u2Ax0enOQsz7hVIfpbZ9NLxYsJW2o
	 sYO5UmCXOMbmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7345C3ABAF
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172644215362.28848.9606318158022947729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae56f32f03bdbab3f842bcd499769d1e77cb16c455f57dd48d167773048f5ad
Date: Sun, 15 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726442153
