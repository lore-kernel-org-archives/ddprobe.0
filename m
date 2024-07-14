Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756501CABB
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720947023; cv=none; b=huoPG0UqNGadfy0+co5pxZpRcTxlP2Q12uzQAc8IdIl5BAb7Y68ErjdBuYSKw9+ptgE6sa3VA+Tub8m7HlDn05+GJR/2DbiREotc5eS9SFxBpdlz99UJ3LE5rehpRIss0SF64IY4xGSkaAV7iVljuRezFHkKOCYY/NQ5vsnsK6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720947023; c=relaxed/simple;
	bh=hgX5X3c4rU8WWabYpxLZrCYpIloMTTULKH3r3kutt3w=;
	h=To:Subject:From:Message-Id:Date; b=dVRriFoV/OJdfozAafLw0sRsGzsvzw56FsZ+rt+ZFKsNMWU5895HP7xOYagDMSCvX6NdxxIitSzA1Vdxs5iQJfv/XfZPo5M60NC4/NWjmXN0ZwT3ATimOYr0Xq96xNCtZPcgMQHQMJ6NO4C/uXb/qLEA3MtxCWSI+BAPfShE2tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3Ap6OuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3Ap6OuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93F6C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720947022;
	bh=hgX5X3c4rU8WWabYpxLZrCYpIloMTTULKH3r3kutt3w=;
	h=To:Subject:From:Date:From;
	b=A3Ap6OuT6FCJrsaRsBLeF4HFfYycSbjR8Q1u4uUqKsMcYKJQuULNztx34YRRLp4Av
	 KYF+khKZB8jDDbIyaqkAk5ApJQGScCvHDET3x1oBWHBVSd4n5W3Ks8gZW2KecKKY/q
	 qLDrWUxrLdNc22wXbKSwIMkGOj8mbjqEIpn6uGEzHIw6ncftrk1N8lq6Ty4oDysVb4
	 JCoVuEAcHjz9nJUWYbN33ypmoyUQdMgh9kX4QFVSUCVth6wXO8sNj9Iwn6P4XE7eOF
	 jQUsosS1ykAg2/lYJSD2ogdSPjOYMGEruGnMbIubuZFehCiUWO8DVUcndDMIHaBpFM
	 O4Xmc7ELQBNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5620C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094702276.24780.4953163296390794334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd42907e1da624ae07c9d284913a4ab9b863a701bd9ac2ab6ba110cd6f79224
Date: Sun, 14 Jul 2024 08:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720947022
