Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496FF5293FE
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792072834; cv=none; b=jW6FmOrGo3iRuQb9obSJ0/aOG0/gbrsCuLYRUV5BQueWglTu5A1BRVQSnCjwM7KQ4yvsdvTANRG3OGhtX4bye+zcO1zwDq4qjhc2GThgVJGkQQ/UM0XI01/yOGvRxrMNQ9lElXLF28Ffv4hkJFIipNRbmV5EV16NyfgY+4TFv7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792072834; c=relaxed/simple;
	bh=qcORut4117nqlMe68FHOlGqx5iXt5rwup6mzcSmg2NM=;
	h=To:Subject:From:Message-Id:Date; b=jHcQ3uapqQHyPxcXdrxFTQ1qt9qprUMRCextBhl5I7aGLUWfQ2TZWQJepLZ/Mo7YSut0mYoaWfz8sKHK186bk2Vrea0PJpV/rr3Di+LBnNDLidtm6GPqWqE0TnIFZrnKrkW1/n4CeWC9A/uRg+Npgws6HDG082BL4JA5x6rEN2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4U9Kt8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4U9Kt8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E45C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792072833;
	bh=qcORut4117nqlMe68FHOlGqx5iXt5rwup6mzcSmg2NM=;
	h=To:Subject:From:Date:From;
	b=m4U9Kt8sh2jWjOKn4AwH+YFUuahj/Rrx22LNVbJ31IBVNZCHdmXD41o0IJFcFKcah
	 iZ1RDA+Vr73NmOOOePgk2ounKFtkXXWt7qJP/GMFRmw7ltBRNTgpARc4RUGiiWeABm
	 yx/MK3v2YJnsOs9FNpvMML4W3pEoQGwcGSZESHcFg89iPm2h20nwte+nkxhQkEmTMj
	 U7TfOduQTnnlBalx6UMjJFuhDbd4N17QyUSQNPHGfeSwEwccuUhrUeDz9w0rAvFBUf
	 nahK5kKuSxhfRNLlHhzEL7DWhBm2yi04sducigh7TdN1bCv8pj+xUSBPcRwSAapV+L
	 VPHkqGxC6E99g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD192CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207283369.25258.5378870670250552893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5d5b52cf078a1336a51e33bd710c5d35ec30a240695da9ad54d706eabecf9e
Date: Thu, 15 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792072833
