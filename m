Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FC217C98
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745546395; cv=none; b=LVlMi/WNfjGs0Pgz+8KQ/noPnmMxMd9Jp7CxqwOnaZJwwoPIHinfbBgtb5H1EFO4EaOaZ7KUvH+VIxdKiVkwheAo0aT523QGut6TQfryAOs9c0+/0OohAH/991g8xfmJCQdfWLikAAzQzUIrP6bmjWPxjOqw6lYywzIAJlChFto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745546395; c=relaxed/simple;
	bh=SNlzjEhhhvd+0Lrt6htmJZsBUuSMGTm5Fy4Om2YXA+E=;
	h=To:Subject:From:Message-Id:Date; b=aFmUZZV+swgQOHXIXRaq7ehTQygCVOOWj8EduMuCHkVwIjIWZAAb82MWokVHynf3iRff0ND8myfwh15rw7fQ/HBatss36ic0c8YHf2OegEgtRZm6bQUAzMIiXnyjcY7rsUdDS4luKmiqAQ4wvJll0kqKuSFZNacLbgZ7oaSs/b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldiyGQRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldiyGQRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1FCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745546393;
	bh=SNlzjEhhhvd+0Lrt6htmJZsBUuSMGTm5Fy4Om2YXA+E=;
	h=To:Subject:From:Date:From;
	b=ldiyGQRL4+sFGFJwQZta7HybSkhuSMQ9yJvRsUSIQima/uxiUVm9JACXNNRHTcQ+W
	 jtVwLftAoQDqQLZUFQyaYS7BEMVqhmDcz1B0efj1Vr871R5TKWWzgxUgDwAH0HcPoe
	 INctdOh4Jqp1Upz86mxSfeWbSMvi1HTSwu+EqYB8BWDddpADZHno0HEmFnd6piBMo0
	 xeKyQtDJK0d56QKDjEjKNMuw8YjgQDXrcw0jJsnr9Ijv/Wh80yotnQpHsBkk8px6H1
	 eUwqMVlbqsJ3joc/zmdvOfQJZHbDpW4Snj7DUXyFwcWhQYG+VobUOUsXgtMD9HXWeQ
	 VBzMmY4QSp6iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92126C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554639357.13915.56841424026776034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5663711f5122bbb7e1d0fcb5c452428345abc3e586a450975988ce3e373848a1
Date: Fri, 25 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745546393
