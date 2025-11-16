Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A007494
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763271654; cv=none; b=OzB7uV7Ss7lVECZz+kYd8FkDqWrMll9SMwyOxBvqsQsWfe3jmr095D/2GZJbJM+xv45A1aFSezn52NE17AhCz2uLKHienJUYfsP8BmJfaWSCXmrMqQ9phUoIQdDANdORCLrI0KH/UhhLaYdDW53/80W06i+ACQ64BbDfT7Cz0DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763271654; c=relaxed/simple;
	bh=XshT0U783M5B/jOqSnCzhq6FvWopWNOva6gIB4OCFZg=;
	h=To:Subject:From:Message-Id:Date; b=P064H+VsxV4kiOoHjmymUAqkVovQy0ZpAPIrJeGqpAJsZybJleKfIKlAbiK7ynXfEm7p+BcubrUa9oJvO9IYbnMC9mfViYc82eNLtEVb1QCKAr2igQ7Av0Ae/jtvKOKfbeqv4PungU1AyWJWlQDkUD/lYi53VqfgL8z2dLw1rbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqE9/ez0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqE9/ez0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1525C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763271653;
	bh=XshT0U783M5B/jOqSnCzhq6FvWopWNOva6gIB4OCFZg=;
	h=To:Subject:From:Date:From;
	b=PqE9/ez0ef2P/8/lJGeKf6W67E6JIqnJAOEh3TuNccEBNLEVGof3Hg0mCZLKW/k4m
	 zgjW0osmPpJ4JonFbHrmPzvhbhLCQtUb2HK1TaVvNXpWeSPbQMMl8pu4MiSw+BAHyx
	 WxOPlog6YpX1LJNZwZtjUizmr3B1Sgk3zkyHR+vI9B036TthyM+dKvjQnw281kWF8W
	 1mFE94/KE6MnMIE91Z7emArnbtlv4IxOsPHAi9HGSA1ZY19WqpbIamRw5e+pK8fJc7
	 UbIEfbohpvM0Z5p0oLkRlYYU9yk/wp/7Zu1MjCrFLQv3Xk0IAjTF//bhPj7lYpnMYK
	 FZ+wSnx+/B6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F8CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327165357.31791.11356308981724549223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db4d9c49f239902fbaeb9068ce7327e636ff9abc55e58ade44b6529e6e1d315
Date: Sun, 16 Nov 2025 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763271653
