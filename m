Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F012226CFD
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745495994; cv=none; b=ZrsfIXPzFuiLzf7b9sWE/X0IcoERXtc7EMcdgVzjuTTZP3/cSpVBHkAvRTOt7AlgCSyOqoDBAJiz9sDltOIan68Y4yozHN3IO20YynskGqsAva4lEanyCWHIdBaCdOkb+/VbRmFQRf86wol//qdfZO4RrTLhnzDX7AQNw4h9M9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745495994; c=relaxed/simple;
	bh=pAF47beAaD1mq/82dgY0kSil/tfOc+DITuWOJq7d8fw=;
	h=To:Subject:From:Message-Id:Date; b=tqM0V0GcVz8B/47Jk5wAMnanlZCeePAqbJ+IFpZaCSC4cKUIUTIBYN4Z2D5w2Sj01ZuxxdTe9GGjZ6nF3/LV51V675Zg+xDVBBEjIb5R/8w1IMO3GuySA3Xpt2Xw4R8TewwkdtJWgrr29Bwa6r6QN6iHnA0LtlGYRg0UPqPK1Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlbO73jy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlbO73jy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D999C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745495993;
	bh=pAF47beAaD1mq/82dgY0kSil/tfOc+DITuWOJq7d8fw=;
	h=To:Subject:From:Date:From;
	b=IlbO73jyi+m7MFzhBdWIXwMw01SzS3aR38vnOeKWe+pz95aVjXX64OAVXessjBZD8
	 9lvzE6kIjNaqK7m7rDmxhDqIa2PG1SK+qIStHZKAXdQ0VXHA/vLWsB7wPGQ8h8lMkD
	 dO9b+yP4KrypY3/4maoslhEiWKm3lWMJkyzJlQ04IuH8br+RtRyZydR/ZjTOldefVe
	 89N42srXljq2mK5mrSuVfxvdbE3c7fUECMm7IUfXD7dLbTsLcFc4/gF+kiu1IMTnuw
	 +8KG3PVnJWkDHjlOLXzbof59tO2ra4/4rR8gE/qaeHC5RruXT+lrur7NAn1St3ic+N
	 8tPF1biDAbjRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96EC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549599357.17288.2036589418226504661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81cf0805fd1f42ec7118a66b6193747dc91c790a10ca51ed4b5f2152b106762e
Date: Thu, 24 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745495993
