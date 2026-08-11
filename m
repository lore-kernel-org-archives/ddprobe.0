Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481953B8945
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786490434; cv=none; b=GQ/WiQx/w55FRnj6Jb8sJF0f0HyzUgJWaUtckOOeYwvjuX0DZYgHBk3454yY0K7umIpkIjuu9YGe7hcEWHjykovjlGriaKKa16voUFMx3xwUqjXL1olPq+7CKJRNhv3x5Ts5VXPo60N8RXT+0Knko99v9uHO29Bnsg5VTySBA7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786490434; c=relaxed/simple;
	bh=QdJmwUwl0o+QxIIItGjLBpBICdv4ltJW0G5kJ8JR90s=;
	h=To:Subject:From:Message-Id:Date; b=u7xO7vCxWTyWHkmMJXoSXWMBxEqFKKg+VDxmanv3u9cjTVe/7va2QzFcX0c3NpHXdNbaVGNb8rIXZ0EGN1RcTyF/kvmSPM6ejyorF+abntc3H7pgP030wg8HHea1dJ8ctc4AXpAdprKvoFz823TM0V/TMUxtsIX9eJKGW0m+I8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWyW94O4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWyW94O4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDD2C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786490433;
	bh=QdJmwUwl0o+QxIIItGjLBpBICdv4ltJW0G5kJ8JR90s=;
	h=To:Subject:From:Date:From;
	b=LWyW94O4K3SJ2AXpaglFQSvkEj+66dFik4uVW+RgNF5xLI54fLtl335PoRyzTmpmZ
	 tm68NPm0MhxT27cpYE8uSiRLMHDvIMQH09HNysVgailgNNhN599M0aHMNCBKFf154y
	 5Ru8ajX6VWK7K7qHafA3nE97yM53R+EoCHp1CO+SvQTXsn6c9f616vs8FH6W6m5Cri
	 etsoNMxJS5veVOXLwNxT3hY2YqlUqiCc3cSclGwqJdbZE8shpSPN1GyVxPX8xsZezH
	 SsVP8YHgG3q07kRFykyo6VlpUSFOFJqQaJN7jJBU5AFxUyZiZZaOTfZSfDAd8mtKeH
	 ol7OPzgZEpzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB59C5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649043368.15750.4739642400931364607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9639da04038a1efdc7fff086db525f8eeadffafe11213483713dc6923177587c
Date: Tue, 11 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786490433
