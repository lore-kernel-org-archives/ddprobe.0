Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FD91D5ABA
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760194794; cv=none; b=Hd5o5kynussc1vGCOcimN1tseki2oiRxrYJA0ren1JAOD5cHi08/U9kr9YPX9WQxZQvzuBkN56qZ4J2aiSU3lxXdhId9Dg6Kf4t0yyM/ePUsfxTAgI8BfXQDnT++E5UhETu9DTDo/mge/+vV0fLwt6pRicjzq8TILvNM+vypmq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760194794; c=relaxed/simple;
	bh=6PaNIQWNx5E+6SNcjr224J+roGj6fxgDzPj19BHkmlA=;
	h=To:Subject:From:Message-Id:Date; b=NafwTpSkMKM3TvbouAe1db+Y9PT1AJOxmMTaaqmwkCseMegE6FFUXo5kyBOCn8Q7wrC8rrLfOkecFeKXK/1h/s/KQ+UsMNcIWHzYWCKBZVRwKen3HkSv5G7pC9FGQkifSUg7T2p5S8rcCJGajZazmjeJdeYLoDI5uFWoz1l8a6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H71PnIJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H71PnIJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A275DC4CEFE
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760194793;
	bh=6PaNIQWNx5E+6SNcjr224J+roGj6fxgDzPj19BHkmlA=;
	h=To:Subject:From:Date:From;
	b=H71PnIJvgHEHVx8ndRCs4CBEXJq0DphjYNHxzs+bVpp1AdJYMtVN5ZlWbSRaIhiAV
	 80+FYCtoJiKGCHDreZsjow2SboU0dUAInJ+462m4kNrscSwasiCtxO62fodsSMpvZC
	 gHaY4XkE1XQRr1179fnIiYcCfOxEbFl/0p+Z+9zl2p9LEfRVVTIspGOWSItSUWgM0p
	 bPIC4pZZ0OkIIf0unuIud2duyKYhbj0B56AmOoA4Fsr7lLanINaihdWDRE3qQ1kBq8
	 lhZmiOzyD0sgRitKZ7Z2MIH6ugNLUEuTZbm+mspzRRMu9Z1bvKx2KqtxL8J0itkfnq
	 kzYVK33gUgAsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9157BCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019479357.15835.16112193645911056915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd379c7de60e510bd25275bc87708e4626b4d6ad64650ba39386544c8e9213d
Date: Sat, 11 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760194793
