Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3297238F624
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774889094; cv=none; b=rFB2YiFfcqXCyqfkMHv+KdR4MyArgNqCe7J9aUaut2VvqNIloEYCDjlRlcsw2sXQ9Q3Ik2GCWo5SW/jrnnH+umx83dhnwHbIPcLYH1nqgK7/QkPU6BLPPxzoX+6FsVan6f+8/oOVLtl+lMzysNmsPO2UMiuQy5kKHqjC3F677x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774889094; c=relaxed/simple;
	bh=poHcP6kXUScodTteKuxKljIEXhyW03vRLi7RLNJ0ubs=;
	h=To:Subject:From:Message-Id:Date; b=dI/njdGCVlcZSaD6+8ZUsegi1j12A1YN5R/5jFhYzO4bXi2C4aN9/oR94m7MdUIDfLxz7s+dNLWyR83xDgHP9v+ibE4koGduG0AsbcaJMSs9dkh7joteBK3GOGxmR8jdji3qzNVKtK8iWkadJnWOKDykL/X34U0vNIrTsDo8uWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3hrTVp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3hrTVp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608DC2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774889093;
	bh=poHcP6kXUScodTteKuxKljIEXhyW03vRLi7RLNJ0ubs=;
	h=To:Subject:From:Date:From;
	b=R3hrTVp0KYnHMANO1NvVuE/PCA53W4OZ5JvdFM6IyL6UOTP+AAQlY7RBhd+21dSzU
	 eFwFxPf3j7NJD8NyoxPEoT2d9qUeUEbs8YaOwrmG/ddfbP28jw448RFbr6UJ+bshJb
	 HbwpRPiBrIfwnpclmGTXoEvC69RCxissnm7i/tjIC6VHGJIw8pTsJHF0kkC7TF0bMl
	 7vHVmtqm6+OTGu+mnVijh/RUplMswDCiCqRZkX66DLnRc4KUUZTOBluRfvy1v5m42N
	 MWLSv7ZpvExQPV01bsg8P9DrLQlhhMNsHTslr8u/hB0KRdlOJUaWyAO1o9U28K7bD4
	 a6ktMfZHXqWYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962911061B17
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488909359.22738.7536039138391563129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981b261dc95da68a4d130a168b247a9d53126efe2b0b53cb0f623e451a5a3335
Date: Mon, 30 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774889093
