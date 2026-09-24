Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEBE2C11E4
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790226034; cv=none; b=WJCa/0GZJHAxYIGJTOL7qJDmO45m7sP8ZcuKRnEwvLYGOiaxqq8m/KsbzuHEDOwQLlzRcgxZ2/Wfz7o5atpGmLGOqfWaExdJH2YdVmt1zuy0KVhAuEVqo8u10T3S8YVml8GUZHxX95LZI55ZPXZWYevh3u0LNCI+ipFiaxGE33k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790226034; c=relaxed/simple;
	bh=U/ynenKoT+WfwiBui3UwwIJaWEAKpcCsXkEv0twkhwI=;
	h=To:Subject:From:Message-Id:Date; b=tyOeKwmjbXgJ4qJtyUwvK/pKq/xoB3ei2GzLg2Utf4CP6xQiIY4zsTkVwwHEoNLcy7o2zihgRzHba80AatRTjlSGssCTqmALnX+jPQFhJD5WowL+vX+O9gOCkzRe5ymlyJazGYB75gOULObF4aq3fYsO1YhFJGdNJkikVahCktE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1pfWFuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1pfWFuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF251C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790226033;
	bh=U/ynenKoT+WfwiBui3UwwIJaWEAKpcCsXkEv0twkhwI=;
	h=To:Subject:From:Date:From;
	b=u1pfWFuofOclzYkgZXax1Oz/bgo8+Rcy1bUcDfTeHzXAxwc1901J1upvck38t48gz
	 tXdC/xkTQ4Tq17X/n9DRZq90QNo8VxvIk/jSfipYUACVHV/o+omFenOoPIrzVa81xO
	 D2O4c2Z+wTWlsOSMAFlo8gQQh0ISXKh79t17bozJUboqB2PBxh60MYbdlchya7IXhW
	 hVJqzAUykwOSviqXMdl++w0PVwOBGe5Jz+9ti1HpCaef7laqO+dPHqKtQORUVsA7Js
	 lLOZqH5giN8/A7o9lQNk/ybthOi2iDcI40mSrQSEEEwmzjegwyaVWSexPjXy1MLUZ3
	 PcA+AICI0EOdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7B5C98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022603370.2824.6454377217394399697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f15180082cd18ea748aa111d0d56654f6dfdebe6a5de6f89fe308622231f5ab
Date: Thu, 24 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790226033
