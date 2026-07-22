Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55996EEC3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784729914; cv=none; b=JjZs4+0Cu7HTBdpb1GmarjNmSbQo7nWN17K/oeAVFpqW4PVmyYImskvGs2sgqrml+GvILoLiFt4L0arLtM3G9LP0wQ42J/WtCxkTIFXqDrPkptc3JMW4Wu8NP8BXcQ7sewgy68RDMTMWBzPBlfzrDNOHaN9263Oh3LMjUOBgAn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784729914; c=relaxed/simple;
	bh=Sr+B+yib/MROBv8ir2uaFtD3dkUtm3l8KAJI9E0sr2k=;
	h=To:Subject:From:Message-Id:Date; b=rSFP/rGNIykZ6mdca9vcsBROt5AgjkifmDRiGi5gdqBUhd0muiyMkjFZWEgQ45wMiweY3Pw3lbgSam/1eWplpQp63DHpVEuUqG6eAZcqgAAhSe7Ljgfpvyu/nx1lkZTXLVIQQ8JLjRJ1L/GBflKiNj7DD+1ivFhrdoGvzJOH3C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGhAdCRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGhAdCRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2A9C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784729913;
	bh=Sr+B+yib/MROBv8ir2uaFtD3dkUtm3l8KAJI9E0sr2k=;
	h=To:Subject:From:Date:From;
	b=aGhAdCRSACwraz7NoyD2iuY8qyUr++2vBomamuRKo1KGktkfefXhD2BDo+tE1w2z9
	 PLqvJrVzc/6b4mpAZURzppWMGLSgmK4oBn3wJ9+DowB2tQTa4NL70D9gXhfuXqA1SW
	 pja0B4RJHnG9Hc39wLxZ05TMisdu3I7l5N0P4poB5CauBt+apVgSb7SBmRdo6UCibl
	 kktgRVBG6un0u07H6ZdlP3kHCfpMqC8xUTUtCJZlkwrV5ah5D/IOlPiXcTh2xetPmu
	 e2xj6xKFYayki+EBGUMDcHuQVoOKMiqJqOHU14gVrDNPJPBnSk89ogjtLyjnySERFN
	 thxxD7uCw7ROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B743EC44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472991373.26416.13241828447383966300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c6273b384ad3662a8696abc3767e8cdbfa38640a658c99af05945551b6031f
Date: Wed, 22 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784729913
