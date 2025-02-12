Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EA8209669
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739370416; cv=none; b=Q05ZVZ4FBHOASYRt7OZdUeN+XBBr+Y8TlPnWUKXkhHe2QUo5wU7rIr5e5hYWtrHbJxyApPjXhDrLCoakh37iJNsxlUCsBUpTAmXyHYBzPQGNhV4YPD023c4ShvNAwEQdweG6kugLB7wCYOD67GqmySIIN8Y6/pIi0yPeJmIK+jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739370416; c=relaxed/simple;
	bh=bKplolvGeEQqmeEGpSHjRD+RUiNAlyxi1O5oKiB3T/c=;
	h=To:Subject:From:Message-Id:Date; b=SlSgdJvshOIxahUbuIJ57zbZfDNOKSegSmE1u4EaHoxEMY40Awkffzh9LdZ4m0T+sSNGTt+6tRVWCEzsycCtVfMxXiv2j85YKSG8mNQJDJQhXKUpom0skbH6Ep8ga8uy9SchLdkUokax8Daq3WdhR6l+BhKlNUgW56A8+Hy9PW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qz0ZksXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qz0ZksXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C786C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739370414;
	bh=bKplolvGeEQqmeEGpSHjRD+RUiNAlyxi1O5oKiB3T/c=;
	h=To:Subject:From:Date:From;
	b=qz0ZksXWvmnMWLJ/aYVR3TgwhPjmev301upRnegL0qqgWVZGyGRzTM0akLB/TPypk
	 nN4rQIi3LzxCtuyjia5yoVhSkPbIKJPHCd5NRh90sHNO6jvH5otO1GguKxbo0ulynf
	 ++Y7FJeY9QfD8LvskEDOBVZEoenUth7YR1Z1DcB9F7cPFIR7R5GPLrlGCzGdqENfSL
	 NTsvMGvSBVKCtNIkWM3Dr01qlQyaNUpFc5fs3kST2SDxkQWRYI6Y9x7NQX6ZvuyAiu
	 u1imJCbqji9K/nETIN3nNRPmst//vZeG2jbz8m7iU9ou6mzGoNvoLp3SBPHFFUWpoq
	 v4hTQAyZSW6yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33FF3C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:26:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937041407.20285.7332301051778419311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9a0947fe651200468a614f0d5b77b99423e01c2e55dcaf8c2ec689347db8fb
Date: Wed, 12 Feb 2025 14:26:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739370414
