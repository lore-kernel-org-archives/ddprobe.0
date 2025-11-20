Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F472868A7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763617314; cv=none; b=NeYeAHTN/+stRvakGXYsxUvjw49rUi59fubKfSjJEQLCDI0sprpWN9navWnAkwXVwqVAu545uRd6/s7P3ma0RL/R+Rze46b3AdyDkrOifpSo7UofudXf1tIl2O7D0XiFOIAROGqiPRB/Ldem8GL7/rdnllvS0sJgckywjApHTvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763617314; c=relaxed/simple;
	bh=6vaDtQaGU2u/uoHjDY5fmNmC26VnQLDJW7nJr0gy8Ss=;
	h=To:Subject:From:Message-Id:Date; b=nP4pgqoFCP3s720NvKUfCqPThyraqVydSl3mAMZkmxBMuhdV3RJ4bZOPNjZp9h9BcE1J5vXJ4xsCLWzD1g1OH5kNtI/MZ+GHeO7fU16AVOSwToSmef1b3eUHTbkXMWJsCg85sEZKW2JYMBgluIYNILNoMw9bUbu5p8VKXYxxdho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhS29zoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhS29zoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF1EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763617313;
	bh=6vaDtQaGU2u/uoHjDY5fmNmC26VnQLDJW7nJr0gy8Ss=;
	h=To:Subject:From:Date:From;
	b=FhS29zojrculuiGu285NhG0+3V9VYknc4MKBjb2aRxQ/WophdnIfNxd+1Eo0wMUHD
	 v+m55K5OyauUvL5NeCBTpovlUX/HZV1lBLmT+6UtaTWpAjne/s/ojWkqfFT3z2i4cn
	 J4oCm71dKcKAXOSRNeE0a4/VSzF666CzQc0CHM7CA/0pn0rFLjUOGergIu9kW9Joqw
	 x4iYyN7GW6sOg1o6K9T5HzIVHy3ehOevHHo10bx15+HIV+EIdDfHAo9lp/yqmuUak4
	 Fdw028bmlhwHMFWiPYQmVaRpvU5UQjQoesA1a1lVySmAC7Kb/mDDcWRvEjj2YdpIzW
	 g+nONv1MsM93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91011CF64BB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361731358.20884.17231255188011499508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64047da49b191c170617932f5dd3d8dbb54054968bc274833e0162890fe2a68
Date: Thu, 20 Nov 2025 05:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763617313
