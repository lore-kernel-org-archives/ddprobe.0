Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2694922B8C5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776470254; cv=none; b=bhTusA2eBVGK50Xpr4QaEtNZ54sX3evJ5zan8N13I7Q83n++LmlTR0Hxb4m+J3QYUnklA7vYllcMSzpDWkk7K8M4MCH+XePZtiN6UQACJVPsq1SOQyK7RWD0gX74JMvaF2b9IAgGAW/qoZmhzyuepK5PNNmvbZkuvdx4DTSea1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776470254; c=relaxed/simple;
	bh=HWKf+0DXsDMSgW2FBXijRfYd6wrVtYFhXmcvTZVCX3g=;
	h=To:Subject:From:Message-Id:Date; b=gayk2AIKzuupMY9+/moMzVYmJJLC7oNVfwLWL1b7GSHqstUmJJ1VvCsTvGabtDh6F0xgOkAySfdPedGXhSYRLmmBjUR+mOJOytml/hpdafOneofsr6G33wPbHK0YUlfyoUaW2PRWwKPtGi1R4nrKoVmq8bKjNo8lLQ7g9OtBgDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCiiJl7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCiiJl7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C384AC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776470253;
	bh=HWKf+0DXsDMSgW2FBXijRfYd6wrVtYFhXmcvTZVCX3g=;
	h=To:Subject:From:Date:From;
	b=BCiiJl7ti22JPwEmpr1PSI7BVg3Psk0UevYH+MnmSFtmy73aTpmCP3YD8Rg1yss12
	 4a3TArdL/Ns3RveSVNH7KT1M6EDRvKlgAzsbAPJiGXInXaY0VJbUwi7NDAK6JF3dsf
	 jUqSCD53wl2H+4pYl0MzcD8cvDk5+nGmBVbYjZrQOPlMN4kWn85z/EdhqoKOMEJS8/
	 HRrvBZiwu9hCUETkCxoCZ1BwKwG80Conr/Q8zVRLYPBbFrYQ1c+k/wpVYI6gvCgHQx
	 /6Lrswh0eBe2yeDc/7nZu4hm/M73hM0QD2hOqqXSEZoOLY77ORDEDme01I/sjvd2df
	 bfmpIEizNvrnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B065BF99C6E
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647025368.27085.17832708498629081044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d1c309a5116aaab43a4d917beaf9e96a668b2422eb2237ebd1bde453c70055
Date: Fri, 17 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776470253
