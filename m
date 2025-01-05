Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2742C1D6AA
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736069154; cv=none; b=aSqwD4WzPOVdhAnYCiSAwNX7/7ja+EkGyhtCJjAEl/nje9Ey48ld0f9AEhgY9GeAb/BtsuPjp2iD2kousq5eIF0uzVnJglgM4kGbMxwE9eGdATe17e5zcil+3PKXBESvGuBRqGTreLEkdr0kkcE/AKUBnn6tiwbfX5g57Oex8B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736069154; c=relaxed/simple;
	bh=2SZLOk8H3NBYuuLDyq10BeoGBTIDqAu85XcKLa+7uoo=;
	h=To:Subject:From:Message-Id:Date; b=iHeEdNMndVgd4F8ECw+wxVKo8rv5GihEYUJg4vs4hkbATZBWglZdORaVkv3PUiXlimdMrF7JK4BtbAguaJEmgsYKt/MX6FVjm1XnG9Ssqb7YDN+LtVOC2or3tCKp2n93tnfq2kG4UNrXBDx8dBqZNhYLbB2M6TBnG7zcPi6JnxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBK1LLrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBK1LLrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DFDC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736069153;
	bh=2SZLOk8H3NBYuuLDyq10BeoGBTIDqAu85XcKLa+7uoo=;
	h=To:Subject:From:Date:From;
	b=SBK1LLrhsyKY6PSsvP2dWYOnakvMZ5OXF5+Vz6dKXBLIaBIuoZrX3DMKc6Hy8OgLn
	 ov8O8QYcFlXFnMzys7fEhXwbuKdxXpuhSFSXB57M98UmRsOq7+35CWf2Ku7MIjpkmz
	 QHMHrQzobDT1f1TVd5lYenDwXFDImOcr67eJeExj+5W7RuoWitAQIypWwYF+Lre33M
	 DlbPlYZ2DrHKD5IyifB8P3aoWrlveqizHImSE/665/aDQc8P9vWPVUEPe9VgLFRa4v
	 9YIA6PYf/iqcHhZEDs9gX5pjlulRaQfEhcKOGwHcQFHCPyKK3DaO0oGFjLK4MqcIp3
	 nG3Ks2NwBQFfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A13E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606915360.25020.7379161413331691806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e413fb52e9942c8f3d5de2c3998d025a814bf06f3f55affae5472f189c4d0ece
Date: Sun, 05 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736069153
