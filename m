Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2237BE56A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750460994; cv=none; b=BpBiHl64yNJZEYBzAkSwqa0UeQePv7AY0oP6W47AL5PGbJ61HidXmSatM/3ahhym9li+1jGjFPq5AL361mMPXm//oVNqblHy7or4Shm4CvOgKxnCYqUr6FhRHgWXyZSp/DOan2kCcvNx8Qy1bJun11zGOTIt5jLnEQz/agCSnNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750460994; c=relaxed/simple;
	bh=yQdWelih3eIiJTAGSJ1v3MRF0WCjFm132MnQnYVV030=;
	h=To:Subject:From:Message-Id:Date; b=m3ssaZEVXONad2G6CqNrpbUbhNf/Unh4yELAc9eAkFIGfxFOocVPBJV4PF/LTW6OcMxWN+6Xq/Kgaz5qJDSUApF2IznM22BaAdeAbYsiScabZvyeFoS3vXoZlE48mvGLP5wkmSW4an29cVpCZyiOQB6dD+DcC1aMND26azS1ovI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGGNxN5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGGNxN5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DEBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750460993;
	bh=yQdWelih3eIiJTAGSJ1v3MRF0WCjFm132MnQnYVV030=;
	h=To:Subject:From:Date:From;
	b=AGGNxN5kU53z5K2URTqOFkKh6MB3Onp0jOWNnmWq7rr3b8ngMxyhGWDYMaebjbDX1
	 BWhnM6dmfFA64n8J7NVyYJkkmFUok/rnXtdOYEQX1IKhGa7ReT9z9GXdA6JCgkQNQw
	 mPjPY0zAFUKpRmp3bWbZacpEt+kaxyp8siI+NlMWGt07THpq2RGHzvZSC1DfYIdqKg
	 mvE+0uUGP1P6YnJgZHzLGwmKo7qJYNDy2vp9a/bEAaxcptSfreGOhs5jDpNu4Fpy+h
	 eTZ5maDL9cr/IKde/a13Jo2CHAvsVZsQSdp8A63FrTBjBUKT/SVSY/XCxtEOUTYV/F
	 qC0quGUFRY8Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD5FC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046099357.21392.16357237370774569771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f52c9ac783cfc1efbfb0fc36c95c6ab6f8bda5fd5d07536154b48464aa0199
Date: Fri, 20 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750460993
