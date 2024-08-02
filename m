Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208895258
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722639954; cv=none; b=VoYwOqOK5dPpK/KK/l11bMEY1Hn5GdKnHi1JWnY+yw6byVSsZkn2miCTX/GRs4p7OogDDGJ/e9SnvtmlP49juwXU5pR/wb717t2l7pvNw8XpcAdbVn0wWAgor2eFjnMzm0Y0i0fkoIJjP+1OrDNDMRe8KgQmRR5AB/LdKs2tDZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722639954; c=relaxed/simple;
	bh=YVpUOL50r4pxEvttKvjxgDeqnDkiJ3mtbHPDi1f3cVw=;
	h=To:Subject:From:Message-Id:Date; b=XZr1IB/qzwFjnSTjJjePQKu9YSR2mnDIRNArjLIo/8vHYXRsoYq5OgFXD22HQJirtvLQhfH4GQrhXOsb3aAdhz58fOrOEksN9OY6ApmqFBKTIMxgXMfxNoHvzu9igUYUzxfiw09cVfer+EIgBWyyb3SV7c5zLZk6Z5Y6Zxr2Guk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILwD46CW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILwD46CW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1512C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722639953;
	bh=YVpUOL50r4pxEvttKvjxgDeqnDkiJ3mtbHPDi1f3cVw=;
	h=To:Subject:From:Date:From;
	b=ILwD46CW4NL/gtUw0LE6Y4HkFjas2rFgbXy48WoKOVbttjmwpZPyn9Ex/5oD1nDrn
	 pSACFt4+vRKDZAtOiwvfTq/a337NGHmwBS6q8mfSbKRdwZLXQKMLVW6BxVMBnarzeC
	 qMSBgMRQht6hbTGrMv6OOPMbyt7PHb3cJdckM/L7uvMASM8YhSVduTYCTHXEi8w9/H
	 wlu9kI7jkQ0/5RrUMGpxOJwq+iqjwgpBbcsAIeOSUWsxZc5EKGx2dOmKMyMiMxu1lQ
	 2skv4KcvDQf0WdcWO0pwGmgwrJ5VBWuA/9tUGCJfGObCtSyNUAcSTP9jqZu1sHZpp5
	 cd/ZYRu9yilFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB5C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263995359.27903.3190407798340972351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e61a6376c1f912cd4257504e0b29ef0e43e308efceada8bbfce9c07a6718ca
Date: Fri, 02 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722639953
