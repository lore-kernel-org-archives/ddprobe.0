Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F267B261B9B
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774131294; cv=none; b=ctT5F0c6pcuKIG6ufxvQXYuwuFKVctSSBXQoTjkt7c7boezSnPcSHvpSC2xV8dnQ6YqZ3ULxz4NZhbqJhVAlBMlQ32xg+ZKkKggJwBZwnxz6rqF+roA1WMbwU7Rzz7YK7Ac4q0g6nSCtiUOTg0CaT8gPLh562i4Md2PUEIaz9ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774131294; c=relaxed/simple;
	bh=3EGsP9ULa/TNkOv8MvwxqTzVcxqsiqjHFNdusgppTGY=;
	h=To:Subject:From:Message-Id:Date; b=Vacoahutx187+Nau1B8TbjU0iPGa7Farth6+yUdKAYhMRaR2hS6luNmBHiz/tH1PxR56uO84Y1TT5A5LxNHVIC1BhITFmmLdeu+jJf1mJtu8JS9WW6s6P1v8wVIuileynaNQA/4/RH/gX5YvEqCQcouG447J9sPFKZ9MhaTeeFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itRg9hc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itRg9hc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FF1C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774131293;
	bh=3EGsP9ULa/TNkOv8MvwxqTzVcxqsiqjHFNdusgppTGY=;
	h=To:Subject:From:Date:From;
	b=itRg9hc6TGCYLS5djvHAHcIG5lx04UUWB1ng0oLhxARe73DfVn7L2xYtKyzCrRegw
	 +UTe056PRr+KcKCyj5Fj2obuz3Zdktrmhlq90Y+UW0CedYCe2Tv9Mkm+zmnskgEqRH
	 G/w4hPJQXb/boOKof6dJzOHoAYj/sMryx0OGmIrtXHejt6vfFoUo1joNK0fSlSeId8
	 SDG91PDfmao/JqzP+1WnO84wbhd79SDnXCU8MFF3/Gp0pfXmg5DxftVH4qc/TkYlCa
	 AlwInxUZnZg7CFjTlF/oq+rMMmBPLAt2b/bs+tggK6k6nClugUIw0Quwssg/uJBbBD
	 L8pqPtbihUmOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933EE109449D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413129357.2064.1383713388412309859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa72d45e5305f6c342b31fc1f69820e26d75a1a42fb6c1f684c10811a9005089
Date: Sat, 21 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774131293
