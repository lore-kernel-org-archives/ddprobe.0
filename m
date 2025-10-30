Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1675837A3A6
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761846594; cv=none; b=Kp62lcgB+uw02NlGYxKeHr+tw/NxcSH6fOPtahPUf3nIejLx0V2G35QD19tGZx6haHZdLFQJFsjeWyca0Spcw0/R5ufAGWIDLYeLM/3FgAEZwOqFD+LfLj58APecbsr2PTYRjWr58GbgUfZEIJwjNVneBio2P7vVQwtfRlCN7W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761846594; c=relaxed/simple;
	bh=+q526YWanyeATlMTjH0Ex8yrOHRj6WnpWwIA+uKSdtg=;
	h=To:Subject:From:Message-Id:Date; b=gKny4bc1u3SPZL4m5Tg5Jf/VJx8YwDdINn/KiqzBXYqznKEVmcettaYcFbqZGhhGjQYQYZPEbV26wbZKIWyImagLT2iLjZey/TiVyQbcJfhT4QkAKOqcFhubwZ1zbhJaiqSnSAbQ+ZLxH/1r7cbRuBRgNSWZnHiIdodz2OSzYZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vO3hSlI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vO3hSlI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE69C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761846593;
	bh=+q526YWanyeATlMTjH0Ex8yrOHRj6WnpWwIA+uKSdtg=;
	h=To:Subject:From:Date:From;
	b=vO3hSlI9JnS3WPWL1AwOAkcRkYGMQQ65EP6yPefK5/KFtfnhiCsje0SWZOctBO82e
	 nZ/SJ5jiVykFBcHnDTbklno90idVxH9jB5bUJ3ExObQlGI6pJW59Ggche1IWHyo7Cv
	 SAxq6SKxUpbxZ/DHaJi/DNyGequXiMmSjNGIBpsddReRNl5MgsD7c+fsJ1j+wTq3nV
	 Rq1IT+EWVx1kaJ8ixgG88/8LJWc8BMHMsSLgBFvnB2ke2HpkHL1znbOH/5YGoTZ+Dm
	 mq+KkPdbpKwWFcvKwpQKo4bEf1chcq9z9NIuWSmrdAZ45gCsnJt35X9j0DmAzsoZpH
	 nSKUOdk0mn2tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C41CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184659358.6720.14361043037123713783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49395e603167ee55ae9a1a505494ac5f79f7d9a839a0ae92bc6d4214a0ab139
Date: Thu, 30 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761846593
