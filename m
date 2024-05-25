Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1449222EE9
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 09:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716630263; cv=none; b=a4QeI6IRb0cShbymZ2A4khoh6IVkUI7ojjCefnCJmBbjI4MUT5tz4ovMhmvFnP//ZfOBacwAEnheWtTOS5Hci8M361eQdHLiPmLsDXhQljk/txK5rcXSsaqjMziRC+md/ewtL3f2IpafGoYYQk1BsSSQUz9gatpvcXd8/ABKrzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716630263; c=relaxed/simple;
	bh=Q6c/P0EljR8vSsHMJyPlCxkunepq4KWW/aSTeeAUipk=;
	h=To:Subject:From:Message-Id:Date; b=skU6fwpKDmpS6ECj+/Mi4VipCdws7OiHJiycXw7lpOdEtscv0DAs4rLwNT3IvwWPuhAiUs5nl++aeDxGUZNlEWUVXKVy5z4yepIdDJwukv3lHNL6q0ZWLsn86pbXT4p2LqNEM6QH6OPA6Q00NSMm2Dv6ci08Ta09dEVUa4z2ovk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZODM6e6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZODM6e6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC958C32786
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716630262;
	bh=Q6c/P0EljR8vSsHMJyPlCxkunepq4KWW/aSTeeAUipk=;
	h=To:Subject:From:Date:From;
	b=ZODM6e6zyrIkQ09cm5amRs5JNrFdzlm8RiujhIpjeax8GjNz6QqvCIZ5TRrnTHvav
	 dfjQp1y/TRxWWjVml3kbO97wFdcLSVRdK/23pZdvJQ+QXmfGd0LFgBt35GHz3LBmfZ
	 a/ffLoo3jO6k9T6IxWL5i/5jFUo2NL1VTR7sasXSCME+yYaJs2nOvo/cDVR84lUJu1
	 Qk72BgYzfBLPJ9idm2MKNiJE0my3/CaBvFHyVEdcWsv1WQhzbixTmBCNfGj2rK/O+M
	 sLMApbhaxV7kdFjvBrTeiFVyXHm0tZ2FuZy2kHtiDBzZK/as9YBkbCIprUqlq7LjlX
	 efHaa0oJzCoRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF4EC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663026281.8037.7333776201481517961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92b4959fabf8e8cf01b9efa6c4f6e720e781375ef5666e11792e48dc02591c9b
Date: Sat, 25 May 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716630262
