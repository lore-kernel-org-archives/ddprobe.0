Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3186D2874FA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771003494; cv=none; b=PgqUzjGSNdCPHgSzK5zRKvcSsou/cEedFUa0Jwp8IQ2klPI6IH5/jPHjG5s3nzb0FI10fKAczdJfdwDOQ+Zx3m6DoXoOT6do8Lg9HNpjpgmPs1nN92RKgjtGd/HEP1epEOCjteFZwrWAaIlPdJ5otB/aGNdgDPITHOTDZbmVU6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771003494; c=relaxed/simple;
	bh=sbDNwQeayvIVzOMzeIpoyfclxrywJsq5eLg+mIRoP7E=;
	h=To:Subject:From:Message-Id:Date; b=j2UzLnIJkQbWllRWPJg7iGJe+GBHQWHLufInAtCBu5sDPBAvO8uWGgQ+xIeRqRR6VBqvtu5FykGlg91Tyw00mKbpaiEY354ZLt9ga07uhr5CaCX1js9eQ6NR8E41uljZbKxooZsIhfefl9KKPJICM5+5Wam3YFv8Yajx3zsD+xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhU79Z3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhU79Z3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BD0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771003493;
	bh=sbDNwQeayvIVzOMzeIpoyfclxrywJsq5eLg+mIRoP7E=;
	h=To:Subject:From:Date:From;
	b=QhU79Z3zhQUZPWwj3Rtw595F4nrwuzDcDW/ufxOkDqJ80ytc3JIyRP/V/iO5Y689W
	 yvfDnTIHpihle1iN+yWSfHrKHaYMoxbgu+yTRhVypFLEZRc7GRM3m4gWknrISBQPO5
	 biZmxGhTuQj9gMvraBodxdBStVb4YmOEVSAs3MRxXSKIUxJavkAzDF1y3512jSjFRN
	 L6QuRWHqPy9A3ilNtKGWcB58rQ93B9lwQfRH13Tb6FQVe7XQCEVxgywMEfZkIUOd7K
	 602S/1M0HKMl+I1cP4vpH1Jl8RaBZYSFseTqMOuTnnfkMAy41Q8drsGG0Z0hPS0tjx
	 UGyjy9d05eKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC914EDF17E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100349369.1828.9188901432650105065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38f6dea2a27bc6c2683a39896c7a1540313cc41723c97ef65df8e3e04ad5e8e
Date: Fri, 13 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771003493
