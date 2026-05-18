Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFF375809
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779074434; cv=none; b=J5/bakwwt3pxoNQjDb1/dAXMLDuCKADYNCmarscp05Sq6CScQURZMAFd4nUgvuEwKQUo4UnAzl0UgKPtyJypn2ZZJnKwlRRMvDPQqtjWr+0ZqNvgra+YWMkosVBK7cMzk+KTzgheF6HnK4aQ+YiEqh9PFw//JjzX/r6HIB1GdiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779074434; c=relaxed/simple;
	bh=CO6OGra9gXwLG7HObOI6RlNet61XRmrlM7g2koA7LuE=;
	h=To:Subject:From:Message-Id:Date; b=DkcGnhLg5ZVPOIkqNruPeDPw6vbc+EOfT0cHW7t3Y2vrDXmIFKstavUbvNbhU4C8SLj5ZndZi/Dc6Ghgt5LSuVvzNqX5qn2L1+UinYX6q1gD2qrwp3iQpK1f7jbdwr0cLFK7eAY1f8JOg7WMATEVoRru/J6dkbdHwkNyPu4owO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwcY8cdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwcY8cdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C014DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779074433;
	bh=CO6OGra9gXwLG7HObOI6RlNet61XRmrlM7g2koA7LuE=;
	h=To:Subject:From:Date:From;
	b=lwcY8cdfpOLwpEx1QBTtThnPpxTQuMf0D+LZrGgj5cK+CQ4IQYBmy+XkbKQR0ez+e
	 6vs7ns+cRsUYMivBpA2dCaKFh9w1EmncUM7q+qVgikF5xCKfiGI66PP19TEWfjzvQD
	 50Gkil8NNqAHTvOtHV4ixB9eJpIS/oJOUirytNGyV2BzPtrslg3kbrD/RMh20f+OtL
	 DU7xtOQzHkeyUjyLOUEVFA7YShygTZw5f2iOKDdmavGaRYGuTkxNPPGpRL66zRQNIm
	 Z/STbUoHttBg+1E2/zwuzqjxI+Z+xefSxe78dGzcHDe+k1Z13yXVa7CAhUGYh6ml4O
	 Xl7WQX0KrnJMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD35CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907443369.1810.16394635114253842584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7712eca8535221d09d1395b40fd876c19379e0f72ee2a04a8adb8a3b7c36fb4c
Date: Mon, 18 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779074433
