Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3514128A407
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745332794; cv=none; b=bqVOG9rLxzM/irbY4Weq3V7Oeqf6Sxo0H0lGj8prbrIjYcsv8eR4EjmTmZUfyXL/3T8ivIvDGJIybQw2tz6LvgVIAzgnNldlqHreoWjleCmwmngmtPsETP2YEYwwMhOX6fCnSQ2uE+3lGsaDo16RpxaDhvt77vWwefehesvy8v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745332794; c=relaxed/simple;
	bh=fBH4EWVChGrVqix5zfnVRzmrdgFS3gQQLhbTkE/oPBs=;
	h=To:Subject:From:Message-Id:Date; b=C+lndJ36UcCHhUgSgUWGRusOgIlioOzuZTW9MDoMaTbGik7fZrlwedC3IRSgIc249ODeJzV3soQqlCE5pA5rJy1p/93HXSS0vyPYkcO0PAA8sMJFF8JgMN3Ff1+LLeKR5cno3qRzxhblqBt9HKlNLFP53TQFDulo4+QYr0nCDVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGiba/4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGiba/4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7630C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745332793;
	bh=fBH4EWVChGrVqix5zfnVRzmrdgFS3gQQLhbTkE/oPBs=;
	h=To:Subject:From:Date:From;
	b=OGiba/4ueD/XvVlfJNCD0l8XHip9gH67wv1WteabMtnOMflAi0ipy2iWeWfWw7uXX
	 kIawdVAAO2JEXoe2BVwEJl/5BSKKoRFr5HhTaoVZ0K6EJgmorNRNMph9n7QE1qwK0w
	 8YgrPlhKePBhxlaSqO5+WhSzgq80FS6SjWyU/BRMJfkeSI2YUJhqsmzJQkBmwBLkNe
	 d92c4eCJ75nQQVI7cJSTV95ez9jmV/TNa8l/DQRx4pC0U5pdKqbIIkMLd/WP1rbOOy
	 wx3opP13Iwe3w1JJ0RDqV7qbHYb0t0k0PteSZ4upNKlZKDNPefrGzxqlcUZnp7WsSa
	 O1WsOHKxoEbjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A83C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533279359.5108.4546741746907833215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f56a77befc0837eaeeb39b96c5c9fcfaa4c90e394d87277feb7cd0db77936c
Date: Tue, 22 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745332793
