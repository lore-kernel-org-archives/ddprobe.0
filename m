Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A43F2F7ACE
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757086794; cv=none; b=nF9QuV6Ejv7/wBxpgV5OjWEkYw32SVbXKOVXE/irglHCsAIXVbhP3drnGPPh/nmA3ygHDeze0x70Ib9Nt3nwS1xxhu0DfD9oID5usg0Znpd+u7hFvRlIuZcNueTN2W3VJHa+UrI8QAv3qgrJRQrFHkBNHL+cduVxVuqlkpATTuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757086794; c=relaxed/simple;
	bh=S+yQoIx/6R/YaQsQ1b/s5VMgPj59S5FYkdxCxtKyr4E=;
	h=To:Subject:From:Message-Id:Date; b=W7obP19OeyWbDrm+tL79087bgi30nSo6Qzdl9Fvp2JnwHhyB/N40nfO56QMqosZZXNXKih1I85fyl0HuuEiDkdRkoD5HnOGsFrfN5hrA7ghrJuJj4S0wpDSt/qZR7nmdYD5+o+6QOMWbEnFsTL4tk2YkCUedmbJNJH8tMHbHrJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz5n++Da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz5n++Da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7490C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757086793;
	bh=S+yQoIx/6R/YaQsQ1b/s5VMgPj59S5FYkdxCxtKyr4E=;
	h=To:Subject:From:Date:From;
	b=Qz5n++DaqDUegryTz/43AUwFbfOKV2uxbNeLK0yl1pdDvN6ivNdQvBcH6n4jzHiHo
	 cglPhmQcEBUE+vsLU0wKWshkLeLrh+CiuxsF88FFQH40KnQCdH0b0J7H2ny2c2inT1
	 /pHoRaToLsWyFyaLkWm8sMWpaxAOLmd/5WzKvEx6RCeVRq5T2NR7eVjmJ1xv0I71QX
	 9igRs/s9gCbNQ1z7XHu/CT5moKFFriteRbu2LYxTk4OIlx5v2acJMqjQwEuLalI55f
	 FCanGhoD9PVLrQYgUoJjTsdAcoXGCdz3k66lWvKQ/HIT2bSAMKfxVB/aTbpW1/asiM
	 tyL7WY9ZgvCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9290DCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708679357.5223.7460709350387250459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2546ca75d71f6689b90968d5d81a7089adf9b212a418a5dfa82ecedbc42585b5
Date: Fri, 05 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757086793
