Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A141382376
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776845254; cv=none; b=hMTitUuAy+5CNHajqEzHwYYwVpBGcEM8Qduj/+uZgT6e6Q6mbGRuwioqAS+zq3Hlc6A2MRBXS5aP8bHieXCfReXlsnnynTvIne9HMA73LY+QhZ9lV1DUdQLj1sdoNmn/HXPBnxx3cHQVerwESXcqnBskrDJ5kibxjQTRYnhVfVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776845254; c=relaxed/simple;
	bh=/c58tUG5AY2geTM0U16u+ebFkTThICDRyGxfZ0rtJIo=;
	h=To:Subject:From:Message-Id:Date; b=TQ4NRCDjrmJpUTJheqHIEDZXsp1/3bGo3DlcXTVdvIUd7XtBqtgEfglrKaQNmgM50jWrE4hVGCbky8nC5O/ydkorrGHMZjc0zOMbvqpFvO1TbR0WA8va42N072UuqnmRI4M/SE7opaTF4f8g9zFhxV85p00hHjTb/0sVZRdxi4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLHFL6Ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLHFL6Ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78ACC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776845253;
	bh=/c58tUG5AY2geTM0U16u+ebFkTThICDRyGxfZ0rtJIo=;
	h=To:Subject:From:Date:From;
	b=iLHFL6IbXn5xpCzNvJlrJcLT6WohVswVDP6+82ByFNnnCUOuiMlPivIstlQOeIqsH
	 ZLfKy68y7no2wjp/axUW1qdDFqHJj2NuS893weQJGvpUP26cPSsH4SONnvagsq7DFR
	 YVrZ3Jep+qE9aZCG/fDE2n+3sJbO/XGVYUd/y9HFiCrXREyeJEbz0qAabgujv3gMOP
	 4nRFPZUr8Ml0trCyGnguNBLF0Fqzn3JTMkTNz3gYp0vxUjxZCxAeg+JY2Z0rikyxoq
	 Pe8mBdtO4RMdBrcHwicx7niXEcZD+vu14c0Z1qakcMve6gYXjGi/0i8OTwZc2C0d6g
	 Xl0YAgq0gGmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA73AF94CDC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684525368.31966.13839696712609479819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a810d9ad978f80f904da639cf34faa19b002febd0a7d1bf28f10fdc6bd608e
Date: Wed, 22 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776845253
