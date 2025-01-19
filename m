Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFFC184
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737305754; cv=none; b=jFAT0FJYlLptHwdQXb8Q0WFynDBPBCQOQG466xzumxFf6LJiKaX2Wl/JHtCMaD4eXN+DOk0XsAAXefOmAqGDtMzVUfu3uakUL+vsVl+AKoJfrOc0wjbw7ta/QxXmWtzWrosl9RgDnQbvxz6I0uz+HkRzY5YkbFEYKZeit7bA9R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737305754; c=relaxed/simple;
	bh=Q9ZVbVKkdJ/Hh51s+lyqFLe28qwOjDwayx0Gs1wjL5A=;
	h=To:Subject:From:Message-Id:Date; b=K10sKczJIeXHeFBJ5Hn8iwha69U1yxlKLH9KIdg5XUQbGVra4NXsIFwuWXdJJDtwRlzIb9Ml40S7gQr+i+1luYfixw0IUxzJYPoogIXEc/Ja1LfkM0EEWKkCOMswF4jzuEURi938UWVhiFV7XAMzxrrjOa5RM+H/IdHxNRDfIbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjIuzvmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjIuzvmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17EBC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737305753;
	bh=Q9ZVbVKkdJ/Hh51s+lyqFLe28qwOjDwayx0Gs1wjL5A=;
	h=To:Subject:From:Date:From;
	b=HjIuzvmJ2fGNfZpZ0w4oOR6p2XNPz+4edwVeTdxgBe2naXcKpz+qjEwpNT697a4eR
	 WLHy1pD841Ru9CrHo0qo0JyI2mCiyZweScgUD27RrvAw2y11NZy5QjGXIFT+fovOCW
	 ctbdQD0EPH95RrczFV/Bp1OTEJoCE+sqkUhd13j7VPqgVe+cRVjMjlIemQEtUgdxKa
	 DH5dWS097Xc0J48A5uHHd34TtqQ7x0YOOcocr+/OCU9L0bc+FaVZelvLjsMS420q67
	 Z71F56vItDZNGfm0ELUdBuV3b24sun5MoN9O6ibnJeCAwiQI7mCJyWUdKWxTO/C8CK
	 DkGznQPbzpUCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2BC02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730575357.3823.1842284429680344457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5f7a8d060bdb15c772e7e4056f031dde2d2b87c93d42e772e27c29f0d3587d
Date: Sun, 19 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737305753
