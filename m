Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5EEF28FC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733568954; cv=none; b=hbYXJUw81C2HsGtCzzZBVweEoE4bUeXtu1UtTkOOTrPlgfPX64GvNnYGYGByJhX0gmwM01ghwXKn5w1xIrdRaMnsvHkIy1iL6mrrZFldH0RUs0j/F3J/3fd82c5TPdbEIHpAyedREokeN6Zw3CkCLtrjKBCEBI2KDJaMrWkdDRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733568954; c=relaxed/simple;
	bh=8FU+dp5jLhfwLchSQQuAz7c+fMs6MMKZZSenPqN+JrA=;
	h=To:Subject:From:Message-Id:Date; b=Jr1CZfhzrZ1vJPBqFrJB5RvC1j93KVise+OSYybbTXWL9UZxtPIIaSghY0SHro3wxG2t5KXO+flzHFZxVcvqVnoIHzKCiBs8m7JKOWu7tYASMcic13eVgreXDQz6tz7keThQ5/bRg5rBGz/z9dsfYoKocJKae/QS6FRoZ9wllx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrlNbPW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrlNbPW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20A7C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733568953;
	bh=8FU+dp5jLhfwLchSQQuAz7c+fMs6MMKZZSenPqN+JrA=;
	h=To:Subject:From:Date:From;
	b=UrlNbPW08yiDr7s17fYZX6CfuGq5UglITsBElAtaso2zR9IZQm9Lq1AKjMkLrln9b
	 3s9mVxnBxqj7raUQZnaHKGxBkT5VkfAp1fspeofmWrZRurxmBKzJFd0wQ/aN/gy9S/
	 cBtKfwDYxg4GXS6/d20spen+Dhx202zN9XXXqq3aNx3mICI9UmLUdwLv6sKzszj7TD
	 J6l+/91eawG5Bx0IuVNbj/bKXaMeHhcvflYUj/ZiVR8KE8wm8vK35Ze44IA8ADoU1H
	 ghDndukloPxcx6yjrmzmYlY+bu+0uynM3jiO6rgBpZbtoPmwd29Q2zTo7lvSCpyZDW
	 LxBsD4qlc5+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995E4E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173356895360.5045.10369250402735735068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e36c1a882947454e468b8b3553c2f60f18def731b4935318a057a76a2d5f831
Date: Sat, 07 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733568953
