Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2495630E836
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775069734; cv=none; b=prnXl2YbF948qBuTEV1sxbjizriEF4P/2bNA32X/QhTeI1p33wGCeSNdr+5mp+mXSX1NFsrLuSpgWw7cPVkM70J69wT5GoNghywDLw1BAU1Rr5bjJwIbZ4jQryMWKwyNbY6KYnrrxr/N5ZidE9xmtbpF/Hup0MvppQJZ3dcHZiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775069734; c=relaxed/simple;
	bh=siouF42o0CyYy3/fh2rYB0oHVRMFPx/hyTOFJY0OWwg=;
	h=To:Subject:From:Message-Id:Date; b=PE6CRn3C5sEQOwr3E1AzQ40LVZVfrZYtQk3bAtCcPy48mANAllrV1/eDU8tAQwvJadp2/9cqXOj/1jgrUx/dRrlPSDTdG8OkDIg6iwYhZFdWxb4kEoAFgc2mO44ygRhTFdEzQ69ktFxvaXGaHU7DRETYR9Z927/A85uBwsts84g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3cvNMCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3cvNMCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF596C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775069733;
	bh=siouF42o0CyYy3/fh2rYB0oHVRMFPx/hyTOFJY0OWwg=;
	h=To:Subject:From:Date:From;
	b=f3cvNMCa2pA1/i1uYW/Fr94YyVZt40B6W/u2tbw8rYPSq9dkPu4l7lbW9TAK+OYCT
	 Z7xWL5vH0OcErAFbjQGd4oFW0aMPaz5gHEmnyyDO5GcM8SQ9XKO2iOUkV5jxO1OnbP
	 uri50SgjLQ4xm3b/sNSniyhxxHBJca6lKFmVvr44fS78D00hN0wqh9X0OXFNhGsn3m
	 j9baHc2a3mV9u3RL8TD+whsKy1jyZKPt0qpVT0rmgIq4WEuL8syDXVpb7YiAsnzXJG
	 UKMJCGNlmNUn2VHNEnFu/f85b63v+/8PXmIl7nGGA8Z9vEGY336ubNnd0DUk+G/3Ph
	 5eaxIctCGaZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF4D10FCAC9
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506973369.3929.17705964717350129863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7026aa8e7e2a30d1fa5d1a77448324111b1e3c6f45dc463c6fd31d09da67643d
Date: Wed, 01 Apr 2026 18:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775069733
