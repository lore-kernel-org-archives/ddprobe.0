Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1BE1F419F
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765268574; cv=none; b=L/IpaqKTMCiZrVP4H/73F0ukjkwumhUDKI88opjCtBSI/iDKAR9nnMPvb6FL/BoR/p7QC5j0QflJLojpsi/fLm01Y/H16SrbvUeMcKhVIo4j/nTGfi1v308qzJBMYRIkPwgIiArwsLFN41mW6u7tmJ/pQQ7wV8AAqAqKRVx4Ph4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765268574; c=relaxed/simple;
	bh=dImsiEtGHogBN13Wf05dwAQwd2FTODXPeA5wwzkfkVM=;
	h=To:Subject:From:Message-Id:Date; b=tz4bivk7B5HUyRNaUpZ1OufVeZJJwEQuRPxtHak6636Zmbss2Fkax80mjavyZaoXCq+JYrH8kVgh2i7+7tOORWfbT14GVpoxa/YzAXvwkawe/dqePeTG2z84m3z9OWfWPpTw110JaNg6N80iq0jRfbFnTL2JDBSNqiZ6uue7L9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdc2w3K+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdc2w3K+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4D2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765268573;
	bh=dImsiEtGHogBN13Wf05dwAQwd2FTODXPeA5wwzkfkVM=;
	h=To:Subject:From:Date:From;
	b=Bdc2w3K+uw2mXQbtSZBPeFDloNToLHH9L6pxRe2EgMsV0J+chXmmQdVR8ohjQOCSB
	 aCmN6qTh00S7+N7qnhfC2mR1fdIbK5VIOu1Ux8cxr+sLN3I/7W08Dl9IcWfDhTcbOl
	 x8l6Mx5EecvqH77n7fBcWTAvsheaTyEWrVCAl3ntDzJE0vjhR/yEH8R2eA56a7o+2V
	 FXOtiMwq3ci6ZUNRRPt6w0DRUaoeGWFA9/MFYF+pdsqpRDWGmmgDmkzLKmFI/V2htu
	 g/QN7lRhmkGB54hXma7pVQN7oiPato+JQCZHuJp0bRITw3ICZboQERik1b96QaMp09
	 qQ2s3dCAnk9BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7F8D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526857360.414.4998788173418320007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb6fe8fe4727973d713d9b93dc31c3260fb949f5720f8718590d33cec32fb8d
Date: Tue, 09 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765268573
