Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260471DC1AB
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772348694; cv=none; b=uuiUuJoxANM+si051VodYCUHnULYGS1tVI1G8TMdYWqNawpStoeZIItcNinRk0DxZW0BQk0B8zH5sAZLVyjR6gya5FYgwP47gh1ihsO8cgatO7xzfz7+TBbAko3FL9XE8y/aT+exKXH+U9toTQSsgtGRTMNqPrrs+92iXLcycds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772348694; c=relaxed/simple;
	bh=GmcyfSWruAltknIDxiPTgcB57gcX1izZCmqudQzVcr4=;
	h=To:Subject:From:Message-Id:Date; b=Hjl1vA87a2GA5rXOXSpV5GaF4vDSNO8lcWvPAq/Xe2pZAWU/MaYVv+KVZZD/j4AmY0epXAfQ7Ct4JqsN/9eYG2EL5hdPp33JKDhTe+cSdr460hr6o0MV7gp/3DdrXFgcDF/KVJuq6jXKDSRMaDmLWfX+ZYjWvVLrnBPf0De1JqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVgfCkGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVgfCkGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B351FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772348693;
	bh=GmcyfSWruAltknIDxiPTgcB57gcX1izZCmqudQzVcr4=;
	h=To:Subject:From:Date:From;
	b=LVgfCkGtzHc1ewJTTu4N3UgjyGSv+EJ6bbOxzYDswOPo1pEYrbGQ74pvLHG1ET9li
	 t1o70bMzvmOPPYA1B53qCW+LJWZW5keXoXyUCtCilnaXkb7w7+MZjjTcp+K5hFmsDf
	 yycQq1S7UGxIA4srtVprRf5FOClbU2bDAxATu+jLky7QHDCwHuK8qknUDZWeNYXAQm
	 gglVlcJrbA5CwRfmm8SGqpixVAQzl8jeSPRKqRCYbzQg/NPRE94jK7e+htOExHdPa6
	 jJkvV7U5+1BGP5+fO/HMoxOR8rWr/smZOkJHfbByrfmb//u+FhMka9l8aW24fS3Qsl
	 yPgXlfScC/gGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8C9FD0055
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234869360.13712.7767611470714188726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a942acf36ea06e8bbfe8a4815975256bc3ea8de9f42fe732c02682a77c3f0300
Date: Sun, 01 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772348693
