Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8082F3793D3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787336434; cv=none; b=Ni/SKDeEHQy49ax7P62Afg5TCffkmYpQdjCFTOpa0HSda4GL2wjQvfTRdUb9hj69UskQF5JtJRex3fwLJFhnO+3Cbjoa8P3cihvxwVOjirbuXF2nOeBlj4rL913lQ3P2+YejXVjEaH+dOc5kIFP7w50MnJfw5MiHXI6VWsLX6MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787336434; c=relaxed/simple;
	bh=pT22LlwGWAsf3wlYaHW95BVuZLD9KAJh+qZgqtwFeJY=;
	h=To:Subject:From:Message-Id:Date; b=pFLJiBi41ugvtNLvRwPlW2iw0rolzM9PuHZHuafrpnqQDlQN67udIQ1meUUnPVels1SIgi41Xa0oWic3O38aI10ssTUMvRqloCttnyVhRrvdGnNGNEE+yzdaG2BljadCMo6FXGnyf/ApVKEQ2YtjtJg9v1pVcg2o5Slfi4ReP/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UL2vrPEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UL2vrPEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F72C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787336433;
	bh=pT22LlwGWAsf3wlYaHW95BVuZLD9KAJh+qZgqtwFeJY=;
	h=To:Subject:From:Date:From;
	b=UL2vrPEOykLajp1Fp+5HXVHYixWyDAstieBKKuZb0QocbrtnOLgHW4WFAKgGLw/z2
	 WY/6E0kP/GBSR0rXSmWPF2g9y+bZpu2J+BnGMqX39VG/3t1FX0LyPNGB/sQNeWlgMA
	 S3uVFsVHA3ezJzjiAQX0+2M4EARFlba+cFuSsbBTaUuu1Gk/mF+/xhar+aFOJFQzPN
	 mOEwMe/P8kmTCa8S+9LYULHcXlBhOlGKGY9KY/IHp9Y0X91kvb0oSCk/YcBJMW9q8b
	 qsKoos/+xDpYFb6Gn07Mzj0e7K02aa3EEo3HOr4/BIPhV2dmN6KYGHEziJ6LOTCv/A
	 hVeI7PNlCJkGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0E9C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733643369.5058.6255974687585413686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3f3a19003dfeb6c9f287faee0758cbdc69be58c86859ab9236cb35ce14d495
Date: Fri, 21 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787336433
