Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12943F9E8
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753249194; cv=none; b=fmlvtpGQCf2IjxmvhZUDgWHc/DTdkkuxuCDmh9em+AoiYrQlfLjSilKu5ufez7iYXU+tlisjNaHQMInff/3YjnVptfL9N5ddD/NQqw0ZYQ4WA6ql70TBOSsO+j9GfIf4VCjjAPvO69c/jQEcQtk6X6Qxtlc7Vfrt+mGyrEbioZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753249194; c=relaxed/simple;
	bh=8TLQllVdxHfWw33RCk5IhYyiJYLTxaTPnhNGlRmtvbs=;
	h=To:Subject:From:Message-Id:Date; b=oHSK/tIwhM5SGOcjgpvlnQi5pAskYjc1GSwTNrXjXXtZXO9BAXVtX9hjmDbzyiWQAIa3/Ydab2KsG0nimNWtVMxH9MFA9Fdk/bzj+0JDaaffRFBTf9GJXhUKRdFwy6gBgL+r13iArhCRo0zKD6UrdBsvobZZVZl3/upWhC1hGgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cL5vxXYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cL5vxXYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF66C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753249193;
	bh=8TLQllVdxHfWw33RCk5IhYyiJYLTxaTPnhNGlRmtvbs=;
	h=To:Subject:From:Date:From;
	b=cL5vxXYfhXQ2RN3j/saHK38ezsj30op+EbhxSfvMMqtwCHgu4h0/ArfO0hWNnSQFn
	 CYqQfSUug+pwAxFSNhypvYRl0jusTr2u7hH95CDCFiykl90s8XIXZrEZ7g5DLghPnd
	 l/9hkIf6KUJnwqMCgeh+8RGVhcp+9kwhxpQx9FSrmSiuyzraS0BC5mJRTuxIt1M3hg
	 eo/2uLPTnyp4yBl6METKgm0np6jbAhzE5HdfJWUjFXUU2vCJOe0OCBq1OICaDAWJtu
	 v8tFhprYDZGjJJjYvVnKR7ebAvrgCNHpAgJBtJcTeKPVfVDr4usYy5gLO5j1PXKj+x
	 h+OykVHQUWg9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3FCC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324919357.3620.13189870975456533704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8171b576de5c880d092965074f594a3b60431f305e346187746747c115479117
Date: Wed, 23 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753249193
