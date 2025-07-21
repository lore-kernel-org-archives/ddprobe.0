Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D862DAFC8
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753106995; cv=none; b=ibwtxf1oMGMK0VG2oK8cCcqRjCnl9Hjy13s1z2SVSFnL8TJbjmC/MNrXi7Sy0ctHdj4re1pEj7tcUzBsPbLo/HrXF4Yovr+WKhC+6o/w4nXdk/ByNiwfFQhWCxjodwp1tjuRrUlQZ7AIJgD3YN6YTPkXhYh8pgshvwtWPaDmg6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753106995; c=relaxed/simple;
	bh=IZDjdCXqknFySZJjLOVCvM3X0Dw5CV/MqV65chS6LeE=;
	h=To:Subject:From:Message-Id:Date; b=JnxWyvILsMt+VqfD+KLBqLUfPcuS90bxEKu5JNgvDa6QshZfK3NatWm4LIKdvs2r5FFZKqpdfo8nEWBrqZCVNgQf0rMYhNsp/j2G9f4N7Doa7LhMWAQneqm03nSZQ9Hq4u6cxkawI2BfiDXhcj/08tb41un0tiNWsuvZJ9Dm9AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ9f4nhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ9f4nhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFBCC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753106993;
	bh=IZDjdCXqknFySZJjLOVCvM3X0Dw5CV/MqV65chS6LeE=;
	h=To:Subject:From:Date:From;
	b=JZ9f4nhrtFIbmQ83bi812/D9eEB3S2xInXwRPlS6ibW2YkHlrsvxYLwB3kZAuAczf
	 /nR7micEAghSz0hgMyg9NPedu+fAruQkG8vK5EkV4w08YJdEvHSd0bu0bhhWu0CMfZ
	 loTUIplTlat3mVQUFZxqJNY3rNd6PmhINahp5ZPO5reioYbxlmNE3HipMACZidiuHD
	 rRwE+YNEtiGgM+Ms9ldSgkKoMiAhzM7EHEuuzdOt3Q6vy4BPurXrIxcI637C/ZntB8
	 bwkLY8U/CpI3I/1e7hziaT+7uCTK9S5Z+X1iCVhwiK4AFvXokqNH0TYihmucBHao1S
	 +Qiu6JsDdk0wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D77C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310699358.7409.17881886802570459973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d499623f4979ea6ed520a5958af2013ff9ca3eb2cd0ff2a6cf3eaea4a8fac8fa
Date: Mon, 21 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753106993
