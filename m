Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493DD4CB37
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719604463; cv=none; b=H9VbOiUi5xb6cOWtyeRh2vQdAzQSm8j8jNoBNp6F0vy1xvOVe5QvP2HbEpnGEckggvTktBsGZIPWBOyu77zrrwuNBuCq9cOIkUOPqJ1dw4TA4MC7K5CcHdpLsB6xfr0LWY6bNztvwA5NMAu6/ezqdFMZbD/2WeQul/8McmLPJ9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719604463; c=relaxed/simple;
	bh=tV290z1QI8m1YJq6GEsIyW++PBYiqC2gyGpZV23drmY=;
	h=To:Subject:From:Message-Id:Date; b=heCIHLhVbN7wLM+jAv/hyUlGJr5YvR56EjYdZapK3DUgJzrWELVlMeDMolqqtwxKU4A7kk4Jjf1qJbgHcbEQerudsKDKAHFEyguw9ntKuwJ70ZVdma43RM4f89cT+13pQqYq0AqfH4ipZFL5pPihSLYoX+N2ETfrDsqrf40qj4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ke6I3g2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ke6I3g2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB246C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719604462;
	bh=tV290z1QI8m1YJq6GEsIyW++PBYiqC2gyGpZV23drmY=;
	h=To:Subject:From:Date:From;
	b=Ke6I3g2lufSkwcdiPcLMnBi8rmy39Sfab9KapHXBJ9O9hccJK1qOvAhsmNCVdqKpY
	 +hKAodEebVMMSZUT0i8pxLo4G+8/m1Ef3LLevhaeauX7zPQqD/cAvKEbHjI7HvB+ED
	 jbpjAuIVR2q+RVrSZlce1B31ACA1Vs2Z9G5C2NL85QPBrPiY53agVi6sfMGY27P9P2
	 GKfd+jQeZCNTNFfyyWe0L3WEhF45XYCSDuqTF5BJ7JiSwy10vUn0XmODTe0mYU3eUh
	 o1D4zPNuKF9jQQJ4DZr39Kp+vScXvWBRWuvbj0iamTaZctF1Iu1DPefXAJki0RLOJ7
	 HKMH0FCyUwXSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E2EC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960446280.32125.4324317028266393151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba4ff180573af26484d9481a93737e2e8d1efbf5fbd065fa917f484cba9447f
Date: Fri, 28 Jun 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719604462
