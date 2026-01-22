Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ADF47D93A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769062434; cv=none; b=pBa+4q21FnBYtbzCk01MHf8+NFY0WeUs9JK1mCHJWqEEjsWuWy5MvsLX55rMD4ygm9HoZvY9gWaJWNpGKs+nDMf1bpKYpRvdFnm835Lt8jf1/SDDZSJ4LPZWPs2tupjn/AZjiLhC7ODriydjKkX1jHJNH2PqpEICowedS/IZuvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769062434; c=relaxed/simple;
	bh=zvasfVowhlvowqPVgy5O59db5ICAGYCiK3+JbvMJMO8=;
	h=To:Subject:From:Message-Id:Date; b=M0b10X9S/w73xZ593w+Ez6Y4WfYpcn8VqX/YT4/pn+gY1RH311qZM69tqdb58EUbU2D37mrchU53/9wU6UMhNglYp0WAUwT7Idk5/zSFw39K+B9tOy4MZmj/5FVOdTfacwcVPbuG4/canUsXJ+ikZEvbj2P0o0crjkawDwGI3NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSbpYIo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSbpYIo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEA6C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769062433;
	bh=zvasfVowhlvowqPVgy5O59db5ICAGYCiK3+JbvMJMO8=;
	h=To:Subject:From:Date:From;
	b=oSbpYIo3ZmRAqy1eieHyv+n8aaIhL70pRYEGbYXysHaHb8i5yJ/NzRcD0ZrUsh7PN
	 UQDY06Fn9rLVrhHrRAeooKe5xGDO/jrx9m2xnAAbac6ZwMQjiIzaQiFlpNDCYvgsFa
	 WUIkSEdyWeHzxihpQ8lhgS62uO5ZWqtF473SnOkk54Q2YJLMHKyNQBW5PqF6v3NYvV
	 42R06hUdZtyKg8HLnsBU/JyjHtgQCvXZImBsHTfYKyFtlES7GoMCW0YMuZiozyGCd6
	 eyI9pKo8iuyN8agLdZXR+o0SXteAoRDCnaozwfTtnG85Q81Pdwj7u+Xp8nHIhav4wu
	 q2JEOSYpp94fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D0CC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906243360.1282.2940079150794848111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34de410d72faf646575b750bac2a12d22aa5b3a5b0b8ddecea882ee27eebf40f
Date: Thu, 22 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769062433
