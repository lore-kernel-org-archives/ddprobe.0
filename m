Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE7B219FC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733544954; cv=none; b=ZHffFobkV7FB6yS8xunZdBWqTrIxPK7nGs2fE6J50wpCzI1jbdyog6r3Pdl/dReBIp9rhfO2NF7oD0ULkezl9XnzTO7YWboxpTPz1hDzQbPcKKI//iiVzBmr3N5FZW8k9z2qmoObE4+PUfnBoiB4UIfhAoe0TOnALJSLwzGvS5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733544954; c=relaxed/simple;
	bh=citWHTCkW1gGjPf564L4YoMjU7D/0iIuN57IsVlt1YI=;
	h=To:Subject:From:Message-Id:Date; b=aXKO5KG7VAoWsbebBs7Fj2m1x+AXhj5fdAL63asHMHiEB9UI0Q1cBYq4aYl0477ehC32/mLTe25/TqKSCYQX7P+ulIN5F9zFhjB9Y1UxltvfGoOtdtvq7NH7fEeRFcHBLWdv75kDViKHfVhjpa8AowAq0VEBpxBJZ+dzrIB4RzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da0hfABT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da0hfABT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18B7C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733544953;
	bh=citWHTCkW1gGjPf564L4YoMjU7D/0iIuN57IsVlt1YI=;
	h=To:Subject:From:Date:From;
	b=da0hfABTGcrg6LmH7KcGnDXntnm6SV89pIV9bf++p9LQ0bTonSJpgMeE9YLGL7h1P
	 4uxRyW/7QzFEYTspMzAo4Om588ADdriRVpergmM4EaHY6CXcfUQyMS7oWnAA2fQ9K7
	 ZmUbZxxFZrsQuVEoWygoY+Re/NhDEqqGhB4arkflbf1iOCjOCuBAPYU2CHEOL4CCkl
	 p75DAPWNzNFx4NbOJE/bJxGZKBULruHIwqW0hIAcAycnOJgkYgVSNCyfM8MXVlN7RV
	 +ixubGKTNeMxWYhxhB+fPGnGg5Lj370lEduETv4Cfc1kOsges7ipgyvuqpwlMdN6Cd
	 vC1qxKoBFRvMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7A1E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354495360.2613.7000335981343503079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d08deb88437c5d76cb8ebe141a62dcc276e2cc544712b309481d06af73e2bb9
Date: Sat, 07 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733544953
