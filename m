Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22D321B9DB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756013993; cv=none; b=lh2gCI4F0crkPe+D5eN2eYAsn+a0d2guMs/EzLuNomPEzs2mgbkYuV3TsK9yq1Yzgnq0dHbkpdlP6+XOjjab7OVl2CiebOCy1jAwBO0IQgaIbGftGfJH+XITKjCqXOIx7KDRH7I8spHaIr1TyIRQlmsINHIWMg2Nz67mIU0Mkrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756013993; c=relaxed/simple;
	bh=v32arRmd8/YbILd2ATLtq87LNRU2f/A4AeVrkkGI5aU=;
	h=To:Subject:From:Message-Id:Date; b=FC4jfEbkIBUgVcu480TZNYU9mKO2TnTFCCNUHse6IBLbHI89Hc5zsTkhMGKTN9ld/+l4nTyOyfLFKwl8U7djK71qMnUsO1IWC70Q0l19pMftOUzDThKVd0AaEodm5eRwamYg/rnXNETJ3NlC5jtSsCSMgpNvZMaKiNrluzUjg4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMZhKbr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMZhKbr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ACC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756013993;
	bh=v32arRmd8/YbILd2ATLtq87LNRU2f/A4AeVrkkGI5aU=;
	h=To:Subject:From:Date:From;
	b=HMZhKbr6kVe2TDsDXJ8f9aNnpPQwTnscdCoIn2Pxh58D8ALd1AiJ+IMtNnCD/SM16
	 BK4UAAu7O0gFyR4YcTqxuSHhMEoB64uFhf+UMwPtSvm5jPkdLB/JM2PuJJWmqSyO7+
	 YD8Fi7P9IWwFHtMSan/tpyTXL7H8g+uKb6/jCImZ9unzhln/4vnBUrNvKdKQuCp8kU
	 p18bBDTfj5bDzwcfWUmyp5YvZiLQ6TERJXjSI2KfJzSVRKJ3KZXWgSzFgmD1AKlC/5
	 GlAX4BB/E4H9U8Lzprf3u3EeGp0jicvBd3xk0+vG1wtXSA6JdX5ft6RLE6D/dK2Ayc
	 5pYqMFH0rwhRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9BCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601399358.15368.7430203328525480034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963fa5be807a9a7f42c8698db612d602eebc20ff02d1dbff66935b4e6dba9b43
Date: Sun, 24 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756013993
