Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312CA34E74F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774628694; cv=none; b=ZOEcCFUZ2oYFDpK9zSlehlwzv9Cz+3kfnLNA3G953VbpoFiWeHHX9cvNnVE5oR9VgNEQ5CnpfyVJIk+Fq1tM2FnEA0D+82yP/9JeIXMdIDGQH8P6Yj4Y0V+RovCzT78mQm0M1kMDW4dfgj41eAAqHNZZ4rkj9KWanZggzgTgrEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774628694; c=relaxed/simple;
	bh=5xAwkPAHdDpIBPzjfznyFx6NPdvIKXR1aK0109dERAk=;
	h=To:Subject:From:Message-Id:Date; b=P/LROs0stpUfr6W6zRoaxn/pBRdUKoHdcGhZByg4SQ8Dr3lNbi4xaw2BTAthTMOn1YaMtHBNXSmJBZrfJzd4TqZegnF8Q0swV3vA1mmlpkJugtZ1c0afUxukyhdA8YlYmU/SssFi/DTHQxHofBLy/7LUkv+2OwB2/S48NiV6CVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8zS1au3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8zS1au3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47FCC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774628693;
	bh=5xAwkPAHdDpIBPzjfznyFx6NPdvIKXR1aK0109dERAk=;
	h=To:Subject:From:Date:From;
	b=B8zS1au3qvux6IYr/o6SE/Z3SzTPI6tcUgtruxeCNyT9V7AhcoB9t73MSA59dJobU
	 u4NmgTL7cT2OwD8tD0JZdhZG5H5PjoYCti2Rjq1sJbprvrM5AovXI7XYBAR1YffpYP
	 i78GfX64Jo5TPudbQ8bWkGQSLxNSLg0CEZLALhRksSJT7bNrXYj4P3Rv25oDNHtTsp
	 mo0S/VdypuZkFQUZJpXw9VGyvQQeNYffiasLji2QSkRGvf+4kKfWD2bNIToDQ2/HQE
	 RtYmFSyQG7aQMg91qvME59hQybYHY8EKGVTnA9PyD35NbNmeqzWdGbwNzF9wQO9AQc
	 gPdbPDOFRdtwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A010F284A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462869358.12782.14323572898270234143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88127f356a00a6d0ff1cc46e93135b1dacf090703ef71cd7a4b3fd94cdcfd45
Date: Fri, 27 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774628693
