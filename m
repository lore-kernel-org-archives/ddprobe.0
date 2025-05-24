Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409651EFF81
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748114394; cv=none; b=EVbXBnq2ud0TQu3iLeoVVTgyzllrNiYIPQTv37pAhVXPtVE7dmloAlCYQU+HCoGWD06jnD6mLFNRl9x+96SUxJiaffZ3Ap+9T9Dijney5gk69omLctPiir9LKHirM6dy0K5rv7L/0xxky1Fie5p2p+ifa2HBXPMqYqAwfMqs/Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748114394; c=relaxed/simple;
	bh=DboNixdHt+fLdDruw3X+zH0qPbzoQNozazLIoHCeDm8=;
	h=To:Subject:From:Message-Id:Date; b=ZA4EAPsCn2m589L9Na0dWqVfkcnjA2eYGUH0Erw8z+ck5+MJjQqKdjsyyuSjZY5+Z8lFgRxwZ4bZ2wQrLzno6ZUDnSnTQVt6FHRWssfyF5XF6MYlF+mdrzxBvIuW/jBkb/RXMwGlysjV1gWwq26I835RlgSCAapn7jLCEAN6/2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcZ9hAqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcZ9hAqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A711AC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748114393;
	bh=DboNixdHt+fLdDruw3X+zH0qPbzoQNozazLIoHCeDm8=;
	h=To:Subject:From:Date:From;
	b=OcZ9hAqMQYoBpi/IjiQMElSzSGSIbIlX65xcF9C5q6SUSliJ+Pt6BNIV+oZEhuiuj
	 tDE1tq6aRXzRg9rSGDXK/GolX/P8z/YFoUrToM39Nl25PPVXPYfWk6jT7/zc8N98vW
	 4Ute4mLyvhqTYLDqjmE7M2Jf+affXyJ3O0XqH6qZhG4YWNhopg+7oSrK0ioKVFeZBU
	 Z3vXEKybL64bQSxHwpZWo0zl7i2j62rZMh6QnsLFaElBVo8YPENjaAkU1bdFUdL2Fn
	 fYBJIaGw7KpNV1Iunlo29Dk0cvcIF6UxAzMNaTHYW7S7RbZg2lwKO/pKHwMgDcs/Em
	 4oMn4zNFk89/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D28C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811439357.20488.8795750312086851205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb2174dacdde440fbfcb3a5baa5c9ae0025437f773be5bfd281c617bda34837
Date: Sat, 24 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748114393
