Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE26C2D1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750141794; cv=none; b=ZdeSxBjSnM6oOSSA+McVKJNL3elVzvD6r6J6r3/rgQbvAWO0/loHFbw6uu58FhuShRWrnuhxV0H0v9Bg3a8ghIm3Pa0wV9L05gX6FvComBclfIJOpofEmUGQE1BFgPk57jWth/guv4llFRz3aYu/UPOs6EfiBtEP9PvWflwj2ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750141794; c=relaxed/simple;
	bh=4SwAmuq3RvmQUeYvHc7105CgWof80vkC5rv7B6mcQMs=;
	h=To:Subject:From:Message-Id:Date; b=TX1jGWSiDADvg8H5SMjb5nQzocmabm+TcNBeRIfd4DvbHSz6+IlN+gbaAkjmlUQSZ9sZHRT9DUblz91MhvUgCqO7hKpZmkVOQCqUU7k6D4Qz9Wjn0lTM0/rL5BWYgEm9YzCx1eeF8rLyMTDZcnZ9OB8WJgtvNjeHt0XUWufLhQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj5txXCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj5txXCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF9AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750141793;
	bh=4SwAmuq3RvmQUeYvHc7105CgWof80vkC5rv7B6mcQMs=;
	h=To:Subject:From:Date:From;
	b=nj5txXCPkjU854Lpe2o7SQbEGqvAyo9lyblmyQucMhbmQsrUYyCKUa0w3BpO7/pa1
	 wjhtbVahLMX2i6xe0zhizXm+uXKCP4wxFniHmNmWHeYTdFNrsQaF5zk4vM1xBhghIq
	 SJXC+lIgSsJZhyjTcFHYgBeYa4K+xNbl4kWQV7KhIf3cuDhDL1ELeyHIMOdjqOGJ3G
	 dUFyvWwwkiClBfIEkmmOScEN+WJW0lnsN9O5Ame8Pr2l9UiUEVghGBI4nMQpXWVeBN
	 979a6U4A2/lsjDoe2NKc7Jj/Dqa150S7ealFX1uoa20w1hcircYBnf5podVWyDGgMx
	 Biu8x8XI38fkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC2C71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014179357.10061.11911882418468626651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9efe569357ba2da8c40a72d95eb1d9b19e8a8fe3e7f12106fe7ee514eb87ffa
Date: Tue, 17 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750141793
