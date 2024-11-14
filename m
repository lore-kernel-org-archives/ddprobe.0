Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EA319CC02
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731624954; cv=none; b=DIWkaN+Cm1IHi9VfmiRtM5rX07tA3lDydkoBoUFa+vAnGv/j/+xfLIxsSBxBiGH0rdgfYzZPB8rcyl9O2ByS4DoXxZ6DImIDjJlNNfjkJfsNMJ0jjMg5RFDO92Ssyr5U/AC/nV1qO4am0mtQe7hJtGV69uSGIOsRI48n+MNaOpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731624954; c=relaxed/simple;
	bh=DvY/7EH8eS1ceeQfeyK8xJgl2BfGMIdgy7Fk6lf3v1k=;
	h=To:Subject:From:Message-Id:Date; b=mygfCQE0de1ifizrzDoVLk0R0ZhT1E6A2eWIwbR+xohd1KAymcd2dTviw/D/nXvK6327hJAZQ9Xcdx6eYCyqUv4+wRdW+hEqieitXiJjwgUCt2jFVSeyCs4QSI7Byb8Rm+t4Utyz8mA0FyEPfb+mqIn/Mmog74q7Y0HPt7cqi3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjhUsomX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjhUsomX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643BC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731624953;
	bh=DvY/7EH8eS1ceeQfeyK8xJgl2BfGMIdgy7Fk6lf3v1k=;
	h=To:Subject:From:Date:From;
	b=fjhUsomX8Rz9zFWbs7m4J0CiYsVwwmtc/JyUgb4uKRYjACscDqIjqe8E1A9yPF4Pp
	 bjEYSq7G1LpS35fm05NKEht99F5lktDHrqlTI5YMYUaBgRpDgZCZwRUBwj2fWLKEmw
	 /adF00mEgD4QvPXNvFw0zAKToqQPK1fCGbS8w35C+MyGqxndU/boYmz4Ary2MInoMn
	 4htbwX2sgmpGzSRvohj0cDEgpkbE1aH9BCfbcaFB6x6wYmdm7Oze89v7aJg0p8NXt+
	 RsXlw6uHnCUoo5S9Qqti8+2qhtOctEryKzL8ns/Kh9b2ReK9znEbZsnu0YvLJxoWIX
	 8QkQRgfCKOgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AC5D6A25B
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173162495359.27667.4873955591680820619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f7caca3874ca663701d5d5c74f387ee01c12d9e3a9b2f7716668597eb2ab75
Date: Thu, 14 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731624953
