Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1A42EAD15
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760882394; cv=none; b=lNt1bekJluzuIfaqAkbR1nExD1OjcKql+CrH03VWxPpTDps1ScBwUSQ45qFncpNksfL3hvItgpHcJAeyvcX8DYlaD7J71yLeo5Hf8MhToMNPEIfD0F5e0OSFw7vTtaAeS0Nb3PVvcBHKytkb0vHIF2iA8DQRTDOC4uo6j25fwpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760882394; c=relaxed/simple;
	bh=upR7hMIgZFfzcXcbOXpNFDkixIqksQlsnRhmgrql2Uo=;
	h=To:Subject:From:Message-Id:Date; b=B8O+xfi6j6Z1D+IOA4FGvPyrHzBlcUPSFdH+eNfFLJX5mbY1ZKCjtVdaHky5/qywKk0FB7xPEcvrS5ITlzFZH1M50SmVLcULb7elAh8IolrY+f4XM8jGRiJX2H2wIgbbcNYgo2Ucxs4DAToudI4J67D9YWsgbiaNBkTNfy6FBEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIU7wPh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIU7wPh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74ADC116C6
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760882393;
	bh=upR7hMIgZFfzcXcbOXpNFDkixIqksQlsnRhmgrql2Uo=;
	h=To:Subject:From:Date:From;
	b=CIU7wPh5FAnUc8XGuAFjKswwIRVuRDx5yRhsIivTRHdhHDrunvqc4FTPCMaJBWO8S
	 Ju2nnP2tdNAYa1AW7os3xO5TYRqXNwHspaJkOYmytLeHB56PNQRuo4V6XVtGOgtQIx
	 dLeFO9Tdx91vZOoDfRHTHfhepNACA1FYPjyueFlBO6cLAWMGPLi9pdAE5Tiud834m9
	 iTCQLITDcpqCSTys1Lw6U2Rr1WJk93mvifFtUEQYllsBCnvv8S2qMsGtzQmpkBGRH7
	 wETDct0Dl9CgXI6GtMmSIHsI24VmLUQ8MFl+WIwuX4FGfp13d8rkCtAJ67zZ82qXRn
	 cBp2vcsxo1sQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE5CCD1A4
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088239358.27540.12955414189945623365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c49e71a9424b2d06efeb74c8b69e0fd8ba11682ebea909aca4359387df43235
Date: Sun, 19 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760882393
