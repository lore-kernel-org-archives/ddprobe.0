Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BAA1E0DE2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736199354; cv=none; b=NL1vmaf02JU3Gv3qRR/CxoR7dT+soColRJMxps0AxXdDqZg/EU5RNXAIHx/QQcpRLgd14CylHfDs0zIaymLXbVmtUMTWkFyuZD+OGvj/1x5ax24zdyR6IJG1A5waAMu+qHAgmc1nSVNPBPNQRApyM6igWN269mAe3xn4xz84yU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736199354; c=relaxed/simple;
	bh=/iMjSjFpw/EJJarUH2QZc+OqmF7Cef3/+92wNj73KrY=;
	h=To:Subject:From:Message-Id:Date; b=topCLYcvxJUwZrpW7FFsgZwqLkVHcS8ryfa1R/jug0JibPdzWs/krijLtB7KQu91tEOh58MJGogNf6y4XuBxNFUsD19uJYMND+E22nvzG+yn7567u+VcAZgKo/gEK7HYGQHXwK/QNWfqInKP2E3YGr5/inlnUZZDgtlMwr1ADpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbp7QqqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbp7QqqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8CAC4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736199353;
	bh=/iMjSjFpw/EJJarUH2QZc+OqmF7Cef3/+92wNj73KrY=;
	h=To:Subject:From:Date:From;
	b=dbp7QqqONjh5o/KALskfeQuu+P5HQLr9G3n/p/xjJtjuVtUEv1uYsDcZAkPuqqVdF
	 WZm6cGkU0V9nmt8TQ/gCf+Cx9viIAnC5Ai2+Gp5P2j8rryVevhA92opxkZA3EVKfIy
	 E2LGEVGF6D3Fra/0Wxt5LkDd87oxHmM7lKPgH0k1zU5V2OEftfDMZBnzh5nbVecFzJ
	 AaLUxcKZr2/vgr/J5HrDOvrt5RJuRcSxjg64OQ5GsMfaPXh81+3v+HYHcnVJaRHxAU
	 4xL89crQdSIhnBhRXgTsU5rImzv+cHLqSZPgLyuWgT9UE6fBhV5ezHfDQ9UpNvzkmA
	 IxTl6UA8d2xdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C554E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619935362.4878.17618222553284678440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5b1a8abb262ae03da94d9183812ed7dda4b7d63c37fa623e2f5b87c913a112
Date: Mon, 06 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736199353
