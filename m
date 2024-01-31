Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FE438FA4
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706740097; cv=none; b=XD+yJXq0XvbC52GquURgQpgSoN6aH75haZ1R+OznMChKmPMbf33MXmy9jcJ6YlRGh5tNsiBeJL5YzSSuIpIcMwXAkW21dhDiBNtapalBe1jkL87N3bQCaDAFnRRBXiPv/eFpeKdpgLRIn4SdSV8VYHbaaVCtcjZkThFQvmkookc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706740097; c=relaxed/simple;
	bh=9W2XUF01yF8jmvu9NLn1/D1iwkzlHCTrvd3HAs5x2e8=;
	h=To:Subject:From:Message-Id:Date; b=GIt5yWeOAaSawKn37IyGw9e3eO7vt+2+VxnM3tpdEB+PiW7H+66RIcyKgteo38bh+hXDdWVVTZgXFddD599QLlyghYo0isaEnFGmJDTcJeocbKHJl+FrDtfHviFcJFfnvxcCGSpV2OtsdFLqprZeR6eudOsQgys5QmFZg0WMixI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHa+HqV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHa+HqV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7F7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706740096;
	bh=9W2XUF01yF8jmvu9NLn1/D1iwkzlHCTrvd3HAs5x2e8=;
	h=To:Subject:From:Date:From;
	b=tHa+HqV/IeahwKUAlCHLqzD0UUhks0l7FaTg9oiKciiDZHHMdbdrLUYn7WYQRp167
	 BwaxPriAyo0oW7xuEuV69qhZluqvperxZMIWXpEAizW+M8TtxWSFzsff8SVw/04M0l
	 gwO6FODsSyoAhM6FvQzgdrMFyYI9avRfg6Bgi2zo0HOnQTaI46MOdZehYZzBiBtwiZ
	 W8AUFlbyrRbJNOzjyMjUVNmuNLg8EZDGxSh3PvqbaA4FLpq5f9bdl0TtfiUN1LW2vI
	 tbfMiewWwbO766TchRUqUdl7IGd45Z3JuJJq6zsT8nDWCudlbzj11EM3QakMFsM7VQ
	 YmkwBBcv5XvjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7B9C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170674009637.18106.11099073323578201165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7492e829543a83b46833d5ed02dab2da158b1dfc6108b9a553e96040a002cb9a
Date: Wed, 31 Jan 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706740096
