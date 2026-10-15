Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C06757F73F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792094434; cv=none; b=YyfmTClaBM1bU2UdkfuOo6G8SeAtXKjTnpAJKi3JQTtlBTYy+Qi/ItpYcJs4g9tUEd7kNWGzwDbqRyEmsHQz2IlbUXq7qH7YTSGo1ZAjU+JBzaEgj7mq958FF64XgxEuEEXWoZFHOs0GMmje89Uh5Ue/KRxk52g7/5k3lAU6BaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792094434; c=relaxed/simple;
	bh=WhTe9MuBsK+n0Nobp0ncZTJNTQWriuCTCTGfxO7eIJw=;
	h=To:Subject:From:Message-Id:Date; b=XSSGjev3JS6FQexP6Io9i8T8/LBC1RD/2HH7PdW3bA2/Bhqwf+ZsokENRxW2uzhv4AC+K4fSGXNM85DlXf8owTPERC5MRmeLHaoutFhsZcu5b1u8C9i/ZQf4h3DLXigCWP/oYMrsg/ooXM6QTHiMAQlx5+96E2LCj4Dr/xLIv9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dq34kBUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dq34kBUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792094433;
	bh=WhTe9MuBsK+n0Nobp0ncZTJNTQWriuCTCTGfxO7eIJw=;
	h=To:Subject:From:Date:From;
	b=dq34kBUKXXBB48n0KO3o2bInhh0SV4cFWS4QPPlQkBwBjIycy9ucAXz0VQhu4p2Fd
	 LhOqiW50z+u0Q8nBa1V0Mh48jp2pE8lV50gNX6FjpSJKSpqpC+4//oGnZ/Z+XHL6sF
	 7fFDFIuFW0v2ZC/nmoSyVEj0H9RKPcYXtayNr/jaApQVX5N2+vYRjTBecMiVoqDnc4
	 IsXvab65DTSh1MgyhesNRQ/hc+8kGbrjAjWZ+yX+gVjUKa+4W9nior60yivfSyeXCX
	 CNiaLU2EY3CvZtLErt2oa8ogdbrj3Qkj09SatNpmoCBzl6TX4bjmXjYnmv/8BwOyPs
	 33mU7zzyiZd6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E3CCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209443368.12508.2508776691042672707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec5dfe5b365ec21d25cbdc3eb6f336ae364e9bc61081e1f1710d13b369f72e8
Date: Thu, 15 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792094433
