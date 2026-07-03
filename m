Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BBD1B4F09
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783101514; cv=none; b=aM+fC4TldeGnoDVl2aQ/BtyU9NLEzErzZN8nQ6I51rsiHL4ickFNd5lml9gV4VknVT1FO2xs+5fE9nVSMgjjPpzheAByBwH5WMMQD3QV3jQQq+jVzkXo0LNP+29JNNapdrOWwk0cS3hZzQz+L9kEiG9jBqrrCbW/jpf0DOjqt8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783101514; c=relaxed/simple;
	bh=sdY2DEhjSvngYKHP4whrRKDSSmtY3UkRA+Xn93/m+W8=;
	h=To:Subject:From:Message-Id:Date; b=PI6JHMQ/1LnlTmU7tGZFkmXGj/4uvpnCDvGWf+z8BOzPsy7p5/K2HGvgNcV9/G1RoHdMp+FNxrADJ3maYt6lnKYIrfa0olqGwX/OApkyi5zlRmC585iZ1z5KJoPhFCDPp+FQjdTqKdV3vsdcZNjc3VAFn3DfQZO/pNftbCfajJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3ttlQqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3ttlQqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3220C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783101513;
	bh=sdY2DEhjSvngYKHP4whrRKDSSmtY3UkRA+Xn93/m+W8=;
	h=To:Subject:From:Date:From;
	b=k3ttlQqO+aHlYjswmkp4ryGL9hbSxj6nefzHrLm3UDs5y8rZAcJgwvTuxQfyW+IuE
	 lI26QSaSDZXKMIt/FqAZeG3Bst63lXo2gcSGzv92c5D/v7KQPSh6tFRpR4Xu7tbdwW
	 re3SbbeEcRvYjWgrGQr8hvCxe2WObSS8ONjQf7FImgL51cWjw8q1jqyJ/oj25aTiL6
	 JBVhSr0jNEtF6P7vEP4ywwhDzDCe9theMXAEAawi3pKclnEphJpnZKvLBFPalg+gOy
	 7wXDTb0qpijda83QuO4BohnXcGFKWkdAva5yieOqmx3HwhDINUtRRXnNwhuaPpONOF
	 xO/i9/hGPkewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFED5C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310151368.28041.16083923745757385548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512decc59496f00040475a752840bc80ef0254cce026ab97d8415cde08ca549c
Date: Fri, 03 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783101513
