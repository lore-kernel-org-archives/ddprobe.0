Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FD8F9D9
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728137754; cv=none; b=oX5Oo2vtrIiw9chUzEgVV+z++oMYfgk2JC84B15zBuvwf3czPFaxext/IU2ea6ClbjZ/rEiCXTqU4yijOe6JLeoM0s1G6bxk5BBzBMfWr0UrqYS8xlquyy6f9DltSUCx4bh1nXZE51/FDGny1Idov21iwWvDDiZQ3N6wtewv9do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728137754; c=relaxed/simple;
	bh=XGokDO6V8nKB0Y0kelM7tBuFcFylpsMCyv5sDPgHxXg=;
	h=To:Subject:From:Message-Id:Date; b=HqBiR/OuxmS2AkYZ4cUoIWL/OFXkVUghY7qdgSbsUAKBU9Su4j35WxpR9XP7o8HxDsQgQjDv7r61Odhxfdeotk9VlH1rCY9FL2V5am2Iwrbqxt1H87xIDmfFK2U8NpppDa0f76TWWR/oZkfASN7q0RNhhRlIPHQsEYOP6UQvgZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPuDsiPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPuDsiPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0080C4CEC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728137753;
	bh=XGokDO6V8nKB0Y0kelM7tBuFcFylpsMCyv5sDPgHxXg=;
	h=To:Subject:From:Date:From;
	b=FPuDsiPg7Slv0/vOguU1A6zm+i1/SPAxADGoXp3oLsAw6buF13UbSefsRrTyE7iEn
	 97qHXJh75cmaP4Y5ZClK8QNyWgO79vjFW9eHHbm9RZN0uGwGDfyinSUeTNw0u91/er
	 d7jDe1L2Zgou6zAshwelISesGqELGE2stBYvTQvlbZhI0dWSgvec8oHlb5jGhtMNoK
	 tSiNbFFNZBPbkW9vl2miJNGxWMCmOQ0tOFXv5088/bn+f/g113gQWhR7bpH3IRXhnz
	 qyK45UTznC/lZ/bgjh+dNdXk+y7TOUtFkN4MpOsWnQXvE3GAQTJjnr/lJ+2U40EAJJ
	 sbhJtnpoIabDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8F1CF887F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813775370.3086.3546814048528919863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795ead587dbace196398eaffda9b0b6b7e811bdffdfbdcb16e621a56f3d8f18b
Date: Sat, 05 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728137753
