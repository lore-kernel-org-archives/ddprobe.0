Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121123749EA
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790865035; cv=none; b=sX7itW1P88FuPFFBZOc8CFQ5n3LE2ddMFHAKBz1x9qaEr63wfU4a+sBD6vH+MHNTfUtZiRM9MOpLVApgKT9qIcyKDh9V0RvGq7BcXTv+5Qf2zFNqeFYJR6mxuUhaNfUL1Sunpb3CpIs0hxeZdkX2OrYvVZMWePOcNLGkQV+EF8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790865035; c=relaxed/simple;
	bh=+j/J5jRtkWdEeMDmJmAXFmUCU4uOv+H6QF9KyZURgU4=;
	h=To:Subject:From:Message-Id:Date; b=DEgwK66ioqwv2rNDR1opXYYYrzXI0jWAsaTcI6eg6pijgMhnrt/Wu6sNFI+hWbnkKPkCJUgop5jRwrhZgCiDf/0s+UiXOHi+VVxIFEkRan7thHFeTemfC4Xi1QRkYBtsOCfdL3bHI335SmKjgVLs3gHLmWzFj2tB9ZehYxiUBPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqXbzOF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqXbzOF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34AFC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790865033;
	bh=+j/J5jRtkWdEeMDmJmAXFmUCU4uOv+H6QF9KyZURgU4=;
	h=To:Subject:From:Date:From;
	b=TqXbzOF1mBVNf9OyR/ZF9imk6U9IiXkUFnQb0XLopNQ3MFEhXuIr5zJdn86xsb+BW
	 5zfZiufH+0eY6L3azJI3/oSPNa0l4W6fXygtrhFRNbMNQcmT8qtzRsFSrqrqADubHN
	 FZ+tR5/04OQPpA1EC7iPeOTRrwlEz6FCRtsv6FOvImJu8C3peRIvGQlf9MdKP5VkKy
	 UDaLZCYX8vTWDU1C1nRdBRhg8PCZxKfT8skfAXAVe4Yv9+YZZXqc/nPSF5ULS9OLYW
	 W/f2bzlD+jHftGWaDYA694wMSPL4h79renDn9qbinN7N1LszE8aTQ3c8KirMLT7lcR
	 K/yufxX/7fY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9EFCA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086503370.16271.14758586732127302028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96551d652b3feaa7afa2e75f7cf39ba4792a3d4b9cab272b976c250c1fcfe28
Date: Thu, 01 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790865033
