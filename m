Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5132D46B2
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760561993; cv=none; b=RKhnT1nV6ttYr3lVzq6Q9XQe6cPxCEn6DJAEJ7YvmQ3qIWicHx4X61GvpGC8vwlqyCtr5N3QK9L07UWCrLUiW019XiaZcLsQizIGtVn2lKbZxufmYXmBUR4RkCephoZpCvPRomUFm0NDXFQZdH4MlRQT55W/gxAf0N5dooEMIkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760561993; c=relaxed/simple;
	bh=R1cOY+j+SKSWgFtexv6avOfdke/XgwELJy/XPfbcT+4=;
	h=To:Subject:From:Message-Id:Date; b=mWBCFzgEPSuhstAGWu+Tk879XHDX+F0UB1OvC93HbTNk/ZEPk2Aq+oUxkbUDO9RDdD68S7LaRmcUH450BU2VJ2CBH147aetG4DMNgoEqpHGtvgtgWSPAa8sRBWUEOSRACONMwMXfnr9Bk1joPZq6fS/CTbT5z+rxzkejmIg+FNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsY1XZin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsY1XZin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DACC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760561993;
	bh=R1cOY+j+SKSWgFtexv6avOfdke/XgwELJy/XPfbcT+4=;
	h=To:Subject:From:Date:From;
	b=VsY1XZin+gZl+qUsaU6m6bSwGdbt58FG1PP/2YavFvGldpmmLHI18k6ySTZ7dc99S
	 mSj6rrsSDeS7tb+BTXBoo5Hv5eAVRGhUZ0sYYlZFtmECC9Dy9SermIzW7CU+URMCAf
	 xmcHOS74luzCu8Iwv6B27w4oyqOS3wZeH4N27YBS86OXv8FAPadVKxMcqyMfb3OPCo
	 V+J63YHaCgQnm7nj6RnrEZ+V5UsxVnc/dcFBVFTTPOdqMea5tc+9/zf7n5zBQssuxm
	 yD05AFyyJM+ItFFWveUY9ECBMW4zR1B7Vxlrn0n8+pLKn9R6Tz0VbsAE+dthxKLy7q
	 CV21rvzelyT+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944EACCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056199359.25552.1680472541468420289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a6ea5ff0af34c049bd74122d716f7f3a436f4a259a2f235ff718b919e77461
Date: Wed, 15 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760561993
