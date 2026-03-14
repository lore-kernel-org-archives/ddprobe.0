Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139F91BF33
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773453294; cv=none; b=G8KlsdpNQ5m9BLwKXPfCMC2kIus17SMTIrs0XQ8LTcq07lH8TrLqP2q8otjTugPba6gwK0Fh5DIDnzOkQOqZo2v0eB60GbVFHydws17eR5BvFZUjXkBarKVhUkJD/mCOalN281wQwXkXAILprNQ/Fejgrw0jJGw9Un1CE3rCY+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773453294; c=relaxed/simple;
	bh=19S5nDt8d8H85hgXv2ZBOcuZgHZAFmXgHChypx24bwk=;
	h=To:Subject:From:Message-Id:Date; b=djgZHf5XK3Fpv5TSbiLF9vxXvZ6FP4mXjNEQeTBsfRIqrbfzJCAK3VnBa8/h2ecnIBjMlPz79GKpCMNShJUKRwTkocNQRf17qvd4gnIYKw/PE7eq/bNU16f0PKSO5ba81NYtCkfGJBDkrbcyRrEKX30F9tsJ3Fr1Sbza7hqMm6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXKBI235; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXKBI235"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC1AC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773453293;
	bh=19S5nDt8d8H85hgXv2ZBOcuZgHZAFmXgHChypx24bwk=;
	h=To:Subject:From:Date:From;
	b=TXKBI235BUHml+9XVkfR7B3C0lnET7r46dSxLyXgV5i88SFmB6TdJ9JzU/3W/kmWN
	 WKgeZ7CNuxDbYXNCIBENaIHzP8828Yy+3NAO5u5QLbGVBglZkOcz0oRFffYv2bXmII
	 wlUFEGWFbaFX2cu6YZzj43yoeaVF6T1vl74qxuqjkrKGCkvN4gggxqDuiADhMKHNgv
	 EytioV4NXrYxiy0zOkM+435iG1CShiccpRQkmlvaFFsBHRr0ersjEePdsDpIPsn3mg
	 AUbfvoK0xsn0I2A5f3koQnR5CvFGeQkp4MjBtK+hOP5ojDyZBLfcPOEk2Mlwnvn6KW
	 0f6fzMm8MGihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C869107BCD1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345329360.24224.462035821321313958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4b7cc6618caedb1814ee52f5e82214329b1fe241285570e788e771b9a5661b
Date: Sat, 14 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773453293
