Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4888F1E1C22
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758908994; cv=none; b=Q+pStrj6Kvic49Sy2zmrKSdBz9Iospuh4XgKMUTgk/Bi9nJ8QLA2MeEyowjoPY11p0LhDVTu81dtDjj3C7rZdkueTE6U7pTMqE48BL6TlSMWHaZvYOLMe8ERrUTAMAYwsnrhGwCxCFQaQr55nNd359keMqWfi9GIVcRHC6Oo3eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758908994; c=relaxed/simple;
	bh=dB2y/r9760YjxGjXhfI2lqoQkiUPKjm/N/lIGL8g+RA=;
	h=To:Subject:From:Message-Id:Date; b=TvN5MnfHfSigUTECyEwIrNSQsELdNIowNX8Lb14iC/Sk9SUe8hLhsUSuoXU/46OzS1z349uXv3mdIl6cST31HkIRWNmHM3mDToBDSaZCq7QABrgB71Y0yA+iotqctcTIXFLVJT3YemP6b4o0sasI9xp+T/LufR18uluwc7HXoeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfalKnb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfalKnb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF558C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758908993;
	bh=dB2y/r9760YjxGjXhfI2lqoQkiUPKjm/N/lIGL8g+RA=;
	h=To:Subject:From:Date:From;
	b=CfalKnb18cjFOWSIRUWUznHjumcPtDnzf8UtSRrCr+Uyo0M8ET1PiLSiC+gPg76Fo
	 QP4aEivS6WLbZCev1EJWeb0K7grk+yHuBwNu/Yhd6zSAHvm0VD466cl7zmwKW8cBkQ
	 nhv88aSYdLAamV9q0ePJWdqHn2dweoFrvuAgKWOa4QmEFTje4oElVQv8MMUtDBhbdc
	 h5mn+LQkzQRvLdpoHg6ptTCKG0xy+EtSM7+y3pDNO1p/Kaq4Y1fGaKA/4aF13XaI7k
	 vEdXFh5yhqh+KAacdTs89pzG/C7ksOXWUpMylPPjAMxXGpd3jos4ABg7ErrvLn9+H8
	 rFXyL4Dqnz9/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C0FCAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890899359.22671.17548082034771501690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b092145e55480440383c16e85462b503c84221f91342a70248063081d2a9ba
Date: Fri, 26 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758908993
