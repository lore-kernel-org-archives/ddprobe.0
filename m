Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C77A198A31
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727093154; cv=none; b=F/iL7jv+p4aD6DtdYNiEEbXeLDvGN3J3UD50Ibx4b9dzzKZFumsTo2n2r+S7yseKX+RCPLr+YrN/c7ZAuRYMIdiRqOLWzyySG1e2VvrgHTMm5MJ0LjuzsU+BjG62F+vt5oa5W3Ca7jBEc8HY8LLS5+kuXRzV0r1toSv/6XHHjUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727093154; c=relaxed/simple;
	bh=xnpIcpChoMCheMV4jFA0VVr628lJlXU62o2mtjxVnu0=;
	h=To:Subject:From:Message-Id:Date; b=MkoP9TWxjKW1db/sUwerJ7szUrOB9azjE3wvjMFsLIgCSVjGp/pKqBVzUGuL9SSqJdMYEBb2i9VF3vHgnyXxLL6tnBZ8T1JWP4TLSecdsIs73zzt2pA7KX1TEwYkq64GB4yCBgVW3FASz/+86r94uzPuvDXP9MP2hsqE81bEsSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgykGA0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgykGA0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D11C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727093153;
	bh=xnpIcpChoMCheMV4jFA0VVr628lJlXU62o2mtjxVnu0=;
	h=To:Subject:From:Date:From;
	b=LgykGA0hYl7LfzrbXsosjswHWT/28HaQ96rTutF5Wv2XSMk2oPVaZGA776zmvxZj5
	 6iev0J8W0VXdXGXJESRQCxyvjdFtRBaBRN8CIy9BfVTgGQt/6Aiv4ZE5/f+ZSjYcq0
	 kqIb0f1FcwuVAxZm6E8Zv7IQoRvaAk3fpG3WlL56lAttU0FbwYVDI0S1WLVstgOURs
	 ut+fbPkJVszSIQ/gfyzLy/iUDZrOTPvNErPAkhIGZYKWiAMpHpzvMEIz8IqvBVWHKu
	 UntIHZrGf8IUfzH87yUE4Xdl5tiJRBNgyWSf0ygYWsWaDsoDG47qe1XIDxbLoGeLbi
	 Uf1jgUJIPOAZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D0FCF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709315360.17080.10868367732404166769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596bf0f24c4cfa46329502bc228b8efeb68e8a789d8798ae1c195584e64cf570
Date: Mon, 23 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727093153
