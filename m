Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5022914A82
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 22:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716502403; cv=none; b=T/6xAr564v6hUInd+amAa3b8Mw8M/xS/IgINcMPuQkDVJ+RU8hsJ9k0VKNIU9Nr+m8K0ozChHeXPvhSU0CNIbjgFkaua/NyvSHKh2JpERRZIhMwv4fqxbVAPE3dOz9BsZtFPsqjvx4wl7wLhD/DkgetamVB1gPA7cGgRs55epsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716502403; c=relaxed/simple;
	bh=Ztv0r3uDHMTioXP5BxqsDJESew//b02qIZIdSJ8q+nM=;
	h=To:Subject:From:Message-Id:Date; b=NuqFhQ2ojTWs42BT1+oKRTOGtDCfr521N5LYdaUrNQPBaMnS3IB6DAx0K3xwAmRz1cOXZFrbCNX/vXv04jXTU5f4KSA/EQf71MPFB7c1CbVuOWbbYvIES+y8k1FwlL2251/b4TrM2bqAKJcUhE+GaxD+MWuLTSXmnmlS6n889ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHSdHVgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHSdHVgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC27CC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 22:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716502402;
	bh=Ztv0r3uDHMTioXP5BxqsDJESew//b02qIZIdSJ8q+nM=;
	h=To:Subject:From:Date:From;
	b=oHSdHVgfatYck8eU4fApSZhkHaHK0DWAIXEkgmEAh/oAK6WoHvq5G8i36HqP4uhEx
	 ButYX8Z7PESCC7boVOZOwSGc+bXntapTWEAfznaq/5yqNHcvjCK5jMBpco7QZWfauX
	 2i2XoHgzB30axzuk41i5nDLGO23I3aL1zyqVmooDpuBCMq87Uogq3R4Tpk3hmBvpU2
	 k/p30O0zrU7flKyxYomgvTb8I1qI1oqDkfn2XqoMX4Cj18OF5YwaasP3aZghHA6pFi
	 GfziAlRNayTAC8yo2XQumvUkhKfhK76NfcxJ7vOVe0Cm49BL24fGFRgABJ1z+o4vGi
	 2GPWMy4QwJE0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F9EC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 22:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171650240280.21486.13117558607812565251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303225f4ee6783dd1bb72b6cee5703b94e12207e9b200ad11f8908cd71f939fd
Date: Thu, 23 May 2024 22:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716502402
