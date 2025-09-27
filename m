Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395E715855E
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759014594; cv=none; b=tIwbD6OXuUi8OZPUIRT+Ofu9eLYim9qkxhY8DPMSgkZC2WBZkiMqLvWCdxt4e7YdePv9mU+Kqy/0z1nd2X7Sbs4Dircqmiv+Wdl0Ty9h0Dsz9XYhTCDRuz8/HHLQKt4jM0Yyq2a12AGGwSi2eHA9Bpegg5MvwBuAmDZY/5PBLpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759014594; c=relaxed/simple;
	bh=tYF5hkosHd+rmPKwSt/i4eu9Y9VsjvDCza0WfEcTjK8=;
	h=To:Subject:From:Message-Id:Date; b=iO+TsFzv5HiFDZe4nzG5NfDmGXwgvXqUhVdob2zWwR4LbA5wmjl+dkvDh295UnNSaSL7p+r3dbLRG8ZWO0K9UgXoLAleWsTNe1DM0ZgmV75VL9iW26qlus6IlnDw0L764VBv22Z7vZrnWe9P/hJn8xXZX6ASi6leHu5c6H1iBUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzUnr+NL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzUnr+NL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759014593;
	bh=tYF5hkosHd+rmPKwSt/i4eu9Y9VsjvDCza0WfEcTjK8=;
	h=To:Subject:From:Date:From;
	b=gzUnr+NLvtnCGlfVgQK0TBP7sdZ+AaNADazJe86G7m8Rsj32AaUSrlRTloMbAqtXd
	 Wnl36wxZbI73Hm3w6ObK1ZWcY8kQFCxuABgV+iab46p8PrUEC84v4aWqWn3EMJ7nJj
	 Zfyf1xXj8PKjNPqXshexqSQURB/6mAmPGkOXijmd4NGSFdUIgaZhSV64gzXFAYimcZ
	 pxlmNQWPjQYxgjcWjywGqqyIDBSHd8U3kFpXAWw5yiaO79zeQM/joiyzpfPAyNwDKZ
	 fT4mi6pyOxyfH/u7HypXOG3wSrmBCbMCxl5e7HiKo69zIFqcIMFlmi6oWVvNkg9y1a
	 YQAgGYONdxDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976DBCAC5BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901459358.24940.13106024937934544817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4d7efa176f533cdf3f07385628ceb47e6a4022ed9d625eb71e6a9f30d5ff77
Date: Sat, 27 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759014593
