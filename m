Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3469D190664
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753337994; cv=none; b=rkg0AGIMtMDdA+0NAckriUwwtia9mFR3f+ljzUSa1id2g9TivUnel2jE37i9xMHU4MNzP+ytvdfbFbB+WbwQSdlNmTnMMnpIRlzNLVPCNW+VlYXzBuumhWU4M5WNbtmXbsp8a6tctv8KrvjES5z+mBDallO2ogNAJ/CIqjfcu2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753337994; c=relaxed/simple;
	bh=5EGtCUlYgWph6e1r7FKx0jX+fZ+X105eW4VbKQKsch4=;
	h=To:Subject:From:Message-Id:Date; b=oAjpEz2bwQ30857EtROgX5/Q0ddpmw6uJYfWf0dZxZ0hCYr23qMIzL+odWPFuaN5ROKsdRMIrIEdSxWbmHuPJIlpwCgwncaGRQiLLXhej/jVpdBIeUAsOyuwM4PQs5G4WG2hNsKIbz8p5PgoQU65AvrKCJgA9Wqx3bWhRX9KSlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmvndB2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmvndB2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1C8C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753337993;
	bh=5EGtCUlYgWph6e1r7FKx0jX+fZ+X105eW4VbKQKsch4=;
	h=To:Subject:From:Date:From;
	b=AmvndB2tUi7oY+HqGjkTZwtxZ6hb9qcHcG3HlrF8D//LpMLVYgNBuRZW7VdCq7nep
	 hMwnsBxCPW9I8mCKFQE5D/+W3/A3qrqA8t6NflD6rtbYydZrgsVBWTiI3VgDK/nNIh
	 VOQ5xNj+WwIYw4wkU4EiFGDMWM4lgUTFxxCDIesh8wCSbKsWmPRL1Aydf4zGvap0EN
	 ANs2T28xX8/GDVHXQGbbuySLlv03ne0FXgzaxKRMf8E89lrwZoQh5/qtjoTMVB5vIf
	 KzhPM35aBQjNHvt+q8+4b6L+Rsn/6Aeyjr2eACO9MoD7uClXVf8IWYMzI/9MCL1MeJ
	 ebB/vTI1AVlhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F88FC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333799357.30702.4983114313704172876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a592725569c6eb155b44f7fcac38afbb290d445658236b94861085690579a272
Date: Thu, 24 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753337993
