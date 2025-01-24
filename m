Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4941C5F1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737708354; cv=none; b=rpii77dzVpMwgRCCihYSUycsk0O+hfhjYqyfUCqb8z6MXM1+jqDZxjyNcWBThVmFbvRbki1y9N8PmR2lmTTXTcEZDCRXyfGPJMJlFfDGx+AI3QYadTsSrvZXTomcF8eWEAkGZS1nX0O0VijtRi0HfNSC/MOyR6pytKa9o4yOeCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737708354; c=relaxed/simple;
	bh=kaEastLTdLSuQeLJjLJ3smt47j+MxAgQWdNpVmLH2dI=;
	h=To:Subject:From:Message-Id:Date; b=F2GXKXGpVlYyLV/Q47FOUpFjoUsX8lZtqAP7kmg4sPCMwptVOVRROtQV9VA5UqED3tkzmLk6+khe/N+3GC1REJ8qoipQCJurdTvQ4zME483KsFnKZxQJ7utjc6Mcwew3Q+THSA18MLu3aI0fU47gQGDvjJUi2lYb3OfUW+b2aMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQdjoJAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQdjoJAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70D7C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737708353;
	bh=kaEastLTdLSuQeLJjLJ3smt47j+MxAgQWdNpVmLH2dI=;
	h=To:Subject:From:Date:From;
	b=eQdjoJAUmIiPWUIDDt/onbmXKEH/02y650FmKxzOmRPoiDifo6erNvyON2PEgixeJ
	 igLvRmS8qBnFrlqQ937Uhs0SsCPYCCxsJ+Hx9cTE87Z2x4z0cOoKJZYUeyRSXZ+Vr8
	 ASu2XirfjtLtUegQ/opqyQAL1aKSi0up58Anb5FtMk0UxYSI1wXeL/HFnulauaF1SV
	 b461GUM8PwNalXrhrnqomAyyTu4ZDUnF32WinKBVPW8N2QN+vTjd7l0cjAQ5JYQYgt
	 5Qvh19oNsrnCxq4vlGAdyG313MrniVEKW72Fq3jMEEK0bI5u87KF8BEvRMvF/Dedm2
	 5yJ3zXGFcqjsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D5C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770835359.28351.13201324163197859993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50da0e8a0bd2a343913635a55841b135b1bcf87b7b11666dd9fd24e7ec95fcb9
Date: Fri, 24 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737708353
