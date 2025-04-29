Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3313E29B226
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745893194; cv=none; b=msGHWTh9sQQrr6fkb5Zga1tzOLKP0p8mO9hCaY7y9nc23ZssxbIS+mWP/g5cpahTT6pF5TFV/FksEiVDKeI/+uuAZ30LVB54nEfbpZ0eZUbWRFh4RB+nOJ7oIf3oX9Z7Ti3XAbRDfgVxS6NKNHg6IqP2NcA0tgXdUxGVva1U1II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745893194; c=relaxed/simple;
	bh=9aBP9p594TihPUOaCE6gzrHMlV0rU1sq6T3/nCeid8Y=;
	h=To:Subject:From:Message-Id:Date; b=acsM1r8yd+NJ6r30kdS6ma20JHTH091SxDHWocCAS39KVhGanjIMf8DliM1vu+AzbVsEyyNhTD7ghBIAm1GpYku/8JTrRdKDtxbrtmn7U3XGuQ3+YyEdQQ4owoRTGwfNRNZ81p6zIXMp1msAZ6TDdM9ytvpG1VAwtfywmpC4B8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFbFodZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFbFodZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB42C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745893193;
	bh=9aBP9p594TihPUOaCE6gzrHMlV0rU1sq6T3/nCeid8Y=;
	h=To:Subject:From:Date:From;
	b=pFbFodZP0hf+/WFe1Np64a+XxgXZ5KE100YCDJtSlCmBVDdW47K1oxJgFgPi8MU12
	 Au6knQq8cLrRbeKE3uSBvaLhYmhUtZkrOm2u4oeEePVNoBVyk6UIkdSjlXfCkaSo1F
	 vcSB0sQ8XDXw4snTjEsxTRKmEVEhkwnyX0ccC0ncz7yby1497M3a3LBKQh+DJtRdI+
	 X3+iiXCOBuIzyNWy/aXLS6b10PyJ5/aM1gvVdmsOlWfr0scH1lDhbAN7dtToPLhrL1
	 Kgw9GCrtpu29frlXMq3Ac3ON2Ydmy0ksW7eOtumEmMGvUMALO9MnGcn+FIIcKLCqae
	 bFUUGl2K8T+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30EC369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589319357.31774.3451936666985855832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae7436808610bc57d6824e10b7fca38beb13478b8352bde4d11f7ba88418abc
Date: Tue, 29 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745893193
