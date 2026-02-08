Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242892F49F4
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770548634; cv=none; b=gha+adiJ00p08DIbzwXeWLCkg2oHxOK+PJwN/MKZGwkoH/U8G9mk1GYf7COnH0FgN1PWd8dz2bGB8ezIHKAuO5fl27yRWPDVzakumNxvdqru/n72QjCxqogx5oktoG/Hi2CEYMBXBVspfO7HYr8C1oKRqmbOxQEZDTXPx3YgAWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770548634; c=relaxed/simple;
	bh=PQN+YQijALRrAzskqQm3VFaD/E46As8MWESziQT5mO4=;
	h=To:Subject:From:Message-Id:Date; b=qSMKcKP7hFo25dyCK+uclKj5AwALm7ksx+w/dh1vCiXrTHEIJkrYcT3GsPRTMT7wmEFoUoEYshHr7II/hReXAPI5P0iduElZweYEtrxwTAfeonam/pC3gyb6VMSaChp1KBYgE/bvVSGDYQMxvuMUaCQ3DKbT5lRAdYtaBMtpV5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEEJQVCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEEJQVCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93ABC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770548633;
	bh=PQN+YQijALRrAzskqQm3VFaD/E46As8MWESziQT5mO4=;
	h=To:Subject:From:Date:From;
	b=gEEJQVCR6otIUL2QrbqXrxb1CWQ6H/ZGn5OStwMGLA4iBxM4sxfdG1BBGpM5utWkw
	 hwhuwxDNdcXwu4cLl4RC87SENwlZuw0WL2qoCBhAuJGJmfhaYvoBsp2j5lbq/6S2CA
	 2UaUEs2eOyydHkYIO9wE/s7RnPLofhBc0Zux4sUIiL0NEmcmwhXbZgUcWMuyVDKhZN
	 37Irk0wttpxRxSko//UE2f5JO6qg470LJEks5WwBTiHLDNl/oOaRon6iHLp0ka/Ye6
	 SGkdLY1ApN3FTc6P3oyjFL2rZ8fnYh2515Omh74gquM1bottUFLbMhvoGgvE3hQRo0
	 Jkm7bPXbvnBZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A424AEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054863363.12487.1017380463760160752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62556418107f99269ced774078d6d14a9258dba4f4ca08fad10d99a26b948070
Date: Sun, 08 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770548633
