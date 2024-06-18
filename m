Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A3F157A7F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718711963; cv=none; b=baPPDbsObiYUY67O2p9x21MiAZ4pxvSHTtc2YEux30oLDoDbicrHrcV/oqJK07EqMf8rPBSoLy81cdYZofLoiQAXlusTH9CoBAYU3yEfST9OTMvc7InADtcxqOzz2abC305RdL1pHHWjUe0CrH5J5+ViIKVB6vZCe81tGLEM01g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718711963; c=relaxed/simple;
	bh=iNg7UAL8dAyGFro7SEWp2KAzCyhDv8QftyLIA1ggEoo=;
	h=To:Subject:From:Message-Id:Date; b=DJG+AhpNCAF3lfVTCWpZta7rIbThs2VSAxC6dfNcdlUUXlq6ibb+CdT48wjzukItUStpZtVKnxxcF2MNov/z1M+MUUBZPjhNvDny9I8IWBiFnSAw8ZtKoZKxXubtFs6Oy5K50wbrHGS7H5st1ztIt62QcgtC8bGSwFkdp04oR7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNtxxxgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNtxxxgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C0DC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718711962;
	bh=iNg7UAL8dAyGFro7SEWp2KAzCyhDv8QftyLIA1ggEoo=;
	h=To:Subject:From:Date:From;
	b=SNtxxxgIDI74mBCOUyjMHyIkdB3Izck0vuM0qaqvvJFQcwUl/Y7cZ6PttWUWLhhK+
	 BAGDrnrcyHKj5tKRiipUpalTX+sa8m0CmOd/64ZGJUdWIOFgLemfa/N+59Xa3Nuxc9
	 D8pfWQsdXncjZBc6u3Rkhyi0Q7qU/FebMNs6nXgUgujCISrJ7U2PMupmHCRwyW5sRg
	 ZJY0BdrdtMtcJ3P5gTiDbyEMWsMGywim7H6oVFds4YVxK2z817A15Qg3Te0K+q31Zx
	 /plsXGarrDdt7rlVyNSbE4uo8C2FPI0cYsEYnBOu+WwjNcDJZjtbT/5pmfnVjThynR
	 DgYpz/C8mCM2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C960CC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871196281.23296.7619023388891084024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263c8ba3c84c82de594a8a1ad63996ff880ce674624d1e5b09a5857d8ca9ef76
Date: Tue, 18 Jun 2024 11:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718711962
