Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190331869
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711766897; cv=none; b=G3pugT/eaaf0R3QZt+Hh0jcTSHt9WOJEml29NsLfkKLEyAiWh9q7X6ujO6B6/b2xIJ+jqmO3/s90G5OOJUk5vugZIJnix6VMsWHQ1mmuudXwIlEjDPUzeCPsaYCQ5XQX0N7Nj0tvcmaEdfWfmsCtn96gLQo3VazW7K+gsS8g1C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711766897; c=relaxed/simple;
	bh=HJ7iYEDQejdNqVT14URcFhEEXZqeR+tsueP/SGNzlDY=;
	h=To:Subject:From:Message-Id:Date; b=TqDJCpM52P99qNJ7tWPbzayxY/ZaZcVSqK2bITeaB4aWLKsuAiMQwRY/zonOYphhutxIc/7C/J6WKr2iLF/1lxvMNMq5ckN25c7CT3+xje6Lfz1zphAmer5YC7xohMbTVcwhT38nz1uZs64+eg6yZMLRBI4galQ5GiBEZlfCBMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keGd1Uis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keGd1Uis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A898C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711766896;
	bh=HJ7iYEDQejdNqVT14URcFhEEXZqeR+tsueP/SGNzlDY=;
	h=To:Subject:From:Date:From;
	b=keGd1UisJVOgmEtLiPKOupmo8dY175RiSReDJ++c/kjd8Q0GFcdgXdEsDpXa8IMt7
	 dokm+i1mhsqbD8+maTZh37JYrZKGyeRAOVBoGJqKqFeyXxcFLr4vmKaXD44Hmp6vt1
	 z2u09k3qnLD3lFo7dX1kB/cIXIIaNgJp4oCzYA7+RRjbSb9S2A63q7lSm2G302wFqW
	 eW7jV66wxN7v+zwktVHDZSAGlhB2O2CV74iGCOGnzbFFGQ4z8FWW18RKusk395aDHB
	 bcmjDC6hH7aZxs3e8VptKUrVmpy9OkXpE6h4EOD1CTMGYqMi8QQqnhTicuBXTmKCh4
	 dQq+rN3wsj64g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6517CC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171176689638.10869.5567250765144913040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fdbdfc35c8dfc3d3a574167c0a9f8d783fe461e6e478217ada322a9a8f61e6f
Date: Sat, 30 Mar 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711766896
