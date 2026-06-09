Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285A9315D49
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781043934; cv=none; b=TeR1ETmw+Kd2mQofzyxG7fsfvkMgPMLL+01U840e6Zt7zqe2FEarjBv3DXhAr4qzH4FSN773LbADr6d/8Q5Ftni1JEAAI5Nef1KC7x3j9bQ11ldreF4HfUYhLhYokz8Kbr+1y2WY5kW/ftKPgxhTe9dn9QuzbdCq8R0WnTxftYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781043934; c=relaxed/simple;
	bh=4J18V8aG3CIcSQZvuwHw7K6YA78Qqu00IOFF8lTBDP0=;
	h=To:Subject:From:Message-Id:Date; b=sbCCVMdeiycbln9+mLsKS+A7uF1s+bevEm794NaiQNiAxn2BENIGLGJKgqPX+w2tthwVuKwi0gTXrtJ/xnPVetlVMDohPrHG8H2W0Nuh75lY3MJvEkoMC49fxYFE7J4hm5XDhGqEu3dIxUduJx9CPU9P8WqM4bj390s9rbadM14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZDeeXcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZDeeXcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48FAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781043933;
	bh=4J18V8aG3CIcSQZvuwHw7K6YA78Qqu00IOFF8lTBDP0=;
	h=To:Subject:From:Date:From;
	b=hZDeeXcHR6/TtNXIOTOxrrbwsPXo9ry0o/2rbBvIIb4h0sG66Qu91Qw1erzNwl8As
	 ROBmPzvrXLLojco/k4wQudVgTjkEwqcWesrAa2wCjcMJJrix86xBbc9Wi7emUbI7tZ
	 5pkft+QOEbBz4MfOzIGtejDklPhH0Fimy73USo7rOzNIynX9b+bBsP5OdOduckhQAc
	 Do/Pr1KcoFBTKcxjdOc7w36efQrkWMXz8NklGJ9w1C5MegUU33IQlNsGJDBzQAxChM
	 /FfOSrQIsC+B5+XtDgk+wplYlkkjo15eZ5hyObqoZi2/EAKqog113CpjfbSaMV+upn
	 62wTy5pturpxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DDCCD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104393368.23354.3642113542864160594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f71ee8b421c3bb927a7e8f121d132081fce62de2e5ad30e379d633ec2dac5a5
Date: Tue, 09 Jun 2026 22:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781043933
