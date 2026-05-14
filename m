Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C9333F58A
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778789434; cv=none; b=fnCIlbzO3/7VWo7rgs3hf3lSv9bIEKE8EPF1uLV8MsVAYJpCf4dh0qf0cpsqaSHPES6wHBhR/ZecfWB7GWhDLNovJq39h4FmQ2mp+9CH+8N1CRweZ7Skb5VHNZ/RFOimf/H+JfuVlT6FrsMMfvwnvDushlW2VqbEMlJlOh2W/10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778789434; c=relaxed/simple;
	bh=3qamYw0vqfKLxlhYyyNa/yz4ag8OvWzA36GDxiqRrU4=;
	h=To:Subject:From:Message-Id:Date; b=JfEl6QPMIgVtVT7Z++moqO7uj21cn1qLHbZM5xVb1y+ZqprlmrNb94ZEo+2wfgC3gcxHDGbQu8rU5bmyo41SaCsVMQfoz3rG94uAPbW8nrv8OrvRt/tNSQkmCzSbzZ/FBy2Hzi7fSDan7soLVJQwoHoT9oNEw7sGVLAjFQG3xQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=du7kd5Za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="du7kd5Za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BD1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778789433;
	bh=3qamYw0vqfKLxlhYyyNa/yz4ag8OvWzA36GDxiqRrU4=;
	h=To:Subject:From:Date:From;
	b=du7kd5ZaechU2Hu0IKjg6ZQe4NF/UMQMsmmoIRXSetBuE4hAyb5ReSjIQPCCMRVOS
	 rSOfRZIkIAXo1cG3QJsMy7cBTYPJtznj7TBh7FT3GCBvfAFSB4GtqJ1p2f6v4Tqdm/
	 k9mQwpAgEpAoOkH1Fz4Z2fzfAayAdVqofjZK7hPE3JprxiUEcFNaxHdxRCJhVTyO0/
	 5Tt9iPNn6Pcoau6Fs3YHCm10ShlWpzESro54BTpk/ZKI64waIn5v92xxK2R1Sn8Ygz
	 03jrHeFY5fPP72TsbHiJGCOZL53UjrBonGGaBF2vF9CeQfaMSjry1zqEXQUvXSs9RT
	 KBloQhtk0fmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD11CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878943368.5981.15102516327805278353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e2e742370f460f16e1c8dcc7f457d0b61c5c6f74c572af828b4df107dd50f0
Date: Thu, 14 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778789433
