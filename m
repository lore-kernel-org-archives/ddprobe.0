Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7B27080D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773566694; cv=none; b=CJpAdZNpVc3ByP6gkBFMtjaiMpjAJLHKOvUOHqjlHGTppK2J2etG0MbcYhltG9PTpsQHZ6Tbx5mbw7bltyESCUYfqGfd7FBlLFTHa+rIbPl+odaUXr0hn/ufrjzMoxbbh4mzdZNb8+l/xRzZLuVE+m+UiUXJfwFGbWga9KyXcFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773566694; c=relaxed/simple;
	bh=41l89/+Cio+RFp6tFkNNiVY7d8kbeQCzCb+bQVryStk=;
	h=To:Subject:From:Message-Id:Date; b=bWjD5AAutmT8S0xBvdKfgiWtI2kFfWi61KJJb7GEiGmYp2kynuojX0TVNQgNmJIXdN9wPVvekwnH9UTa+m47q6PUtMrzsA4OR8kNoQ9mbKx6Oqg3Pn3LMdwRTnO2egaOoYg/n4sAsr5TvOBEDnKrtQUhL8OWgjE9elhaO1S+TgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBlwxRiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBlwxRiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB5CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773566693;
	bh=41l89/+Cio+RFp6tFkNNiVY7d8kbeQCzCb+bQVryStk=;
	h=To:Subject:From:Date:From;
	b=SBlwxRiF1HygADvrCL109C88Z+t+WQ3xGAfgd98FWxlZGvVvXMfoAaitrYqyIamWh
	 tXu6ajHaqgpIXVAXaeGZebw5KViwcVmlZpdxgZvkFbSGEX8UcocuLap8DTPDNX4jLI
	 qDC0ZCVY9T/2wZZ2GAcT2dIZtMNlNd8Lr+RLB4jUNHR14EnUG5J16tYQAvnjgKCr6R
	 DtJDMo0LZmOHcBJcQRnRgad0XZ2ESVGKZN7FfdY038SyJdErQpHAN3ZWJzl6fdI/hs
	 kwd+XFXsI08H+Ed+I5cLZRn0pRyyvmloZm3tbtCZujtKLKxSpUfryK7sXV8UOFOYBC
	 9lQjtI5dkqpog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FADD58B0C
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356669360.30299.17598151858385748712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be6fbd2d2c3ac1d93018e88e24c043c953ad3a83e2bc2c5bbab3d2011f4405d
Date: Sun, 15 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773566693
