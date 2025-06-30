Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2456F23ABB1
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751305794; cv=none; b=oAodLY8aUDKZXh5TJf/75va/4sM+xPhKjqVwrjcsKyL/qI4+fgnyf64EfLMVEw7FbM6Yi/44jLfbfgObSqebYEXlPLdOckGurXH/EX4Pla4+OFsNVFcj7zylV8aQmJCpWKTpMGF6Yf1SoVBPD6Hnc/+RRwXCHWo0WeIpuj0lw1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751305794; c=relaxed/simple;
	bh=9mwkTByypTwRYqSlyw33yuj6FrnKwevvbg3qHNjNq7U=;
	h=To:Subject:From:Message-Id:Date; b=cDi2MYT3dryItGlNLUz20W06FueOJpn2NqwZVJKGvUVg/7jP655ep5WNGUxUDhYoAI5SwPkVBkyp/Ppgg3YU3Bzykx8Of5dcL4hv7Ml6LK4e9+ZKDcjLkWSuuE7YAdpH1reBZHplQSCXW31iosqYTU2OVgO5dyTD3blZHenQefE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4V6Xjw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4V6Xjw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D492C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751305793;
	bh=9mwkTByypTwRYqSlyw33yuj6FrnKwevvbg3qHNjNq7U=;
	h=To:Subject:From:Date:From;
	b=i4V6Xjw993hGGHrGc+6385b1ucPQbBK2JZzvmivGWpPj8KxkSlVxt02sfgM7Yiobs
	 rgCygnBCmfzEjCqywzI+yPZZY06hgrEfqrNb6caW83r0bW2DvDhmmGkimgxehr/41b
	 86S8Bj8kVzqAKosHcg5rrGeIcKQSHoM/iAuDJUKx/OyAnB9FERNGz/xVrwSw8jUpCS
	 boP7iPXYEo1q6iAAkq4Ish2fOR5i8oWUIF/VscIo5nVxvDM9PeqUYpwbamGwH2kzj/
	 qJmPPdY+2zIovgcKNchLE+dMjnEHVbz6PMbHS0I8rtBwKmndEtDGwRUgXu8DdsX+w/
	 5EvcUahcyYqIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E629C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130579357.32235.4981317321894020406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f356622f748d240e7af1bc46b108fc5ff11dbfeb506914b359a31e63f4724f74
Date: Mon, 30 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751305793
